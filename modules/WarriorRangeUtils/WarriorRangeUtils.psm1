class WarriorRangeUtils {
	### Define what information will be handled by the class
	[hashtable]$roster
	[hashtable]$environment
	[hashtable]$networks
	[hashtable]$roles

	### Initialize the class instance with blank values
	WarriorRangeUtil() {
		$this.roster = @{}
		$this.environment = @{}
		$this.networks = @{}
		$this.roles = @{}
	}
}