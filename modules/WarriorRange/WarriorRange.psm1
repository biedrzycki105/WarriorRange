Write-Output "Module imported successfully"
class WarriorRange {
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
    CreateRangeNetworks([string]$roster_name, [string]$range_name){
        Write-Host "Creating SDN Zone $range_name"
        New-PveClusterSdnZones -Zone $range_name -Type simple 
        $counter = 1000
        foreach($user in $this.roster.$roster_name.users){
            foreach($network in $this.range.$range_name.networks){
                $network_name = "{0}-{1}-{2}" -f $range_name, $network, $user
                Write-Host "Creating network $network_name"
                New-PveClusterSdnVnets -Vnet "VNet$counter" -Alias $network_name -Zone $range_name -Verbose
                $counter++
            }   
        }
    }
    CreateRangeVMs([string]$roster_name, [string]$range_name){
        $range_id = [Int16]$this.range.$range_name.range_id * 100000
        $range_stop = $range_id + 99999
        $pool_name = $this.range.$range_name.pool
        Write-Host $range_id
        Write-Host $range_stop
        Write-Host $pool_name
        foreach($user in $($this.roster.$roster_name.users)){
            foreach ($vm in $this.range.$range_name.vms.PSObject.Properties.Name) {
                # Gather JSON data and format into VM name and Base VM ID variables
                $vm_clone_name = "{0}-{1}-{2}" -f $range_name, $this.range.$range_name.vms.$vm.name, $user
                $vm_base_id = $this.range.$range_name.vms.$vm.base_vmid
                # Create a unique VM ID for the current clone being deployed
                $vm_clone_id = (Get-PveVm | Where-Object {$_.vmid -gt $range_id -and $_.vmid -lt $range_stop} | Sort-Object -Descending| Select-Object -First 1).vmid + 1
                Write-Host "Creating VM $vm_clone_name, Clone ID: $vm_clone_id"
                Write-Host "Cloning from VM $vm_base_id"
            }
        }
    }
}