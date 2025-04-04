Import-Module Corsinvest.ProxmoxVE.Api

$LoginButton_Click = {

	$entries = @{
		"user" = $usernameTextBox.Text;
		"domain" = $domainTextBox.Text;
		"tokenName" = $tokenNameTextBox.Text;
		"apiToken" = $tokenValueMaskedTextBox.Text;
		"node" = $nodeTextBox.Text;
	}

	$emptyEntries = @()
	
	ForEach ($entry in $entries.GetEnumerator()) {
		if ([string]::IsNullOrWhitespace($entry.Value)) {
			$emptyEntries += $entry.Key
		}
	}

	if ($emptyEntries.Count -gt 0) {
		[System.Windows.Forms.MessageBox]::Show(
			([string]::Format("The following boxes are empty:`n{0}", $($emptyEntries -join ", "))), # Message
			"Missing Values" # Window title
		)
	} else {
		try {
            # Attempt to connect to Proxmox cluster
            Connect-PveCluster -HostsAndPorts $entries["node"] -SkipCertificateCheck -ApiToken "$($entries["user"])@$($entries["domain"])!$($entries["tokenName"])=$($entries["apiToken"])"
            $connectionProof = Get-PveCluster
            if ($connectionProof.IsSuccessStatusCode){
                [System.Windows.Forms.MessageBox]::Show("Authentication Success", "Success", "OK", "Information")

				$loginPanel.Visible = $false
				$main.Visible = $true
				$main.Focus()
            } else {
                [System.Windows.Forms.MessageBox]::Show("Authentication Failed:" + $connectionProof.ReasonPhrase, "Error", "OK", "Error")
            }
        }
        catch {
            [System.Windows.Forms.MessageBox]::Show("Authentication Failed: $_", "Error", "OK", "Error")
        }	
	}
}