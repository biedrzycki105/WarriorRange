### functions for creating a new roster

# Remove sensitive or otherwise unusable users
function CleanData {

	param (
		$users
	)

	$filter = ".+\$@", "cloudbase-init", "krbtgt" -join "|"

	$filteredUsers = $users | Where {$_ -notmatch $filter}
	
	# Remove the @--- from each userid
	$remainingUsers = $filteredUsers | ForEach-Object {$_.Split("@")[0]}

	return $remainingUsers

}

function ImportUsers {

	$users = (Get-PveAccessUsers).ToData().userid
	$filteredUsers = CleanData $users
	
	foreach ($user in $filteredUsers) {
		$rosterUserListBox.Items.Add($user)
	}
}

$global:selectedItems = $null

$rosterSelectButton_Click = {
	$global:selectedItems = $rosterUserListBox.SelectedItems
	$selectText.Text = "$($global:selectedItems.Count) user(s) have been selected."
}

$rosterAddButton_Click = {
	$groupText = $groupTextBox.Text

	if ([string]::IsNullOrWhiteSpace($groupText) -or $groupText -notmatch "^[a-zA-Z0-9]+$") {
		[System.Windows.Forms.MessageBox]::Show(
			("Please enter a name for this group."), # Message
			"Missing Name" # Window title
		)
	} elseif ($rosterUserListBox.SelectedItems.Count -eq 0) {
		[System.Windows.Forms.MessageBox]::Show(
			("No users have been selected."), # Message
			"Missing Selection" # Window title
		)
	} else {
		$rosterListView.Items.Clear()

		#if (-not $global:utils.roster.ContainsKey($groupText)) {
		#	$global:utils.roster[$groupText] = @()
		#} else {
		#	$global:utils.roster[$groupText]
		#}

		$global:utils.roster[$groupText] = @()

		$rosterUserListBox.SelectedItems | ForEach-Object {
			$global:utils.roster[$groupText] += $_
		}

		foreach ($group in $global:utils.roster.GetEnumerator()) {
			foreach ($user in $group.value) {
				$listViewItem = New-Object System.Windows.Forms.ListViewItem($group.key)
				$listViewItem.SubItems.Add($user)
				$rosterListView.Items.Add($listViewItem)
			}
		}

		$rosterUserListBox.ClearSelected()
		$selectText.Text = ""
		$groupTextBox.Text = ""
	}
}

