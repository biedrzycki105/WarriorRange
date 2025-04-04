class WarriorRangeUtils {
	### Define what information will be handled by the class
	[hashtable]$roster
	[hashtable]$environment
	[hashtable]$networks
	[hashtable]$roles

	### Initialize the class instance with blank values
	WarriorRangeUtils() {
		$this.roster = [ordered]@{}
		$this.environment = [ordered]@{"vms" = @{}}
		$this.networks = [ordered]@{"networks" = @()}
		$this.roles = [ordered]@{}
	}
}