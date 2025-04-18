using module modules\WarriorRange\WarriorRange.psm1
$roster_filepath = ".\configs\rosters\roster.json"
$range_filepath = ".\configs\ranges\range.json"
$session_filepath = ".\configs\sessions\session.json"

# Create an instance of WarriorRangeDeploy
$range = [WarriorRange]::new($roster_filepath, $range_filepath, $session_filepath)
$time = Measure-Command{
    $range.DestroyRange("roster01", "range01"); $action = "destroy"
    #$range.BuildRange("roster01", "range01"); $action = "build"
    #$range.AssignRangePermissions("roster01", "range01"); $action = "assign permissions"
    Write-Host "Time taken to $action the range:"
}
Write-Host "$time"    