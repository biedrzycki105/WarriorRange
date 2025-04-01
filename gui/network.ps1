$netAddButton_Click = {
	$text = $netTextBox.Text
	$illegalNets = @()
	$duplicates = @()

	if ([string]::IsNullOrWhiteSpace($text)) {
		[System.Windows.Forms.MessageBox]::Show(
			("Please enter one or more network names into the text box, separated by commas."), # Message
			"Missing Values" # Window title
		)
	} else {
		$nets = $text -split "," | ForEach-Object {$_.Trim()}
		
		$nets | ForEach-Object {
			if ($_ -notmatch "^[a-zA-Z0-9]+$") {
				$illegalNets += $_
			}
			
			if ($global:utils.networks["networks"].Keys.Count -gt 0) {
				if ($global:networks["networks"] -contains $_) {
					$duplicates += $_
				}
			}
		}

		if ($illegalNets.Count -gt 0) {
			[System.Windows.Forms.MessageBox]::Show(
				("One or more values contained illegal characters.`nNetwork names should only include letters and numbers."), # Message
				"Illegal Characters" # Window title
			)
		}

		if ($duplicates.Count -gt 0) {
			[System.Windows.Forms.MessageBox]::Show(
				("One or more duplicate networks were not added to the list."), # Message
				"Duplicate Networks" # Window title
			)
		}

		$nets | ForEach-Object {
			if ($illegalNets -notcontains $_ -and $duplicates -notcontains $_) {
				$netListView.Items.Add($_)

				$global:utils.networks["networks"] += $_
			}
		}
	}
	$netTextBox.Text = ""
}