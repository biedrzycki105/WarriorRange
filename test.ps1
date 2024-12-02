using module ./modules/WarriorRange.psm1
Write-Host "run"
$roster_filepath = "./configs/rosters/roster.json"
$range_filepath = "./configs/ranges/range.json"
$session_filepath = "./configs/sessions/session.json"

$wr = [WarriorRangeDeploy]::new($roster_filepath, $range_filepath, $session_filepath)