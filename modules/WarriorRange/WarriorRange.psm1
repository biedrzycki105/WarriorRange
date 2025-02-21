Write-Output "Module imported successfully"
class WarriorRange {
    ### Define what information will be handled by the class
    [hashtable]$roster
    [hashtable]$range
    [hashtable]$session

    $user
    $domain
    $tokenName
    $apiToken
    $nodeAndPort

    ### Initialize the class by parsing config files (essentially assign values to the variables above)
    WarriorRange([string]$roster_filepath, [string]$range_filepath, [string]$session_filepath) {
        $this.roster = (Get-Content -Raw -Path $roster_filepath | ConvertFrom-Json -AsHashtable)
        $this.range = (Get-Content -Raw -Path $range_filepath | ConvertFrom-Json -AsHashtable)
        $this.session = (Get-Content -Raw -Path $session_filepath | ConvertFrom-Json -AsHashtable)

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
}