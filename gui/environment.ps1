function ImportBaseVMs {
	$baseVMs = Get-PveVm | Where-Object -Property Pool -ilike -Value "Base"

	foreach ($vm in $baseVMs) {
		$envImportTreeView.Nodes.Add($vm.name)
	}
}

$envSelectButton_Click = {
	$envConfigGroupBox.Text = $envImportTreeView.SelectedNode.Text
	$envNameTextBox.Text = ""
}

$envAddButton_Click = {
	$name = $envNameTextBox.Text
	$baseVM = $envConfigGroupBox.Text

	$items = $envSummaryListView.Items
	$duplicate = $false
	foreach ($item in $items) {
		if ($name -eq $item.Text <# Allows same name if base vm is different --> -and $baseVM -eq $item.SubItems[1].Text#>) {
			$duplicate = $true
		}
	}

	if ([string]::IsNullOrWhiteSpace($name)) {
		[System.Windows.Forms.MessageBox]::Show(
			("Please enter a name."), # Message
			"Missing Values" # Window title
		)
	} elseif ($duplicate) {
		[System.Windows.Forms.MessageBox]::Show(
			("A virtual machine with this name already exists."), # Message
			"Duplicate Name" # Window title
		)
	} else {
		$envNameTextBox.Text = ""

		$listItem = New-Object System.Windows.Forms.ListViewItem($name)
		$listItem.SubItems.Add($baseVM)

		$envSummaryListView.Items.Add($listItem)

		$vm = @{
			"name" = $name;
			"base_vmid" = Get-PveVM | Where-Object -Property name -Match $baseVM | Select-Object -ExpandProperty vmid;
		}

		$global:utils.environment["vms"].Add($vm, $vm)
	}	
}