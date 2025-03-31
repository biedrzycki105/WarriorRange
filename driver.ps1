using module modules\WarriorRange\WarriorRange.psm1
$roster_filepath = ".\configs\rosters\roster.json"
$range_filepath = ".\configs\ranges\range.json"
$session_filepath = ".\configs\sessions\session.json"

# Create an instance of WarriorRangeDeploy
$range = [WarriorRange]::new($roster_filepath, $range_filepath, $session_filepath)
$time = Measure-Command{
    #$range.DestroyRange("roster01", "range01") | Out-File -FilePath .\build-output.txt
    #$range.DestroyRangePermissions("roster01", "range01")

    $range.BuildRange("roster01", "range01") | Out-File -FilePath .\build-output.txt
}
Write-Host "Time taken to destroy the range: $time"    

