using module modules\WarriorRange\WarriorRange.psm1
$roster_filepath = ".\configs\rosters\roster.json"
$range_filepath = ".\configs\ranges\range.json"
$session_filepath = ".\configs\sessions\session.json"

# Create an instance of WarriorRangeDeploy
$range = [WarriorRange]::new($roster_filepath, $range_filepath, $session_filepath)

# Access a property
<#
Write-Host $range
Write-Host $range.range
Write-Host $range.roster
Write-Host $range.session
Write-Host $range.session.user
Write-Host $range.session.domain
Write-Host $range.session.tokenName
Write-Host $range.session.apiToken
Write-Host $range.session.nodePort
#>

# Testing
$range.CreateRangeNetworks("roster01", "range01")

# Pretty much done
#$range.CreateRangeVMs("roster01", "range01")

# In Development
#$range.AssignRangePermissions("roster01", "range01")