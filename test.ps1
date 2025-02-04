Import-Module -Name ".\modules\WarriorRange.psm1" -Force
Write-Host "run"
$roster_filepath = "./configs/rosters/roster.json"
$range_filepath = "./configs/ranges/range.json"
$session_filepath = "./configs/sessions/session.json"

$wr = New-Object WarriorRangeDeploy -ArgumentList $roster_filepath, $range_filepath, $session_filepath
