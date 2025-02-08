Import-Module -Name .\modules\WarriorRange.psm1 -Force
$roster_filepath = ".\configs\rosters\roster.json"
$range_filepath = ".\configs\ranges\range.json"
$session_filepath = ".\configs\sessions\session.json"




# Create an instance of WarriorRangeDeploy
$range = [WarriorRange]::new($roster_filepath, $range_filepath, $session_filepath)

# Access a property
Write-Host $range.roster
Write-Host $range.range.range01
Write-Host $range.session