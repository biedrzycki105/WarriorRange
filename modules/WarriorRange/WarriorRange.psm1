Write-Output "Module imported successfully"
class WarriorRange{
    ### Define what information will be handled by the class
    $roster
    $range
    $session

    $user
    $domain
    $tokenName
    $apiToken
    $nodeAndPort

    ### Initialize the class by parsing config files (essentially assign values to the variables above)
    WarriorRange([string]$roster_filepath, [string]$range_filepath, [string]$session_filepath) {
        $this.roster = (Get-Content -Raw -Path $roster_filepath | ConvertFrom-Json)
        $this.range = (Get-Content -Raw -Path $range_filepath | ConvertFrom-Json)
        $this.session = (Get-Content -Raw -Path $session_filepath | ConvertFrom-Json)

        $this.user = $this.session.user
        $this.domain = $this.session.domain
        $this.tokenName = $this.session.tokenName
        $this.apiToken = $this.session.apiToken
        $this.nodeAndPort = $this.session.nodePort

        Connect-PveCluster -HostsAndPorts $this.nodeAndPort -SkipCertificateCheck -ApiToken "$($this.user)@$($this.domain)!$($this.tokenName)=$($this.apiToken)"
    }
    ### Define the methods that will be used to interact with the class
    CreateRangeNetworks([string]$roster_name, [string]$range_name) {
        $range_id = [Int16]$this.range.$range_name.range_id
        $full_range = 0..999
        
        # Create the SDN Zone for the range if it does not exist. Otherwise, move on
        if (200 -ne (Get-PveClusterSdnZonesIdx -Zone $range_name).StatusCode){
            Write-Host "Creating SDN Zone $range_name"
            New-PveClusterSdnZones -Zone $range_name -Type simple
            Set-PveClusterSdn
        } else {
            Write-Host "SDN Zone $range_name already exists"
        }
        
        # Create the networks for the range based on the JSON configuration
        foreach($user in $this.roster.$roster_name.users){
            foreach($network in $this.range.$range_name.networks){
                # Define the list of existing VNets
                $vnet_inventory = Get-PveClusterSdnVnets | Select-Object -ExpandProperty Response | Select-Object -ExpandProperty Data | Where-Object -Property Zone -match $range_name

                # Extract and process the VNet Index numbers from the existing VNets
                $vnet_nums = $vnet_inventory | ForEach-Object { ($_.vnet -split "v$range_id")[1] } | Sort-Object
                
                # If the range is empty, set the first VNet ID to "v<range_id>0" (i.e. v12340), otherwise find all the available VNet Indexes and select the first one
                if ($null -eq $vnet_nums){
                    $vnet_index = 0
                } else {
                    $vnet_index = $full_range | Where-Object {$_ -notin $vnet_nums} | Select-Object -First 1
                }
                # Create the VNet ID and Network Name based on the JSON configuration
                $vnet = "v$range_id$vnet_index"
                $network_name = "{0}-{1}-{2}" -f $range_name, $network, $user
                # If a network is found that has the same name as the one being created, skip it. Otherwise, create the network
                if ($null -eq ($vnet_inventory | Where-Object -Property Alias -match $network_name)){
                    Write-Host "Creating network $network_name. VNet_ID: $vnet"
                    New-PveClusterSdnVnets -Vnet $vnet -Alias $network_name -Zone $range_name -Verbose
                }
                else {
                    Write-Host "Network $network_name already exists"
                }   
            }
        }
        # Reloads network configuration to apply changes
        Set-PveClusterSdn
    }
    CreateRangeVMs([string]$roster_name, [string]$range_name){
        # Pull information from JSON and format it to be used by the CreateRangeVMs method
        $target = $this.range.$range_name.node
        $range_id = [Int16]$this.range.$range_name.range_id * 100000
        $range_stop = $range_id + 99999
        
        # Create a pool for the range if it does not exist
        $pool_status = Get-PvePools -Poolid $range_name
        if ($pool_status.IsSuccessStatusCode){
            Write-Host "Pool $range_name already exists"
        } else {
            Write-Host "Creating pool $range_name"
            New-PvePools -Poolid $range_name -Verbose
        }
        # For each user in the roster, loop through the VMs in the range and create a clone for each
        foreach($user in $($this.roster.$roster_name.users)){
            foreach ($vm in $this.range.$range_name.vms.PSObject.Properties.Name) {
                # Get all the VMs that sit within the allocated range VMID set, and sort them from highest to lowest
                $range_inventory = Get-PveVM -vmid ${range_id}:${range_stop} | Select-Object -ExpandProperty vmid| Sort-Object
        
                # If the range is empty, set the first VM ID to the range ID, otherwise set it to the next available VM ID
                if ($null -eq $range_inventory){
                    $vm_clone_id = $range_id
                } else {
                    $full_range = $range_id..$range_stop
                    $vm_clone_id = $full_range | Where-Object {$_ -notin $range_inventory} | Select-Object -First 1
                }
                # Gather JSON data and format into VM name and Base VM ID variables
                $vm_clone_name = "{0}-{1}-{2}" -f $range_name, $this.range.$range_name.vms.$vm.name, $user
                $vm_base_id = $this.range.$range_name.vms.$vm.base_vmid
                $base_pool = $this.range.$range_name.base_pool
                $vm_base_node = Get-PvePoolsIdx -Poolid $base_pool -Type qemu | Select-Object -ExpandProperty Response | Select-Object -ExpandProperty Data | Select-Object -ExpandProperty members | Where-Object -Property vmid -eq $vm_base_id | Select-Object -ExpandProperty Node
                # Create a unique VM ID for the current clone being deployed
                if((Get-PveNodesQemuIdx -Node $vm_base_node -vmid $vm_base_id).IsSuccessStatusCode -ne $true){
                    Write-Host "Base VM $vm_base_id not found"
                }
                if($null -eq (Get-PveNodesQemu -Node $target | Select-Object -ExpandProperty Response | Select-Object -ExpandProperty Data | Where-Object -Property Name -match $vm_clone_name)){
                    Write-Host "Creating VM $vm_clone_name, Clone ID: $vm_clone_id"
                    Write-Host "Cloning from VM $vm_base_id"
                    New-PveNodesQemuClone -Name $vm_clone_name -Node $vm_base_node -Target $target -Newid $vm_clone_id -Pool $range_name -Vmid $vm_base_id -Verbose
                }else{
                    Write-Host "VM $vm_clone_name already exists"
                }
            }
        }

    }
    AssignRangePermissions([string]$roster_name, [string]$range_name){
        # Assign permissions to the users in the roster for the range
        foreach($group in $this.roster.$roster_name.PSObject.Properties.Name){
            Write-Host Assigning $group permissions to $this.roster.$range_name.$group
            #Set-PveAccessAcl -Groups /pools/$range_name -Users $this.roster.$range_name.$group -Role $this.range.$range_name. -Verbose
            
        }
    }
    DestroyRangeNetworks([string]$roster_name, [string]$range_name){
        # Destroy the range and all associated VMs and networks
        $vnet_inventory = Get-PveClusterSdnVnets | Select-Object -ExpandProperty Response | Select-Object -ExpandProperty Data | Where-Object -Property Zone -match $range_name | Select-Object -ExpandProperty vnet
        foreach($vnet in $vnet_inventory){Remove-PveClusterSdnVnets -Vnet $vnet}
        Remove-PveClusterSdnZones -Zone $range_name
        Set-PveClusterSdn
    }
    DestroyRangeVMs([string]$roster_name, [string]$range_name){    
        $node = $this.range.$range_name.node
        # Destroy the VMs in the range
        $vm_inventory = Get-PveNodesQemu -Node $node | Select-Object -ExpandProperty Response | Select-Object -ExpandProperty Data | Select-Object -ExpandProperty vmid
        foreach($vm in $vm_inventory){Remove-PveNodesQemu -DestroyUnreferencedDisks -Purge -Vmid $vm -Node $node}
        Remove-PvePools -Poolid $range_name
    }
}