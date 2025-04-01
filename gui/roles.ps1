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
	$node = $permGroupTreeView.SelectedNode.Text
	$role = $roleComboBox.Text

	if (-not $role) {
		[System.Windows.Forms.MessageBox]::Show(
			("Please select a role"), # Message
			"No role selected" # Window title
		)
	}

	# Create a label
	$newLabel = New-Object System.Windows.Forms.Label
	$newLabel.Dock = [System.Windows.Forms.DockStyle]::Fill
	$newLabel.Text = $node
	$newLabel.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Nirmala UI',[System.Single]16,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
	$newLabel.TextAlign = [System.Drawing.ContentAlignment]::MiddleCenter

	# Create another label
	$newLabel2 = New-Object System.Windows.Forms.Label
	$newLabel2.Dock = [System.Windows.Forms.DockStyle]::Fill
	$newLabel2.Text = $role
	$newLabel2.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Consolas',[System.Single]16,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
	$newLabel2.TextAlign = [System.Drawing.ContentAlignment]::MiddleCenter

	# Create a table layout
	$newTable = New-Object System.Windows.Forms.TableLayoutPanel
	$newTable.Dock = [System.Windows.Forms.DockStyle]::Fill
	$newTable.RowCount = 2
	$newTable.RowStyles.Add((New-Object System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent, 50)))
	$newTable.RowStyles.Add((New-Object System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent, 50)))

	$newTable.Controls.Add($newLabel)
	$newTable.Controls.Add($newLabel2)

	# Create a new panel
	$newPanel = New-Object System.Windows.Forms.Panel
	$newPanel.BackColor = "Window"
	$newPanel.BorderStyle = "None"
	$newPanel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @(3, 3))
	$newPanel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @(200, 250))
	$newPanel.Controls.Add($newTable)
	


	$roleFlowLayoutPanel.Controls.Add($newPanel)

	if ($roleFlowLayoutPanel.Controls.Count -eq 0) {}

	$roleSelectedLabel.Text = "Selected: none"
}