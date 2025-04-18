Write-Output "Module imported successfully"
function WarriorRangeBanner(){
    $banner = @"

     _    _                 _           ______                       
    | |  | |               (_)          | ___ \                      
    | |  | | __ _ _ __ _ __ _  ___  _ __| |_/ /__ _ _ __   __ _  ___ 
    | |/\| |/ _  |  __|  __| |/ _ \|  __|    // _  |  _ \ / _  |/ _ \
    \  /\  / (_| | |  | |  | | (_) | |  | |\ \ (_| | | | | (_| |  __/
     \/  \/ \__,_|_|  |_|  |_|\___/|_|  \_| \_\__,_|_| |_|\__, |\___|
                                                           __/ |     
                                                          |___/      
"@

Write-Host $banner -ForegroundColor Cyan

}
class WarriorRange{
    ### Define what information will be handled by the class
    $roster
    $range
    $session

    $pve_user
    $pve_user_domain
    $tokenName
    $apiToken
    $nodeAndPort

    ### Initialize the class by parsing config files (essentially assign values to the variables above)
    WarriorRange([string]$roster_filepath, [string]$range_filepath, [string]$session_filepath) {
        $this.roster = (Get-Content -Raw -Path $roster_filepath | ConvertFrom-Json)
        $this.range = (Get-Content -Raw -Path $range_filepath | ConvertFrom-Json)
        $this.session = (Get-Content -Raw -Path $session_filepath | ConvertFrom-Json)

        $this.pve_user = $this.session.user
        $this.pve_user_domain = $this.session.domain
        $this.tokenName = $this.session.tokenName
        $this.apiToken = $this.session.apiToken
        $this.nodeAndPort = $this.session.nodePort

        WarriorRangeBanner
        Connect-PveCluster -HostsAndPorts $this.nodeAndPort -SkipCertificateCheck -ApiToken "$($this.pve_user)@$($this.pve_user_domain)!$($this.tokenName)=$($this.apiToken)"
    }
    ### Define the methods that will be used to interact with the class
    CreateRangeNetworks([string]$roster_name, [string]$range_name) {
        $title = @"
======================
= DEPLOYING NETWORKS =
======================
"@
        Write-Host $title -ForegroundColor Cyan
        $range_id = [Int16]$this.range.$range_name.range_id
        $full_range = 0..999
        
        # Create the SDN Zone for the range if it does not exist. Otherwise, move on
        if ((Get-PveClusterSdnZonesIdx -Zone $range_name).IsSuccessStatusCode){
            Write-Host "SDN Zone $range_name already exists"
        } else {
            Write-Host "Creating SDN Zone $range_name"
            New-PveClusterSdnZones -Zone $range_name -Type simple 
            $task = (Set-PveClusterSdn | Select-Object -ExpandProperty Response).data
            if(Get-PveTaskIsRunning -upid $task -ErrorAction Ignore){
                Write-Host "Waiting for task to finish" -ForegroundColor Yellow
                Wait-PveTaskIsFinish -upid $task | Out-Null
            }
        }
        
        # Create the networks for the range based on the JSON configuration
        foreach($group in $this.roster.$roster_name.groups.PSObject.Properties.Name){
            foreach($user in $this.roster.$roster_name.groups.$group){
                $username = $user -replace "@.*", ""
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
                    $network_name = "{0}-{1}-{2}" -f $range_name, $network, $username
                    # If a network is found that has the same name as the one being created, skip it. Otherwise, create the network
                    if ($null -ne ($vnet_inventory | Where-Object -Property Alias -match $network_name)){
                        Write-Host "Network $network_name already exists"
                    }
                    else {
                        Write-Host "Creating network $network_name. VNet_ID: $vnet"
                        New-PveClusterSdnVnets -Vnet $vnet -Alias $network_name -Zone $range_name
                    }   
                }

            }
        }
        # Reloads network configuration to apply changes
        Write-Host "Reloading network configuration"
        Start-Sleep -Seconds 10
        $task = (Set-PveClusterSdn | Select-Object -ExpandProperty Response).data
        if(Get-PveTaskIsRunning -upid $task -ErrorAction Ignore){
            Write-Host "Waiting for task to finish" -ForegroundColor Yellow
            Wait-PveTaskIsFinish -upid $task | Out-Null
        }  
    }
    CreateRangeVMs([string]$roster_name, [string]$range_name){
        $title = @"
==============================
= DEPLOYING VIRTUAL MACHINES =
==============================
"@
        Write-Host $title -ForegroundColor Cyan
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
            New-PvePools -Poolid $range_name
        }
        # For each user in the roster, loop through the VMs in the range and create a clone for each
        foreach($group in $this.roster.$roster_name.groups.PSObject.Properties.Name){
            foreach($user in $($this.roster.$roster_name.groups.$group)){
                $username = $user -replace "@.*", ""
                foreach ($vm in $this.range.$range_name.vms.PSObject.Properties.Name) {
                    # Get all the VMs that sit within the allocated range VMID set, and sort them from highest to lowest
                    $range_inventory = Get-PveVM -vmid ${range_id}:${range_stop} | Select-Object -ExpandProperty vmid| Sort-Object
            
                    # If the range is empty, set the first VM ID to the range ID, otherwise set it to the next available VM ID
                    if ($null -ne $range_inventory){
                        $full_range = $range_id..$range_stop
                        $vm_clone_id = $full_range | Where-Object {$_ -notin $range_inventory} | Select-Object -First 1
                    } else {
                        $vm_clone_id = $range_id 
                    }
                    # Gather JSON data and format into VM name and Base VM ID variables
                    $vm_clone_name = "{0}-{1}-{2}" -f $range_name, $this.range.$range_name.vms.$vm.name, $username
                    $vm_base_id = $this.range.$range_name.vms.$vm.base_vmid
                    $base_pool = $this.range.$range_name.base_pool
                    $vm_base_node = Get-PvePoolsIdx -Poolid $base_pool -Type qemu | Select-Object -ExpandProperty Response | Select-Object -ExpandProperty Data | Select-Object -ExpandProperty members | Where-Object -Property vmid -eq $vm_base_id | Select-Object -ExpandProperty Node
                    # Create a unique VM ID for the current clone being deployed
                    if((Get-PveNodesQemuIdx -Node $vm_base_node -vmid $vm_base_id).IsSuccessStatusCode -ne $true){
                        Write-Host "Base VM $vm_base_id not found" -ForegroundColor Red
                    }
                    if($null -ne (Get-PveNodesQemu -Node $target | Select-Object -ExpandProperty Response | Select-Object -ExpandProperty Data | Where-Object -Property Name -match $vm_clone_name)){
                        Write-Host "VM $vm_clone_name already exists"
                    }else{
                        Write-Host "Creating VM $vm_clone_name, Clone ID: $vm_clone_id"
                        Write-Host "Cloning from VM $vm_base_id"
                        $task = (New-PveNodesQemuClone -Name $vm_clone_name -Node $vm_base_node -Target $target -Newid $vm_clone_id -Pool $range_name -Vmid $vm_base_id | Select-Object -ExpandProperty Response).data
                        if(Get-PveTaskIsRunning -upid $task -ErrorAction Ignore){
                            Write-Host "Waiting for task to finish" -ForegroundColor Yellow
                            Wait-PveTaskIsFinish -upid $task | Out-Null
                        }  
                    }
                }
            }
        }
    }
    AssignRangePermissions([string]$roster_name, [string]$range_name){
        $title = @"
=========================
= ASSIGNING PERMISSIONS =
=========================
"@
        Write-Host $title -ForegroundColor Cyan
        $storage = $this.range.$range_name.storage
        foreach($group in $this.roster.$roster_name.groups.PSObject.Properties.Name){
            $role = $this.range.$range_name.roles.$group
            foreach($user in $this.roster.$roster_name.groups.$group){
                $username = $user -replace "@.*", ""
                Write-Host "Assigning PVEPoolUser permissions to $user for pool $range_name"
                Set-PveAccessAcl -Path /pool/$range_name -Users "$user" -Role "PVEPoolUser" 
                Write-Host "Assigning PVEDatastoreUser permissions to $user for storage $storage"
                Set-PveAccessAcl -Path /storage/$storage -Users "$user" -Role "PVEDatastoreUser" 
                foreach($vmid in (Get-PveNodesQemu -Node $this.range.$range_name.node | Select-Object -ExpandProperty Response | Select-Object -ExpandProperty Data | Where-Object -Property Name -like "$range_name*$username"| Select-Object -ExpandProperty vmid)){
                    Write-Host "Assigning $role permissions to $user for VM $vmid"
                    Set-PveAccessAcl -Path /vms/$vmid -Users "$user" -Role $role 
                }
                foreach($vnet in (Get-PveClusterSdnVnets | Select-Object -ExpandProperty Response | Select-Object -ExpandProperty Data | Where-Object -Property Zone -match $range_name | Where-Object -Property Alias -like "*$username*" | Select-Object -ExpandProperty vnet)){
                    Write-Host "Assigning $role permissions to $user for VNet $vnet"
                    Set-PveAccessAcl -Path /sdn/zones/$range_name/$vnet -Users "$user" -Role $role  
                }
            }
        }
    }
    DestroyRangeNetworks([string]$roster_name, [string]$range_name){
        $title = @"
=====================
= REMOVING NETWORKS =
=====================
"@
        Write-Host $title -ForegroundColor Cyan
        # Destroy the range and all associated VMs and networks
        $vnet_inventory = Get-PveClusterSdnVnets | Select-Object -ExpandProperty Response | Select-Object -ExpandProperty Data | Where-Object -Property Zone -match $range_name | Select-Object -ExpandProperty vnet
        foreach($vnet in $vnet_inventory){
            Write-Host "Destroying VNet $vnet"
            Remove-PveClusterSdnVnets -Vnet $vnet
        }
        Remove-PveClusterSdnZones -Zone $range_name
        Write-Host "Reloading network configuration"
        $task = (Set-PveClusterSdn | Select-Object -ExpandProperty Response).data
        if(Get-PveTaskIsRunning -upid $task -ErrorAction Ignore){
            Write-Host "Waiting for task to finish" -ForegroundColor Yellow
            Wait-PveTaskIsFinish -upid $task | Out-Null
        }  
    }
    DestroyRangeVMs([string]$roster_name, [string]$range_name){  
        $title = @"
=============================
= REMOVING VIRTUAL MACHINES =
=============================
"@
        Write-Host $title -ForegroundColor Cyan  
        $node = $this.range.$range_name.node
        # Destroy the VMs in the range
        $vm_inventory = Get-PveNodesQemu -Node $node | Select-Object -ExpandProperty Response | Select-Object -ExpandProperty Data | Where-Object -Property Name -like "$range_name*" | Select-Object -ExpandProperty vmid
        foreach($vm in $vm_inventory){
            Write-Host "Destroying VM $vm"
            $task = (Remove-PveNodesQemu -DestroyUnreferencedDisks -Purge -Vmid $vm -Node $node | Select-Object -ExpandProperty Response).data
            if(Get-PveTaskIsRunning -upid $task -ErrorAction Ignore){
                Write-Host "Waiting for task to finish" -ForegroundColor Yellow
                Wait-PveTaskIsFinish -upid $task | Out-Null
            }  
        }
    }
    DestroyRangePermissions([string]$roster_name, [string]$range_name){
        $title = @"
========================
= REMOVING PERMISSIONS =
========================
"@
        Write-Host $title -ForegroundColor Cyan
        $storage = $this.range.$range_name.storage
        foreach($group in $this.roster.$roster_name.groups.PSObject.Properties.Name){
            $role = $this.range.$range_name.roles.$group
            foreach($user in $this.roster.$roster_name.groups.$group){
                $username = $user -replace "@.*", ""
                # Remove permissions for the users in the roster for the range pool and storage
                Write-Host "Removing permissions for $user on pool $range_name"
                Set-PveAccessAcl -Path /pool/$range_name -Users "$user" -Roles "PVEPoolUser" -Delete
                Write-Host "Removing permissions for $user on storage $storage"
                Set-PveAccessAcl -Path /storage/$storage -Users "$user" -Roles "PVEDatastoreUser" -Delete
                # Remove permissions for the users in the roster for the VMs in the range
                foreach($vmid in (Get-PveNodesQemu -Node $this.range.$range_name.node | Select-Object -ExpandProperty Response | Select-Object -ExpandProperty Data | Where-Object -Property Name -like "$range_name*$username"| Select-Object -ExpandProperty vmid)){
                    Write-Host "Removing $role permissions for $user on VM $vmid"
                    Set-PveAccessAcl -Path /vms/$vmid -Users "$user" -Roles $role -Delete        
                }
                # Remove permissions for the users in the roster for the VNets in the range
                foreach($vnet in (Get-PveClusterSdnVnets | Select-Object -ExpandProperty Response | Select-Object -ExpandProperty Data | Where-Object -Property Zone -match $range_name | Where-Object -Property Alias -like "*$username*" | Select-Object -ExpandProperty vnet)){
                    Write-Host "Removing $role permissions for $user on VNet $vnet"
                    Set-PveAccessAcl -Path /sdn/zones/$range_name/$vnet -Users "$user" -Roles $role -Delete
                 
                }
            }
        }
    }
    DestroyRangePool([string]$range_name){
        # Destroy the pool for the range
        while((Get-PvePoolsIdx -Poolid $range_name).IsSuccessStatusCode -eq $true){
            Write-Host "Waiting for pool $range_name to be empty" -ForegroundColor Yellow
            Start-Sleep -Seconds 5
            Write-Host "Destroying pool $range_name"
            Remove-PvePools -Poolid $range_name
        }
        
        
    }
    DestroyRange([string]$roster_name, [string]$range_name){
        # Destroy the range and all associated VMs, networks, and permissions
        $this.DestroyRangePermissions($roster_name, $range_name)
        $this.DestroyRangeNetworks($roster_name, $range_name)
        $this.DestroyRangeVMs($roster_name, $range_name)
        $this.DestroyRangePool($range_name)
    }
    BuildRange([string]$roster_name, [string]$range_name){
        # Create the range and all associated VMs, networks, and permissions
        $this.CreateRangeNetworks($roster_name, $range_name)
        Start-Sleep -Seconds 5
        $this.CreateRangeVMs($roster_name, $range_name)
        Start-Sleep -Seconds 5
        $this.AssignRangePermissions($roster_name, $range_name)
    }
    StopRangeVMs([string]$roster_name, [string]$range_name){
        # Stop all VMs in the range
        $node = $this.range.$range_name.node
        $vm_inventory = Get-PveNodesQemu -Node $node | Select-Object -ExpandProperty Response | Select-Object -ExpandProperty Data | Where-Object -Property Name -like "$range_name*" | Select-Object -ExpandProperty vmid
        foreach($vm in $vm_inventory){
            Write-Host "Stopping VM $vm"
            Stop-PveNodesQemu -Vmid $vm -Node $node
        }
    }
}
