Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

function Show-LoginForm {
    $form = New-Object system.Windows.Forms.Form
    $form.Text = "Proxmox Login"
    $form.Width = 400
    $form.Height = 500
    
    $label1 = New-Object System.Windows.Forms.Label
    $label1.Text = "User:"
    $label1.AutoSize = $true
    $label1.Location = New-Object System.Drawing.Point(10,20)
    $form.Controls.Add($label1)

    $textBox1 = New-Object System.Windows.Forms.TextBox
    $textBox1.Location = New-Object System.Drawing.Point(120,20)
    $textBox1.Width = 200
    $form.Controls.Add($textBox1)

    $label2 = New-Object System.Windows.Forms.Label
    $label2.Text = "Domain:"
    $label2.AutoSize = $true
    $label2.Location = New-Object System.Drawing.Point(10,60)
    $form.Controls.Add($label2)

    $textBox2 = New-Object System.Windows.Forms.TextBox
    $textBox2.Location = New-Object System.Drawing.Point(120,60)
    $textBox2.Width = 200
    $form.Controls.Add($textBox2)
    
    $label3 = New-Object System.Windows.Forms.Label
    $label3.Text = "API Token Name:"
    $label3.AutoSize = $true
    $label3.Location = New-Object System.Drawing.Point(10,100)
    $form.Controls.Add($label3)

    $textBox3 = New-Object System.Windows.Forms.TextBox
    $textBox3.Location = New-Object System.Drawing.Point(120,100)
    $textBox3.Width = 200
    $form.Controls.Add($textBox3)

    $label4 = New-Object System.Windows.Forms.Label
    $label4.Text = "API Token:"
    $label4.AutoSize = $true
    $label4.Location = New-Object System.Drawing.Point(10,140)
    $form.Controls.Add($label4)

    $textBox4 = New-Object System.Windows.Forms.TextBox
    $textBox4.Location = New-Object System.Drawing.Point(120,140)
    $textBox4.Width = 200
    $textBox4.PasswordChar = '*'
    $form.Controls.Add($textBox4)

    $label5 = New-Object System.Windows.Forms.Label
    $label5.Text = "Node:Port:"
    $label5.AutoSize = $true
    $label5.Location = New-Object System.Drawing.Point(10,180)
    $form.Controls.Add($label5)

    $textBox5 = New-Object System.Windows.Forms.TextBox
    $textBox5.Location = New-Object System.Drawing.Point(120,180)
    $textBox5.Width = 200
    $form.Controls.Add($textBox5)
    
    $button1 = New-Object System.Windows.Forms.Button
    $button1.Text = "Login"
    $button1.Location = New-Object System.Drawing.Point(130,220)
    $button1.Add_Click({
        $user = $textBox1.Text
        $domain = $textBox2.Text
        $tokenName = $textBox3.Text
        $apiToken = $textBox4.Text
        $node = $textBox5.Text

        try {
            # Attempt to connect to Proxmox cluster
            Connect-PveCluster -HostsAndPorts $node -SkipCertificateCheck -ApiToken "$user@$domain!$tokenName=$apiToken"
            $connectionProof = Get-PveCluster
            if ($connectionProof.IsSuccessStatusCode){
                [System.Windows.Forms.MessageBox]::Show("Authentication Success", "Success", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Information)
                Show-SuccessForm
            }
            if($connectionProof.IsSuccessStatusCode -eq $false){
                [System.Windows.Forms.MessageBox]::Show("Authentication Failed:" + $connectionProof.ReasonPhrase, "Error", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Error)
            }
        }
        catch {
            [System.Windows.Forms.MessageBox]::Show("Authentication Failed: $_", "Error", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Error)
        }
    })
    $form.Controls.Add($button1)
    
    [void]$form.ShowDialog()
}

function Show-SuccessForm {
    # Get users from the "range" realm
    $vms = Get-PveVm  | Where-Object -Property Pool -ilike -Value "Base" | Select-Object -ExpandProperty Name  
    
    $form = New-Object system.Windows.Forms.Form
    $form.Text = "Proxmox - Logged In"
    $form.Width = 400
    $form.Height = 400
    
    $label = New-Object System.Windows.Forms.Label
    $label.Text = "Select VMs to save to JSON:"
    $label.AutoSize = $true
    $label.Location = New-Object System.Drawing.Point(10, 20)
    $form.Controls.Add($label)
    
    $checkedListBox = New-Object System.Windows.Forms.CheckedListBox
    $checkedListBox.Location = New-Object System.Drawing.Point(10, 50)
    $checkedListBox.Size = New-Object System.Drawing.Size(360, 250)
    foreach($vm in $vms){
        $checkedListBox.Items.Add($vm)
    }
    
    $form.Controls.Add($checkedListBox)

    $saveButton = New-Object System.Windows.Forms.Button
    $saveButton.Text = "Save to JSON"
    $saveButton.Location = New-Object System.Drawing.Point(150, 320)
    $saveButton.Add_Click({
        $selectedVms = $checkedListBox.CheckedItems
        $jsonObject = @{ BaseVMs = $selectedVms }
        $json = $jsonObject | ConvertTo-Json -Depth 10
        $json | Out-File -FilePath "selected_nodes.json" -Encoding utf8
        [System.Windows.Forms.MessageBox]::Show("Nodes saved to JSON file.", "Saved", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Information)
        $form.Close()
    })
    $form.Controls.Add($saveButton)
    
    [void]$form.ShowDialog()
}

Show-LoginForm
