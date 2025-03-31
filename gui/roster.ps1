function CleanData {

	param (
		$users
	)

	$filter = ".+\$@", "cloudbase-init", "krbtgt" -join "|"

	# Remove sensitive or otherwise unusable users
	$filteredUsers = $users | Where {$_ -notmatch $filter}
	
	# Remove the @--- from each userid
	$remainingUsers = $filteredUsers | ForEach-Object {$_.Split("@")[0]}

	return $remainingUsers

}

function ImportUsers {

	$users = (Get-PveAccessUsers).ToData().userid
	$filteredUsers = CleanData $users
	
	foreach ($user in $filteredUsers) {
		$rosterCheckedListBox.Items.Add($user)
	}
}

$rosterAddButton_Click = {
	$checkedItems = $rosterCheckedListBox.CheckedItems

	foreach ($item in $checkedItems) {
		if ($rosterFinalListBox.Items -notcontains $item) {
			$rosterFinalListBox.Items.Add($item)
		}
	}

	for ($i = 0; $i -lt $rosterCheckedListBox.Items.Count; $i += 1) {
		$rosterCheckedListBox.SetItemCheckState($i, [System.Windows.Forms.CheckState]::Unchecked)
	}
}