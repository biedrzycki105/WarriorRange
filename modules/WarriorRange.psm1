Write-Host "Module imported successfully"
class WarriorRange {
    ### Define what information will be handled by the class
    $roster
    $range
    $session

    ### Initialize the class by parsing config files (essentially assign values to the variables above)
    WarriorRange([string]$roster_filepath, [string]$range_filepath, [string]$session_filepath) {
        $this.roster = Get-Content -Raw -Path $roster_filepath | ConvertFrom-Json
        $this.range = Get-Content -Raw -Path $range_filepath | ConvertFrom-Json
        $this.session = Get-Content -Raw -Path $session_filepath | ConvertFrom-Json
    <#
        $user = $this.session_conf.user
        $domain = $this.session_conf.domain
        $tokenName = $this.session_conf.tokenName 
        $apiToken =$this.session_conf.apiToken
        $nodeAndPort = $this.session_conf.node
            
        Write-Host $user

        Connect-PveCluster -HostsAndPorts $nodeAndPort -SkipCertificateCheck -ApiToken $user@$domain!$tokenName=$apiToken
    #>
    }
    
}
class WarriorRangeConfigure {

}