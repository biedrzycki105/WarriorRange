function LoadConfigs() {
	# Load users from each group
	$node = 0
	$permGroupTreeView.Nodes.Clear()
	foreach ($group in $global:utils.roster.GetEnumerator()) {
		$permGroupTreeView.Nodes.Add($group.key, $group.key)
		foreach ($user in $group.value) {
			$permGroupTreeView.Nodes[$node].Nodes.Add($user)
		}
		$node += 1
	}
	$permGroupTreeView.ExpandAll()

	# Load the roles from Proxmox
	$roles = (
		Get-PveAccessRoles |	
		Select-Object -ExpandProperty Response |
		Select-Object -ExpandProperty Data |
		Select-Object -ExpandProperty roleid |
		Sort-Object -Property roleid
	)

	$roles | ForEach-Object {
		$roleComboBox.Items.Add($_)
	}
}

$node = $null

$roleSelectButton_Click = {
	# Check if the selected node is a root node
	Write-Host "Nodes $($permGroupTreeView.Nodes)"
	if ($permGroupTreeView.Nodes -notcontains $permGroupTreeView.SelectedNode) {
		[System.Windows.Forms.MessageBox]::Show(
			("Please select a root node from the tree view."), # Message
			"Invalid node selected" # Window title
		)
	} else {
		$roleSelectedLabel.Text = "Selected: $($permGroupTreeView.SelectedNode.Text)"
	}
	
}

$roleAssignButton_Click = {
	$group = $permGroupTreeView.SelectedNode.Text
	$role = $roleComboBox.Text

	if (-not $role) {
		[System.Windows.Forms.MessageBox]::Show(
			("Please select a role"), # Message
			"No role selected" # Window title
		)
	} else {
		$tempItem = New-Object System.Windows.Forms.ListViewItem($group)
		$tempItem.SubItems.Add($role)
		$roleAssnListView.Items.Add($tempItem)

		$global:utils.roles[$group] = $role
	}

	$roleSelectedLabel.Text = "Selected: none"
}