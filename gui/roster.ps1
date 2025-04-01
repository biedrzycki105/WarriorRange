### functions for creating a new roster

# Remove sensitive or otherwise unusable users
function CleanData {

	param (
		$users
	)

	$filter = ".+\$@", "cloudbase-init", "krbtgt" -join "|"

	$filteredUsers = $users | Where-Object {$_ -notmatch $filter}
	
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
		$duplicates = @()
		foreach ($userItem in $global:selectedItems) {
			if ($global:utils.roster.ContainsKey($groupText)) {
				if ($global:roster[$groupText] -contains $userItem) {
					$duplicates += $userItem
				}
			}
		}

		if ($duplicates.Count -gt 0) {
			[System.Windows.Forms.MessageBox]::Show(
				("One or more duplicate users were not added to the list."), # Message
				"Duplicate Users" # Window title
			)
		}
		
		foreach ($user in $global:selectedItems) {
			if ($duplicates -notcontains $user) {
				$listViewItem = New-Object System.Windows.Forms.ListViewItem($user)
				$listViewItem.SubItems.Add($groupText)
				$rosterListView.Items.Add($listViewItem)

				if (-not $global:utils.roster.ContainsKey($groupText)) {
					$global:utils.roster[$groupText] = @()
				}

				$global:utils.roster[$groupText] += $user
			}
		}

		for ($i = 0; $i -lt $rosterUserListBox.Items.Count; $i += 1) {
			$rosterUserListBox.ClearSelected()
		}

		$selectText.Text = ""
		$groupTextBox.Text = ""
	}
}

