function ImportBaseVMs {
	$baseVMs = Get-PveVm | Where-Object -Property Pool -ilike -Value "Base"

	foreach ($vm in $baseVMs) {
		$envImportTreeView.Nodes.Add($vm.name)
	}
}

$envSelectButton_Click = {
	$envConfigGroupBox.Text = $envImportTreeView.SelectedNode.Text

	$envNameTextBox.Text = ""
	$envProcDropDown.Text = ""
	$envMemDropDown.Text = ""
}

$envAddButton_Click = {
	$name = $envNameTextBox.Text
	$baseVM = $envConfigGroupBox.Text
	$cpu = $envProcDropDown.Text
	$ram = $envMemDropDown.Text

	$empty = $false
	foreach ($prop in @($name, $cpu, $ram)) {
		if ([string]::IsNullOrWhiteSpace($prop)) {
			$empty = $true
		}
	}

	$items = $envSummaryListView.Items
	$duplicate = $false
	foreach ($item in $items) {
		if ($name -eq $item.Text <# Allows same name if base vm is different --> -and $baseVM -eq $item.SubItems[1].Text#>) {
			$duplicate = $true
		}
	}

	if ($empty) {
		[System.Windows.Forms.MessageBox]::Show(
			("One or more values are missing."), # Message
			"Missing Values" # Window title
		)
	} elseif ($duplicate) {
		[System.Windows.Forms.MessageBox]::Show(
			("A virtual machine with this name already exists."), # Message
			"Duplicate Name" # Window title
		)
	} else {
		$envNameTextBox.Text = ""
		$envProcDropDown.Text = ""
		$envMemDropDown.Text = ""

		$listItem = New-Object System.Windows.Forms.ListViewItem($name)
		$listItem.SubItems.Add($baseVM)
		$listItem.SubItems.Add($cpu)
		$listItem.SubItems.Add($ram)

		$envSummaryListView.Items.Add($listItem)
	}	
}