[void][System.Reflection.Assembly]::Load('System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
[void][System.Reflection.Assembly]::Load('System.Windows.Forms, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
$WarriorRange = New-Object -TypeName System.Windows.Forms.Form
[System.Windows.Forms.Button]$saveButton = $null
[System.Windows.Forms.Button]$nextButton = $null
[System.Windows.Forms.Button]$backButton = $null
[System.Windows.Forms.ColumnHeader]$columnHeader1 = $null
[System.Windows.Forms.ColumnHeader]$columnHeader2 = $null
[System.Windows.Forms.TableLayoutPanel]$sidePanel = $null
[System.Windows.Forms.FlowLayoutPanel]$buttonPanel = $null
[System.Windows.Forms.Button]$saveAndConfigureButton = $null
[System.Windows.Forms.Panel]$informationPanel = $null
[System.Windows.Forms.Panel]$rolePanel = $null
[System.Windows.Forms.Panel]$netPanel = $null
[System.Windows.Forms.Panel]$rosterPanel = $null
[System.Windows.Forms.Panel]$envPanel = $null
[System.Windows.Forms.Label]$label5 = $null
[System.Windows.Forms.Label]$label8 = $null
[System.Windows.Forms.Label]$rosterLabel = $null
[System.Windows.Forms.Label]$roleLabel = $null
[System.Windows.Forms.Label]$netLabel = $null
[System.Windows.Forms.Label]$envLabel = $null
[System.Windows.Forms.TableLayoutPanel]$tableLayoutPanel1 = $null
[System.Windows.Forms.TableLayoutPanel]$tableLayoutPanel2 = $null
[System.Windows.Forms.TableLayoutPanel]$tableLayoutPanel3 = $null
[System.Windows.Forms.Panel]$panel1 = $null
[System.Windows.Forms.TextBox]$textBox1 = $null
[System.Windows.Forms.Button]$button1 = $null
[System.Windows.Forms.TableLayoutPanel]$loginPanel = $null
[System.Windows.Forms.TableLayoutPanel]$loginInfoTable = $null
[System.Windows.Forms.Button]$loginButton = $null
[System.Windows.Forms.TableLayoutPanel]$tableLayoutPanel4 = $null
[System.Windows.Forms.Label]$label1 = $null
[System.Windows.Forms.GroupBox]$domainGroupBox = $null
[System.Windows.Forms.Panel]$panel2 = $null
[System.Windows.Forms.GroupBox]$nodeGroupBox = $null
[System.Windows.Forms.Panel]$panel5 = $null
[System.Windows.Forms.GroupBox]$tokenGroupBox = $null
[System.Windows.Forms.Panel]$panel4 = $null
[System.Windows.Forms.GroupBox]$tokenNameGroupBox = $null
[System.Windows.Forms.Panel]$panel3 = $null
[System.Windows.Forms.TextBox]$domainTextBox = $null
[System.Windows.Forms.Panel]$panel6 = $null
[System.Windows.Forms.TextBox]$usernameTextBox = $null
[System.Windows.Forms.TableLayoutPanel]$main = $null
[System.Windows.Forms.TableLayoutPanel]$configurationTable = $null
[System.Windows.Forms.TextBox]$nodeTextBox = $null
[System.Windows.Forms.TextBox]$tokenValueTextBox = $null
[System.Windows.Forms.TextBox]$tokenNameTextBox = $null
[System.Windows.Forms.TableLayoutPanel]$tableLayoutPanel5 = $null
[System.Windows.Forms.TableLayoutPanel]$tableLayoutPanel6 = $null
[System.Windows.Forms.Button]$rosterAddButton = $null
[System.Windows.Forms.GroupBox]$groupBox1 = $null
[System.Windows.Forms.CheckedListBox]$rosterCheckedListBox = $null
[System.Windows.Forms.TableLayoutPanel]$tableLayoutPanel7 = $null
[System.Windows.Forms.TableLayoutPanel]$tableLayoutPanel8 = $null
[System.Windows.Forms.TextBox]$rosterFilterTextBox = $null
[System.Windows.Forms.TableLayoutPanel]$tableLayoutPanel9 = $null
[System.Windows.Forms.TreeView]$envImportTreeView = $null
[System.Windows.Forms.TableLayoutPanel]$tableLayoutPanel10 = $null
[System.Windows.Forms.GroupBox]$envConfigGroupBox = $null
[System.Windows.Forms.TableLayoutPanel]$tableLayoutPanel13 = $null
[System.Windows.Forms.Label]$label4 = $null
[System.Windows.Forms.TableLayoutPanel]$tableLayoutPanel12 = $null
[System.Windows.Forms.Label]$label3 = $null
[System.Windows.Forms.TableLayoutPanel]$tableLayoutPanel11 = $null
[System.Windows.Forms.Label]$label2 = $null
[System.Windows.Forms.TextBox]$envNameTextBox = $null
[System.Windows.Forms.ComboBox]$envMemDropDown = $null
[System.Windows.Forms.ComboBox]$envProcDropDown = $null
[System.Windows.Forms.Button]$envSelectButton = $null
[System.Windows.Forms.Button]$envAddButton = $null
[System.Windows.Forms.ColumnHeader]$nameCol = $null
[System.Windows.Forms.ColumnHeader]$vmCol = $null
[System.Windows.Forms.ColumnHeader]$cpuCol = $null
[System.Windows.Forms.ColumnHeader]$ramCol = $null
[System.Windows.Forms.ListView]$envSummaryListView = $null
[System.Windows.Forms.TableLayoutPanel]$tableLayoutPanel14 = $null
[System.Windows.Forms.GroupBox]$groupBox2 = $null
[System.Windows.Forms.TextBox]$textBox2 = $null
[System.Windows.Forms.ListBox]$rosterFinalListBox = $null
[System.Windows.Forms.GroupBox]$usernameGroupBox = $null
function InitializeComponent
{
$resources = . (Join-Path $PSScriptRoot 'testUI.resources.ps1')
$main = (New-Object -TypeName System.Windows.Forms.TableLayoutPanel)
$configurationTable = (New-Object -TypeName System.Windows.Forms.TableLayoutPanel)
$sidePanel = (New-Object -TypeName System.Windows.Forms.TableLayoutPanel)
$roleLabel = (New-Object -TypeName System.Windows.Forms.Label)
$netLabel = (New-Object -TypeName System.Windows.Forms.Label)
$envLabel = (New-Object -TypeName System.Windows.Forms.Label)
$rosterLabel = (New-Object -TypeName System.Windows.Forms.Label)
$buttonPanel = (New-Object -TypeName System.Windows.Forms.FlowLayoutPanel)
$saveAndConfigureButton = (New-Object -TypeName System.Windows.Forms.Button)
$saveButton = (New-Object -TypeName System.Windows.Forms.Button)
$nextButton = (New-Object -TypeName System.Windows.Forms.Button)
$backButton = (New-Object -TypeName System.Windows.Forms.Button)
$informationPanel = (New-Object -TypeName System.Windows.Forms.Panel)
$rosterPanel = (New-Object -TypeName System.Windows.Forms.Panel)
$tableLayoutPanel1 = (New-Object -TypeName System.Windows.Forms.TableLayoutPanel)
$tableLayoutPanel5 = (New-Object -TypeName System.Windows.Forms.TableLayoutPanel)
$rosterCheckedListBox = (New-Object -TypeName System.Windows.Forms.CheckedListBox)
$groupBox1 = (New-Object -TypeName System.Windows.Forms.GroupBox)
$rosterFilterTextBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$tableLayoutPanel6 = (New-Object -TypeName System.Windows.Forms.TableLayoutPanel)
$rosterAddButton = (New-Object -TypeName System.Windows.Forms.Button)
$rosterFinalListBox = (New-Object -TypeName System.Windows.Forms.ListBox)
$envPanel = (New-Object -TypeName System.Windows.Forms.Panel)
$tableLayoutPanel7 = (New-Object -TypeName System.Windows.Forms.TableLayoutPanel)
$tableLayoutPanel8 = (New-Object -TypeName System.Windows.Forms.TableLayoutPanel)
$envImportTreeView = (New-Object -TypeName System.Windows.Forms.TreeView)
$envSelectButton = (New-Object -TypeName System.Windows.Forms.Button)
$tableLayoutPanel14 = (New-Object -TypeName System.Windows.Forms.TableLayoutPanel)
$groupBox2 = (New-Object -TypeName System.Windows.Forms.GroupBox)
$textBox2 = (New-Object -TypeName System.Windows.Forms.TextBox)
$tableLayoutPanel9 = (New-Object -TypeName System.Windows.Forms.TableLayoutPanel)
$envConfigGroupBox = (New-Object -TypeName System.Windows.Forms.GroupBox)
$tableLayoutPanel10 = (New-Object -TypeName System.Windows.Forms.TableLayoutPanel)
$tableLayoutPanel13 = (New-Object -TypeName System.Windows.Forms.TableLayoutPanel)
$envMemDropDown = (New-Object -TypeName System.Windows.Forms.ComboBox)
$label4 = (New-Object -TypeName System.Windows.Forms.Label)
$tableLayoutPanel12 = (New-Object -TypeName System.Windows.Forms.TableLayoutPanel)
$label3 = (New-Object -TypeName System.Windows.Forms.Label)
$envProcDropDown = (New-Object -TypeName System.Windows.Forms.ComboBox)
$tableLayoutPanel11 = (New-Object -TypeName System.Windows.Forms.TableLayoutPanel)
$label2 = (New-Object -TypeName System.Windows.Forms.Label)
$envNameTextBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$envAddButton = (New-Object -TypeName System.Windows.Forms.Button)
$envSummaryListView = (New-Object -TypeName System.Windows.Forms.ListView)
$nameCol = (New-Object -TypeName System.Windows.Forms.ColumnHeader)
$vmCol = (New-Object -TypeName System.Windows.Forms.ColumnHeader)
$cpuCol = (New-Object -TypeName System.Windows.Forms.ColumnHeader)
$ramCol = (New-Object -TypeName System.Windows.Forms.ColumnHeader)
$label5 = (New-Object -TypeName System.Windows.Forms.Label)
$netPanel = (New-Object -TypeName System.Windows.Forms.Panel)
$tableLayoutPanel2 = (New-Object -TypeName System.Windows.Forms.TableLayoutPanel)
$tableLayoutPanel3 = (New-Object -TypeName System.Windows.Forms.TableLayoutPanel)
$panel1 = (New-Object -TypeName System.Windows.Forms.Panel)
$textBox1 = (New-Object -TypeName System.Windows.Forms.TextBox)
$button1 = (New-Object -TypeName System.Windows.Forms.Button)
$rolePanel = (New-Object -TypeName System.Windows.Forms.Panel)
$label8 = (New-Object -TypeName System.Windows.Forms.Label)
$columnHeader1 = (New-Object -TypeName System.Windows.Forms.ColumnHeader)
$columnHeader2 = (New-Object -TypeName System.Windows.Forms.ColumnHeader)
$loginPanel = (New-Object -TypeName System.Windows.Forms.TableLayoutPanel)
$loginInfoTable = (New-Object -TypeName System.Windows.Forms.TableLayoutPanel)
$usernameGroupBox = (New-Object -TypeName System.Windows.Forms.GroupBox)
$panel6 = (New-Object -TypeName System.Windows.Forms.Panel)
$usernameTextBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$domainGroupBox = (New-Object -TypeName System.Windows.Forms.GroupBox)
$panel2 = (New-Object -TypeName System.Windows.Forms.Panel)
$domainTextBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$tokenNameGroupBox = (New-Object -TypeName System.Windows.Forms.GroupBox)
$panel3 = (New-Object -TypeName System.Windows.Forms.Panel)
$tokenNameTextBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$tokenGroupBox = (New-Object -TypeName System.Windows.Forms.GroupBox)
$panel4 = (New-Object -TypeName System.Windows.Forms.Panel)
$tokenValueTextBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$nodeGroupBox = (New-Object -TypeName System.Windows.Forms.GroupBox)
$panel5 = (New-Object -TypeName System.Windows.Forms.Panel)
$nodeTextBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$loginButton = (New-Object -TypeName System.Windows.Forms.Button)
$tableLayoutPanel4 = (New-Object -TypeName System.Windows.Forms.TableLayoutPanel)
$label1 = (New-Object -TypeName System.Windows.Forms.Label)
$main.SuspendLayout()
$configurationTable.SuspendLayout()
$sidePanel.SuspendLayout()
$buttonPanel.SuspendLayout()
$informationPanel.SuspendLayout()
$rosterPanel.SuspendLayout()
$tableLayoutPanel1.SuspendLayout()
$tableLayoutPanel5.SuspendLayout()
$groupBox1.SuspendLayout()
$tableLayoutPanel6.SuspendLayout()
$envPanel.SuspendLayout()
$tableLayoutPanel7.SuspendLayout()
$tableLayoutPanel8.SuspendLayout()
$tableLayoutPanel14.SuspendLayout()
$groupBox2.SuspendLayout()
$tableLayoutPanel9.SuspendLayout()
$envConfigGroupBox.SuspendLayout()
$tableLayoutPanel10.SuspendLayout()
$tableLayoutPanel13.SuspendLayout()
$tableLayoutPanel12.SuspendLayout()
$tableLayoutPanel11.SuspendLayout()
$netPanel.SuspendLayout()
$tableLayoutPanel2.SuspendLayout()
$tableLayoutPanel3.SuspendLayout()
$panel1.SuspendLayout()
$rolePanel.SuspendLayout()
$loginPanel.SuspendLayout()
$loginInfoTable.SuspendLayout()
$usernameGroupBox.SuspendLayout()
$panel6.SuspendLayout()
$domainGroupBox.SuspendLayout()
$panel2.SuspendLayout()
$tokenNameGroupBox.SuspendLayout()
$panel3.SuspendLayout()
$tokenGroupBox.SuspendLayout()
$panel4.SuspendLayout()
$nodeGroupBox.SuspendLayout()
$panel5.SuspendLayout()
$tableLayoutPanel4.SuspendLayout()
$WarriorRange.SuspendLayout()
#
#main
#
$main.ColumnCount = [System.Int32]1
$main.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]100)))
$main.Controls.Add($configurationTable,[System.Int32]0,[System.Int32]1)
$main.Dock = [System.Windows.Forms.DockStyle]::Fill
$main.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]0))
$main.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0))
$main.Name = [System.String]'main'
$main.RowCount = [System.Int32]3
$main.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Absolute,[System.Single]45)))
$main.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]100)))
$main.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Absolute,[System.Single]20)))
$main.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1008,[System.Int32]729))
$main.TabIndex = [System.Int32]0
$main.add_Enter($mainPanel_Load)
#
#configurationTable
#
$configurationTable.ColumnCount = [System.Int32]2
$configurationTable.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]15)))
$configurationTable.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]85)))
$configurationTable.Controls.Add($sidePanel,[System.Int32]0,[System.Int32]0)
$configurationTable.Controls.Add($buttonPanel,[System.Int32]0,[System.Int32]1)
$configurationTable.Controls.Add($informationPanel,[System.Int32]1,[System.Int32]0)
$configurationTable.Dock = [System.Windows.Forms.DockStyle]::Fill
$configurationTable.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]45))
$configurationTable.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0))
$configurationTable.Name = [System.String]'configurationTable'
$configurationTable.RowCount = [System.Int32]2
$configurationTable.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]100)))
$configurationTable.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Absolute,[System.Single]45)))
$configurationTable.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Absolute,[System.Single]20)))
$configurationTable.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1008,[System.Int32]664))
$configurationTable.TabIndex = [System.Int32]2
$configurationTable.add_Paint($Body_Paint)
#
#sidePanel
#
$sidePanel.BackColor = [System.Drawing.SystemColors]::ControlLight
$sidePanel.ColumnCount = [System.Int32]1
$sidePanel.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]100)))
$sidePanel.Controls.Add($roleLabel,[System.Int32]0,[System.Int32]3)
$sidePanel.Controls.Add($netLabel,[System.Int32]0,[System.Int32]2)
$sidePanel.Controls.Add($envLabel,[System.Int32]0,[System.Int32]1)
$sidePanel.Controls.Add($rosterLabel,[System.Int32]0,[System.Int32]0)
$sidePanel.Dock = [System.Windows.Forms.DockStyle]::Fill
$sidePanel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]0))
$sidePanel.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0))
$sidePanel.MinimumSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]110,[System.Int32]0))
$sidePanel.Name = [System.String]'sidePanel'
$sidePanel.RowCount = [System.Int32]5
$sidePanel.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Absolute,[System.Single]50)))
$sidePanel.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Absolute,[System.Single]50)))
$sidePanel.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Absolute,[System.Single]50)))
$sidePanel.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Absolute,[System.Single]50)))
$sidePanel.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Absolute,[System.Single]50)))
$sidePanel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]151,[System.Int32]619))
$sidePanel.TabIndex = [System.Int32]1
#
#roleLabel
#
$roleLabel.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Bottom -bor [System.Windows.Forms.AnchorStyles]::Left -bor [System.Windows.Forms.AnchorStyles]::Right)
$roleLabel.AutoSize = $true
$roleLabel.BackColor = [System.Drawing.Color]::AliceBlue
$roleLabel.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Nirmala UI',[System.Single]12,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$roleLabel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]150))
$roleLabel.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0))
$roleLabel.Name = [System.String]'roleLabel'
$roleLabel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]151,[System.Int32]50))
$roleLabel.TabIndex = [System.Int32]3
$roleLabel.Text = [System.String]'Roles and Permissions'
$roleLabel.TextAlign = [System.Drawing.ContentAlignment]::MiddleCenter
$roleLabel.add_Click($roleLabel_Click)
#
#netLabel
#
$netLabel.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Bottom -bor [System.Windows.Forms.AnchorStyles]::Left -bor [System.Windows.Forms.AnchorStyles]::Right)
$netLabel.AutoSize = $true
$netLabel.BackColor = [System.Drawing.Color]::AliceBlue
$netLabel.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Nirmala UI',[System.Single]12,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$netLabel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]100))
$netLabel.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0))
$netLabel.Name = [System.String]'netLabel'
$netLabel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]151,[System.Int32]50))
$netLabel.TabIndex = [System.Int32]2
$netLabel.Text = [System.String]'Networks'
$netLabel.TextAlign = [System.Drawing.ContentAlignment]::MiddleCenter
$netLabel.add_Click($netLabel_Click)
#
#envLabel
#
$envLabel.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Bottom -bor [System.Windows.Forms.AnchorStyles]::Left -bor [System.Windows.Forms.AnchorStyles]::Right)
$envLabel.AutoSize = $true
$envLabel.BackColor = [System.Drawing.Color]::AliceBlue
$envLabel.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Nirmala UI',[System.Single]12,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$envLabel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]50))
$envLabel.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0))
$envLabel.Name = [System.String]'envLabel'
$envLabel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]151,[System.Int32]50))
$envLabel.TabIndex = [System.Int32]1
$envLabel.Text = [System.String]'Environment'
$envLabel.TextAlign = [System.Drawing.ContentAlignment]::MiddleCenter
$envLabel.add_Click($envLabel_Click)
#
#rosterLabel
#
$rosterLabel.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Bottom -bor [System.Windows.Forms.AnchorStyles]::Left -bor [System.Windows.Forms.AnchorStyles]::Right)
$rosterLabel.AutoSize = $true
$rosterLabel.BackColor = [System.Drawing.Color]::CornflowerBlue
$rosterLabel.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Nirmala UI',[System.Single]12,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$rosterLabel.ForeColor = [System.Drawing.Color]::WhiteSmoke
$rosterLabel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]0))
$rosterLabel.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0))
$rosterLabel.Name = [System.String]'rosterLabel'
$rosterLabel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]151,[System.Int32]50))
$rosterLabel.TabIndex = [System.Int32]0
$rosterLabel.Text = [System.String]'Roster'
$rosterLabel.TextAlign = [System.Drawing.ContentAlignment]::MiddleCenter
$rosterLabel.add_Click($rosterLabel_Click)
#
#buttonPanel
#
$buttonPanel.BackColor = [System.Drawing.SystemColors]::ControlLight
$configurationTable.SetColumnSpan($buttonPanel,[System.Int32]2)
$buttonPanel.Controls.Add($saveAndConfigureButton)
$buttonPanel.Controls.Add($saveButton)
$buttonPanel.Controls.Add($nextButton)
$buttonPanel.Controls.Add($backButton)
$buttonPanel.Dock = [System.Windows.Forms.DockStyle]::Fill
$buttonPanel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]619))
$buttonPanel.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0))
$buttonPanel.Name = [System.String]'buttonPanel'
$buttonPanel.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0,[System.Int32]0,[System.Int32]5,[System.Int32]0))
$buttonPanel.RightToLeft = [System.Windows.Forms.RightToLeft]::Yes
$buttonPanel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1008,[System.Int32]45))
$buttonPanel.TabIndex = [System.Int32]2
#
#saveAndConfigureButton
#
$saveAndConfigureButton.BackColor = [System.Drawing.Color]::LightSlateGray
$saveAndConfigureButton.Enabled = $false
$saveAndConfigureButton.FlatAppearance.BorderColor = [System.Drawing.Color]::LightSlateGray
$saveAndConfigureButton.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$saveAndConfigureButton.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Nirmala UI',[System.Single]9.75,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$saveAndConfigureButton.ForeColor = [System.Drawing.SystemColors]::ButtonHighlight
$saveAndConfigureButton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]903,[System.Int32]5))
$saveAndConfigureButton.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]10,[System.Int32]5,[System.Int32]0,[System.Int32]0))
$saveAndConfigureButton.Name = [System.String]'saveAndConfigureButton'
$saveAndConfigureButton.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]90,[System.Int32]35))
$saveAndConfigureButton.TabIndex = [System.Int32]0
$saveAndConfigureButton.Text = [System.String]'Deploy'
$saveAndConfigureButton.UseVisualStyleBackColor = $false
#
#saveButton
#
$saveButton.BackColor = [System.Drawing.Color]::LightSlateGray
$saveButton.Enabled = $false
$saveButton.FlatAppearance.BorderColor = [System.Drawing.Color]::LightSlateGray
$saveButton.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$saveButton.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Nirmala UI',[System.Single]9.75,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$saveButton.ForeColor = [System.Drawing.SystemColors]::ButtonHighlight
$saveButton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]803,[System.Int32]5))
$saveButton.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]10,[System.Int32]5,[System.Int32]0,[System.Int32]0))
$saveButton.Name = [System.String]'saveButton'
$saveButton.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]90,[System.Int32]35))
$saveButton.TabIndex = [System.Int32]1
$saveButton.Text = [System.String]'Save'
$saveButton.UseVisualStyleBackColor = $false
#
#nextButton
#
$nextButton.BackColor = [System.Drawing.Color]::CornflowerBlue
$nextButton.Cursor = [System.Windows.Forms.Cursors]::Hand
$nextButton.Dock = [System.Windows.Forms.DockStyle]::Bottom
$nextButton.FlatAppearance.BorderColor = [System.Drawing.Color]::CornflowerBlue
$nextButton.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$nextButton.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Nirmala UI',[System.Single]9.75,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$nextButton.ForeColor = [System.Drawing.SystemColors]::ButtonHighlight
$nextButton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]703,[System.Int32]5))
$nextButton.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]10,[System.Int32]0,[System.Int32]0,[System.Int32]0))
$nextButton.Name = [System.String]'nextButton'
$nextButton.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]90,[System.Int32]35))
$nextButton.TabIndex = [System.Int32]2
$nextButton.Text = [System.String]'Next'
$nextButton.UseVisualStyleBackColor = $false
$nextButton.add_Click($nextButton_Click)
#
#backButton
#
$backButton.BackColor = [System.Drawing.Color]::CornflowerBlue
$backButton.Cursor = [System.Windows.Forms.Cursors]::Hand
$backButton.Dock = [System.Windows.Forms.DockStyle]::Bottom
$backButton.FlatAppearance.BorderColor = [System.Drawing.Color]::CornflowerBlue
$backButton.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$backButton.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Nirmala UI',[System.Single]10,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$backButton.ForeColor = [System.Drawing.SystemColors]::ButtonHighlight
$backButton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]603,[System.Int32]5))
$backButton.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]10,[System.Int32]0,[System.Int32]0,[System.Int32]0))
$backButton.Name = [System.String]'backButton'
$backButton.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]90,[System.Int32]35))
$backButton.TabIndex = [System.Int32]4
$backButton.Text = [System.String]'Back'
$backButton.UseVisualStyleBackColor = $false
$backButton.add_Click($backButton_Click)
#
#informationPanel
#
$informationPanel.Controls.Add($rosterPanel)
$informationPanel.Controls.Add($envPanel)
$informationPanel.Controls.Add($netPanel)
$informationPanel.Controls.Add($rolePanel)
$informationPanel.Dock = [System.Windows.Forms.DockStyle]::Fill
$informationPanel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]151,[System.Int32]0))
$informationPanel.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0))
$informationPanel.Name = [System.String]'informationPanel'
$informationPanel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]857,[System.Int32]619))
$informationPanel.TabIndex = [System.Int32]3
#
#rosterPanel
#
$rosterPanel.Controls.Add($tableLayoutPanel1)
$rosterPanel.Dock = [System.Windows.Forms.DockStyle]::Fill
$rosterPanel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]0))
$rosterPanel.Name = [System.String]'rosterPanel'
$rosterPanel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]857,[System.Int32]619))
$rosterPanel.TabIndex = [System.Int32]1
#
#tableLayoutPanel1
#
$tableLayoutPanel1.ColumnCount = [System.Int32]3
$tableLayoutPanel1.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]50)))
$tableLayoutPanel1.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Absolute,[System.Single]100)))
$tableLayoutPanel1.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]50)))
$tableLayoutPanel1.Controls.Add($tableLayoutPanel5,[System.Int32]0,[System.Int32]0)
$tableLayoutPanel1.Controls.Add($tableLayoutPanel6,[System.Int32]1,[System.Int32]0)
$tableLayoutPanel1.Controls.Add($rosterFinalListBox,[System.Int32]2,[System.Int32]0)
$tableLayoutPanel1.Dock = [System.Windows.Forms.DockStyle]::Fill
$tableLayoutPanel1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]0))
$tableLayoutPanel1.Name = [System.String]'tableLayoutPanel1'
$tableLayoutPanel1.RowCount = [System.Int32]1
$tableLayoutPanel1.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]100)))
$tableLayoutPanel1.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Absolute,[System.Single]619)))
$tableLayoutPanel1.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Absolute,[System.Single]619)))
$tableLayoutPanel1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]857,[System.Int32]619))
$tableLayoutPanel1.TabIndex = [System.Int32]1
$tableLayoutPanel1.add_Paint($tableLayoutPanel1_Paint)
#
#tableLayoutPanel5
#
$tableLayoutPanel5.ColumnCount = [System.Int32]1
$tableLayoutPanel5.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]100)))
$tableLayoutPanel5.Controls.Add($rosterCheckedListBox,[System.Int32]0,[System.Int32]1)
$tableLayoutPanel5.Controls.Add($groupBox1,[System.Int32]0,[System.Int32]0)
$tableLayoutPanel5.Dock = [System.Windows.Forms.DockStyle]::Fill
$tableLayoutPanel5.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]3))
$tableLayoutPanel5.Name = [System.String]'tableLayoutPanel5'
$tableLayoutPanel5.RowCount = [System.Int32]3
$tableLayoutPanel5.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Absolute,[System.Single]100)))
$tableLayoutPanel5.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]100)))
$tableLayoutPanel5.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Absolute,[System.Single]100)))
$tableLayoutPanel5.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]372,[System.Int32]613))
$tableLayoutPanel5.TabIndex = [System.Int32]0
#
#rosterCheckedListBox
#
$rosterCheckedListBox.BorderStyle = [System.Windows.Forms.BorderStyle]::None
$rosterCheckedListBox.Dock = [System.Windows.Forms.DockStyle]::Fill
$rosterCheckedListBox.FormattingEnabled = $true
$rosterCheckedListBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]50,[System.Int32]100))
$rosterCheckedListBox.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]50,[System.Int32]0,[System.Int32]50,[System.Int32]0))
$rosterCheckedListBox.Name = [System.String]'rosterCheckedListBox'
$rosterCheckedListBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]272,[System.Int32]413))
$rosterCheckedListBox.TabIndex = [System.Int32]0
#
#groupBox1
#
$groupBox1.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Bottom -bor [System.Windows.Forms.AnchorStyles]::Left -bor [System.Windows.Forms.AnchorStyles]::Right)
$groupBox1.Controls.Add($rosterFilterTextBox)
$groupBox1.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$groupBox1.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]9.75,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$groupBox1.ForeColor = [System.Drawing.SystemColors]::ControlText
$groupBox1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]50,[System.Int32]40))
$groupBox1.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]50,[System.Int32]3,[System.Int32]50,[System.Int32]10))
$groupBox1.Name = [System.String]'groupBox1'
$groupBox1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]272,[System.Int32]50))
$groupBox1.TabIndex = [System.Int32]2
$groupBox1.TabStop = $false
$groupBox1.Text = [System.String]'Filter'
#
#rosterFilterTextBox
#
$rosterFilterTextBox.BorderStyle = [System.Windows.Forms.BorderStyle]::None
$rosterFilterTextBox.Dock = [System.Windows.Forms.DockStyle]::Fill
$rosterFilterTextBox.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Nirmala Text',[System.Single]12,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$rosterFilterTextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]18))
$rosterFilterTextBox.Name = [System.String]'rosterFilterTextBox'
$rosterFilterTextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]266,[System.Int32]30))
$rosterFilterTextBox.TabIndex = [System.Int32]0
#
#tableLayoutPanel6
#
$tableLayoutPanel6.ColumnCount = [System.Int32]1
$tableLayoutPanel6.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]100)))
$tableLayoutPanel6.Controls.Add($rosterAddButton,[System.Int32]0,[System.Int32]1)
$tableLayoutPanel6.Dock = [System.Windows.Forms.DockStyle]::Fill
$tableLayoutPanel6.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]381,[System.Int32]3))
$tableLayoutPanel6.Name = [System.String]'tableLayoutPanel6'
$tableLayoutPanel6.RowCount = [System.Int32]3
$tableLayoutPanel6.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]50)))
$tableLayoutPanel6.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Absolute,[System.Single]50)))
$tableLayoutPanel6.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]50)))
$tableLayoutPanel6.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]94,[System.Int32]613))
$tableLayoutPanel6.TabIndex = [System.Int32]1
#
#rosterAddButton
#
$rosterAddButton.BackColor = [System.Drawing.SystemColors]::ControlLight
$rosterAddButton.Cursor = [System.Windows.Forms.Cursors]::Hand
$rosterAddButton.Dock = [System.Windows.Forms.DockStyle]::Fill
$rosterAddButton.FlatAppearance.BorderColor = [System.Drawing.Color]::CornflowerBlue
$rosterAddButton.FlatAppearance.BorderSize = [System.Int32]2
$rosterAddButton.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$rosterAddButton.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Nirmala UI',[System.Single]12,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$rosterAddButton.ForeColor = [System.Drawing.Color]::CornflowerBlue
$rosterAddButton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]284))
$rosterAddButton.Name = [System.String]'rosterAddButton'
$rosterAddButton.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]88,[System.Int32]44))
$rosterAddButton.TabIndex = [System.Int32]0
$rosterAddButton.Text = [System.String]'Add'
$rosterAddButton.UseVisualStyleBackColor = $false
$rosterAddButton.add_Click($rosterAddButton_Click)
#
#rosterFinalListBox
#
$rosterFinalListBox.BorderStyle = [System.Windows.Forms.BorderStyle]::None
$rosterFinalListBox.Dock = [System.Windows.Forms.DockStyle]::Fill
$rosterFinalListBox.FormattingEnabled = $true
$rosterFinalListBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]528,[System.Int32]100))
$rosterFinalListBox.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]50,[System.Int32]100,[System.Int32]50,[System.Int32]100))
$rosterFinalListBox.Name = [System.String]'rosterFinalListBox'
$rosterFinalListBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]279,[System.Int32]419))
$rosterFinalListBox.TabIndex = [System.Int32]2
#
#envPanel
#
$envPanel.Controls.Add($tableLayoutPanel7)
$envPanel.Controls.Add($label5)
$envPanel.Dock = [System.Windows.Forms.DockStyle]::Fill
$envPanel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]0))
$envPanel.Name = [System.String]'envPanel'
$envPanel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]857,[System.Int32]619))
$envPanel.TabIndex = [System.Int32]0
#
#tableLayoutPanel7
#
$tableLayoutPanel7.ColumnCount = [System.Int32]2
$tableLayoutPanel7.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]39.43991)))
$tableLayoutPanel7.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]60.56009)))
$tableLayoutPanel7.Controls.Add($tableLayoutPanel8,[System.Int32]0,[System.Int32]0)
$tableLayoutPanel7.Controls.Add($tableLayoutPanel9,[System.Int32]1,[System.Int32]0)
$tableLayoutPanel7.Dock = [System.Windows.Forms.DockStyle]::Fill
$tableLayoutPanel7.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]0))
$tableLayoutPanel7.Name = [System.String]'tableLayoutPanel7'
$tableLayoutPanel7.RowCount = [System.Int32]1
$tableLayoutPanel7.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]100)))
$tableLayoutPanel7.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Absolute,[System.Single]619)))
$tableLayoutPanel7.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]857,[System.Int32]619))
$tableLayoutPanel7.TabIndex = [System.Int32]5
#
#tableLayoutPanel8
#
$tableLayoutPanel8.ColumnCount = [System.Int32]1
$tableLayoutPanel8.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]100)))
$tableLayoutPanel8.Controls.Add($envImportTreeView,[System.Int32]0,[System.Int32]1)
$tableLayoutPanel8.Controls.Add($envSelectButton,[System.Int32]0,[System.Int32]2)
$tableLayoutPanel8.Controls.Add($tableLayoutPanel14,[System.Int32]0,[System.Int32]0)
$tableLayoutPanel8.Dock = [System.Windows.Forms.DockStyle]::Fill
$tableLayoutPanel8.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]3))
$tableLayoutPanel8.Name = [System.String]'tableLayoutPanel8'
$tableLayoutPanel8.RowCount = [System.Int32]3
$tableLayoutPanel8.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Absolute,[System.Single]125)))
$tableLayoutPanel8.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]100)))
$tableLayoutPanel8.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Absolute,[System.Single]125)))
$tableLayoutPanel8.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]332,[System.Int32]613))
$tableLayoutPanel8.TabIndex = [System.Int32]2
#
#envImportTreeView
#
$envImportTreeView.BorderStyle = [System.Windows.Forms.BorderStyle]::None
$envImportTreeView.Dock = [System.Windows.Forms.DockStyle]::Fill
$envImportTreeView.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]30,[System.Int32]128))
$envImportTreeView.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]30,[System.Int32]3,[System.Int32]30,[System.Int32]3))
$envImportTreeView.Name = [System.String]'envImportTreeView'
$envImportTreeView.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]272,[System.Int32]357))
$envImportTreeView.TabIndex = [System.Int32]5
#
#envSelectButton
#
$envSelectButton.BackColor = [System.Drawing.SystemColors]::ControlLight
$envSelectButton.Dock = [System.Windows.Forms.DockStyle]::Fill
$envSelectButton.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$envSelectButton.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Nirmala UI',[System.Single]9.75,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$envSelectButton.ForeColor = [System.Drawing.SystemColors]::ControlDarkDark
$envSelectButton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]30,[System.Int32]498))
$envSelectButton.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]30,[System.Int32]10,[System.Int32]30,[System.Int32]75))
$envSelectButton.Name = [System.String]'envSelectButton'
$envSelectButton.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]272,[System.Int32]40))
$envSelectButton.TabIndex = [System.Int32]6
$envSelectButton.Text = [System.String]'Select'
$envSelectButton.UseVisualStyleBackColor = $false
$envSelectButton.add_Click($envSelectButton_Click)
#
#tableLayoutPanel14
#
$tableLayoutPanel14.ColumnCount = [System.Int32]1
$tableLayoutPanel14.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]100)))
$tableLayoutPanel14.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Absolute,[System.Single]20)))
$tableLayoutPanel14.Controls.Add($groupBox2,[System.Int32]0,[System.Int32]1)
$tableLayoutPanel14.Dock = [System.Windows.Forms.DockStyle]::Fill
$tableLayoutPanel14.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]3))
$tableLayoutPanel14.Name = [System.String]'tableLayoutPanel14'
$tableLayoutPanel14.RowCount = [System.Int32]2
$tableLayoutPanel14.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Absolute,[System.Single]40)))
$tableLayoutPanel14.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]100)))
$tableLayoutPanel14.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]326,[System.Int32]119))
$tableLayoutPanel14.TabIndex = [System.Int32]7
#
#groupBox2
#
$groupBox2.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Bottom -bor [System.Windows.Forms.AnchorStyles]::Left -bor [System.Windows.Forms.AnchorStyles]::Right)
$groupBox2.Controls.Add($textBox2)
$groupBox2.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$groupBox2.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]9.75,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$groupBox2.ForeColor = [System.Drawing.SystemColors]::ControlText
$groupBox2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]30,[System.Int32]68))
$groupBox2.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]30,[System.Int32]3,[System.Int32]30,[System.Int32]3))
$groupBox2.Name = [System.String]'groupBox2'
$groupBox2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]266,[System.Int32]48))
$groupBox2.TabIndex = [System.Int32]3
$groupBox2.TabStop = $false
$groupBox2.Text = [System.String]'Filter'
#
#textBox2
#
$textBox2.BorderStyle = [System.Windows.Forms.BorderStyle]::None
$textBox2.Dock = [System.Windows.Forms.DockStyle]::Fill
$textBox2.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Nirmala Text',[System.Single]9.75,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$textBox2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]18))
$textBox2.Name = [System.String]'textBox2'
$textBox2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]260,[System.Int32]25))
$textBox2.TabIndex = [System.Int32]0
#
#tableLayoutPanel9
#
$tableLayoutPanel9.ColumnCount = [System.Int32]1
$tableLayoutPanel9.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]100)))
$tableLayoutPanel9.Controls.Add($envConfigGroupBox,[System.Int32]0,[System.Int32]0)
$tableLayoutPanel9.Controls.Add($envAddButton,[System.Int32]0,[System.Int32]1)
$tableLayoutPanel9.Controls.Add($envSummaryListView,[System.Int32]0,[System.Int32]2)
$tableLayoutPanel9.Dock = [System.Windows.Forms.DockStyle]::Fill
$tableLayoutPanel9.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]341,[System.Int32]3))
$tableLayoutPanel9.Name = [System.String]'tableLayoutPanel9'
$tableLayoutPanel9.RowCount = [System.Int32]3
$tableLayoutPanel9.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]40)))
$tableLayoutPanel9.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Absolute,[System.Single]50)))
$tableLayoutPanel9.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]60)))
$tableLayoutPanel9.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]513,[System.Int32]613))
$tableLayoutPanel9.TabIndex = [System.Int32]3
#
#envConfigGroupBox
#
$envConfigGroupBox.BackColor = [System.Drawing.SystemColors]::Control
$envConfigGroupBox.Controls.Add($tableLayoutPanel10)
$envConfigGroupBox.Dock = [System.Windows.Forms.DockStyle]::Fill
$envConfigGroupBox.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Consolas',[System.Single]15.75,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$envConfigGroupBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]15,[System.Int32]15))
$envConfigGroupBox.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]15))
$envConfigGroupBox.Name = [System.String]'envConfigGroupBox'
$envConfigGroupBox.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]3,[System.Int32]30,[System.Int32]3,[System.Int32]3))
$envConfigGroupBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]483,[System.Int32]195))
$envConfigGroupBox.TabIndex = [System.Int32]0
$envConfigGroupBox.TabStop = $false
$envConfigGroupBox.Text = [System.String]'{...}'
#
#tableLayoutPanel10
#
$tableLayoutPanel10.ColumnCount = [System.Int32]3
$tableLayoutPanel10.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]40)))
$tableLayoutPanel10.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]30)))
$tableLayoutPanel10.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]30)))
$tableLayoutPanel10.Controls.Add($tableLayoutPanel13,[System.Int32]2,[System.Int32]0)
$tableLayoutPanel10.Controls.Add($tableLayoutPanel12,[System.Int32]1,[System.Int32]0)
$tableLayoutPanel10.Controls.Add($tableLayoutPanel11,[System.Int32]0,[System.Int32]0)
$tableLayoutPanel10.Dock = [System.Windows.Forms.DockStyle]::Fill
$tableLayoutPanel10.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]55))
$tableLayoutPanel10.Name = [System.String]'tableLayoutPanel10'
$tableLayoutPanel10.RowCount = [System.Int32]1
$tableLayoutPanel10.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]100)))
$tableLayoutPanel10.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]477,[System.Int32]137))
$tableLayoutPanel10.TabIndex = [System.Int32]0
#
#tableLayoutPanel13
#
$tableLayoutPanel13.ColumnCount = [System.Int32]1
$tableLayoutPanel13.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]100)))
$tableLayoutPanel13.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Absolute,[System.Single]20)))
$tableLayoutPanel13.Controls.Add($envMemDropDown,[System.Int32]0,[System.Int32]1)
$tableLayoutPanel13.Controls.Add($label4,[System.Int32]0,[System.Int32]0)
$tableLayoutPanel13.Dock = [System.Windows.Forms.DockStyle]::Fill
$tableLayoutPanel13.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]336,[System.Int32]3))
$tableLayoutPanel13.Name = [System.String]'tableLayoutPanel13'
$tableLayoutPanel13.RowCount = [System.Int32]2
$tableLayoutPanel13.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Absolute,[System.Single]30)))
$tableLayoutPanel13.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]100)))
$tableLayoutPanel13.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]138,[System.Int32]131))
$tableLayoutPanel13.TabIndex = [System.Int32]2
#
#envMemDropDown
#
$envMemDropDown.Dock = [System.Windows.Forms.DockStyle]::Fill
$envMemDropDown.DropDownHeight = [System.Int32]50
$envMemDropDown.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$envMemDropDown.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Consolas',[System.Single]12,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$envMemDropDown.FormattingEnabled = $true
$envMemDropDown.IntegralHeight = $false
$envMemDropDown.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]10,[System.Int32]60))
$envMemDropDown.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]10,[System.Int32]30,[System.Int32]10,[System.Int32]3))
$envMemDropDown.MaxDropDownItems = [System.Int32]100
$envMemDropDown.Name = [System.String]'envMemDropDown'
$envMemDropDown.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]118,[System.Int32]27))
$envMemDropDown.Sorted = $true
$envMemDropDown.TabIndex = [System.Int32]2
#
#label4
#
$label4.AutoSize = $true
$label4.Dock = [System.Windows.Forms.DockStyle]::Fill
$label4.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Consolas',[System.Single]12,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$label4.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]0))
$label4.Name = [System.String]'label4'
$label4.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]132,[System.Int32]30))
$label4.TabIndex = [System.Int32]0
$label4.Text = [System.String]'Memory (MB)'
$label4.TextAlign = [System.Drawing.ContentAlignment]::MiddleCenter
#
#tableLayoutPanel12
#
$tableLayoutPanel12.ColumnCount = [System.Int32]1
$tableLayoutPanel12.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]100)))
$tableLayoutPanel12.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Absolute,[System.Single]20)))
$tableLayoutPanel12.Controls.Add($label3,[System.Int32]0,[System.Int32]0)
$tableLayoutPanel12.Controls.Add($envProcDropDown,[System.Int32]0,[System.Int32]1)
$tableLayoutPanel12.Dock = [System.Windows.Forms.DockStyle]::Fill
$tableLayoutPanel12.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]193,[System.Int32]3))
$tableLayoutPanel12.Name = [System.String]'tableLayoutPanel12'
$tableLayoutPanel12.RowCount = [System.Int32]2
$tableLayoutPanel12.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Absolute,[System.Single]30)))
$tableLayoutPanel12.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]100)))
$tableLayoutPanel12.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]137,[System.Int32]131))
$tableLayoutPanel12.TabIndex = [System.Int32]1
#
#label3
#
$label3.AutoSize = $true
$label3.Dock = [System.Windows.Forms.DockStyle]::Fill
$label3.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Consolas',[System.Single]12,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$label3.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]0))
$label3.Name = [System.String]'label3'
$label3.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]131,[System.Int32]30))
$label3.TabIndex = [System.Int32]0
$label3.Text = [System.String]'Processor'
$label3.TextAlign = [System.Drawing.ContentAlignment]::MiddleCenter
#
#envProcDropDown
#
$envProcDropDown.Dock = [System.Windows.Forms.DockStyle]::Fill
$envProcDropDown.DropDownHeight = [System.Int32]50
$envProcDropDown.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$envProcDropDown.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Consolas',[System.Single]12,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$envProcDropDown.FormattingEnabled = $true
$envProcDropDown.IntegralHeight = $false
$envProcDropDown.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]10,[System.Int32]60))
$envProcDropDown.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]10,[System.Int32]30,[System.Int32]10,[System.Int32]3))
$envProcDropDown.MaxDropDownItems = [System.Int32]100
$envProcDropDown.Name = [System.String]'envProcDropDown'
$envProcDropDown.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]117,[System.Int32]27))
$envProcDropDown.Sorted = $true
$envProcDropDown.TabIndex = [System.Int32]1
#
#tableLayoutPanel11
#
$tableLayoutPanel11.ColumnCount = [System.Int32]1
$tableLayoutPanel11.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]100)))
$tableLayoutPanel11.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Absolute,[System.Single]20)))
$tableLayoutPanel11.Controls.Add($label2,[System.Int32]0,[System.Int32]0)
$tableLayoutPanel11.Controls.Add($envNameTextBox,[System.Int32]0,[System.Int32]1)
$tableLayoutPanel11.Dock = [System.Windows.Forms.DockStyle]::Fill
$tableLayoutPanel11.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]3))
$tableLayoutPanel11.Name = [System.String]'tableLayoutPanel11'
$tableLayoutPanel11.RowCount = [System.Int32]2
$tableLayoutPanel11.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Absolute,[System.Single]30)))
$tableLayoutPanel11.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]100)))
$tableLayoutPanel11.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]184,[System.Int32]131))
$tableLayoutPanel11.TabIndex = [System.Int32]0
#
#label2
#
$label2.AutoSize = $true
$label2.Dock = [System.Windows.Forms.DockStyle]::Fill
$label2.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Consolas',[System.Single]12,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$label2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]0))
$label2.Name = [System.String]'label2'
$label2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]178,[System.Int32]30))
$label2.TabIndex = [System.Int32]0
$label2.Text = [System.String]'Name'
$label2.TextAlign = [System.Drawing.ContentAlignment]::MiddleCenter
#
#envNameTextBox
#
$envNameTextBox.BorderStyle = [System.Windows.Forms.BorderStyle]::None
$envNameTextBox.Dock = [System.Windows.Forms.DockStyle]::Fill
$envNameTextBox.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Consolas',[System.Single]12,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$envNameTextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]10,[System.Int32]66))
$envNameTextBox.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]10,[System.Int32]36,[System.Int32]10,[System.Int32]3))
$envNameTextBox.Name = [System.String]'envNameTextBox'
$envNameTextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]164,[System.Int32]19))
$envNameTextBox.TabIndex = [System.Int32]1
#
#envAddButton
#
$envAddButton.Dock = [System.Windows.Forms.DockStyle]::Fill
$envAddButton.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Nirmala UI',[System.Single]14.25,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$envAddButton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]100,[System.Int32]228))
$envAddButton.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]100,[System.Int32]3,[System.Int32]100,[System.Int32]3))
$envAddButton.Name = [System.String]'envAddButton'
$envAddButton.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]313,[System.Int32]44))
$envAddButton.TabIndex = [System.Int32]1
$envAddButton.Text = [System.String]'Add'
$envAddButton.UseVisualStyleBackColor = $true
$envAddButton.add_Click($envAddButton_Click)
#
#envSummaryListView
#
$envSummaryListView.BorderStyle = [System.Windows.Forms.BorderStyle]::FixedSingle
$envSummaryListView.Columns.AddRange([System.Windows.Forms.ColumnHeader[]]@($nameCol,$vmCol,$cpuCol,$ramCol))
$envSummaryListView.Dock = [System.Windows.Forms.DockStyle]::Fill
$envSummaryListView.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]9.75,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$envSummaryListView.HideSelection = $false
$envSummaryListView.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]15,[System.Int32]290))
$envSummaryListView.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]15,[System.Int32]15,[System.Int32]15,[System.Int32]30))
$envSummaryListView.Name = [System.String]'envSummaryListView'
$envSummaryListView.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]483,[System.Int32]293))
$envSummaryListView.TabIndex = [System.Int32]2
$envSummaryListView.UseCompatibleStateImageBehavior = $false
$envSummaryListView.View = [System.Windows.Forms.View]::Details
#
#nameCol
#
$nameCol.Text = [System.String]'Name'
$nameCol.Width = [System.Int32]150
#
#vmCol
#
$vmCol.Text = [System.String]'Base VM'
$vmCol.Width = [System.Int32]150
#
#cpuCol
#
$cpuCol.Text = [System.String]'CPUs'
$cpuCol.Width = [System.Int32]75
#
#ramCol
#
$ramCol.Text = [System.String]'RAM'
$ramCol.Width = [System.Int32]75
#
#label5
#
$label5.AutoSize = $true
$label5.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]738))
$label5.Name = [System.String]'label5'
$label5.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]25,[System.Int32]13))
$label5.TabIndex = [System.Int32]4
$label5.Text = [System.String]'env'
$label5.add_Click($label5_Click)
#
#netPanel
#
$netPanel.Controls.Add($tableLayoutPanel2)
$netPanel.Dock = [System.Windows.Forms.DockStyle]::Fill
$netPanel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]0))
$netPanel.Name = [System.String]'netPanel'
$netPanel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]857,[System.Int32]619))
$netPanel.TabIndex = [System.Int32]2
#
#tableLayoutPanel2
#
$tableLayoutPanel2.ColumnCount = [System.Int32]2
$tableLayoutPanel2.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]50)))
$tableLayoutPanel2.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]50)))
$tableLayoutPanel2.Controls.Add($tableLayoutPanel3,[System.Int32]0,[System.Int32]0)
$tableLayoutPanel2.Dock = [System.Windows.Forms.DockStyle]::Fill
$tableLayoutPanel2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]0))
$tableLayoutPanel2.Name = [System.String]'tableLayoutPanel2'
$tableLayoutPanel2.RowCount = [System.Int32]1
$tableLayoutPanel2.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]100)))
$tableLayoutPanel2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]857,[System.Int32]619))
$tableLayoutPanel2.TabIndex = [System.Int32]0
#
#tableLayoutPanel3
#
$tableLayoutPanel3.ColumnCount = [System.Int32]3
$tableLayoutPanel3.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]10)))
$tableLayoutPanel3.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]80)))
$tableLayoutPanel3.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]10)))
$tableLayoutPanel3.Controls.Add($panel1,[System.Int32]1,[System.Int32]1)
$tableLayoutPanel3.Controls.Add($button1,[System.Int32]1,[System.Int32]2)
$tableLayoutPanel3.Dock = [System.Windows.Forms.DockStyle]::Fill
$tableLayoutPanel3.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]3))
$tableLayoutPanel3.Name = [System.String]'tableLayoutPanel3'
$tableLayoutPanel3.RowCount = [System.Int32]4
$tableLayoutPanel3.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]50)))
$tableLayoutPanel3.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Absolute,[System.Single]50)))
$tableLayoutPanel3.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Absolute,[System.Single]50)))
$tableLayoutPanel3.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]50)))
$tableLayoutPanel3.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]422,[System.Int32]613))
$tableLayoutPanel3.TabIndex = [System.Int32]0
#
#panel1
#
$panel1.BackColor = [System.Drawing.SystemColors]::Window
$panel1.Controls.Add($textBox1)
$panel1.Dock = [System.Windows.Forms.DockStyle]::Fill
$panel1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]45,[System.Int32]259))
$panel1.Name = [System.String]'panel1'
$panel1.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]10))
$panel1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]331,[System.Int32]44))
$panel1.TabIndex = [System.Int32]0
$panel1.add_Paint($panel1_Paint)
#
#textBox1
#
$textBox1.BorderStyle = [System.Windows.Forms.BorderStyle]::None
$textBox1.Dock = [System.Windows.Forms.DockStyle]::Fill
$textBox1.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Nirmala UI',[System.Single]14.25,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$textBox1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]10,[System.Int32]10))
$textBox1.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0))
$textBox1.Name = [System.String]'textBox1'
$textBox1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]311,[System.Int32]26))
$textBox1.TabIndex = [System.Int32]0
#
#button1
#
$button1.BackColor = [System.Drawing.Color]::Transparent
$button1.Dock = [System.Windows.Forms.DockStyle]::Fill
$button1.FlatAppearance.BorderSize = [System.Int32]2
$button1.FlatAppearance.MouseDownBackColor = [System.Drawing.Color]::Silver
$button1.FlatAppearance.MouseOverBackColor = [System.Drawing.Color]::Gainsboro
$button1.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$button1.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Nirmala UI',[System.Single]12,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$button1.ForeColor = [System.Drawing.Color]::RoyalBlue
$button1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]45,[System.Int32]309))
$button1.Name = [System.String]'button1'
$button1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]331,[System.Int32]44))
$button1.TabIndex = [System.Int32]1
$button1.Text = [System.String]'Add'
$button1.UseVisualStyleBackColor = $false
#
#rolePanel
#
$rolePanel.Controls.Add($label8)
$rolePanel.Dock = [System.Windows.Forms.DockStyle]::Fill
$rolePanel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]0))
$rolePanel.Name = [System.String]'rolePanel'
$rolePanel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]857,[System.Int32]619))
$rolePanel.TabIndex = [System.Int32]3
#
#label8
#
$label8.AutoSize = $true
$label8.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]1,[System.Int32]738))
$label8.Name = [System.String]'label8'
$label8.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]24,[System.Int32]13))
$label8.TabIndex = [System.Int32]0
$label8.Text = [System.String]'role'
#
#loginPanel
#
$loginPanel.ColumnCount = [System.Int32]2
$loginPanel.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]55)))
$loginPanel.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]45)))
$loginPanel.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Absolute,[System.Single]20)))
$loginPanel.Controls.Add($loginInfoTable,[System.Int32]1,[System.Int32]0)
$loginPanel.Controls.Add($tableLayoutPanel4,[System.Int32]0,[System.Int32]0)
$loginPanel.Dock = [System.Windows.Forms.DockStyle]::Fill
$loginPanel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]0))
$loginPanel.Name = [System.String]'loginPanel'
$loginPanel.RowCount = [System.Int32]1
$loginPanel.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]100)))
$loginPanel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1008,[System.Int32]729))
$loginPanel.TabIndex = [System.Int32]1
#
#loginInfoTable
#
$loginInfoTable.ColumnCount = [System.Int32]1
$loginInfoTable.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]100)))
$loginInfoTable.Controls.Add($usernameGroupBox,[System.Int32]0,[System.Int32]0)
$loginInfoTable.Controls.Add($domainGroupBox,[System.Int32]0,[System.Int32]1)
$loginInfoTable.Controls.Add($tokenNameGroupBox,[System.Int32]0,[System.Int32]2)
$loginInfoTable.Controls.Add($tokenGroupBox,[System.Int32]0,[System.Int32]3)
$loginInfoTable.Controls.Add($nodeGroupBox,[System.Int32]0,[System.Int32]4)
$loginInfoTable.Controls.Add($loginButton,[System.Int32]0,[System.Int32]5)
$loginInfoTable.Dock = [System.Windows.Forms.DockStyle]::Fill
$loginInfoTable.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]557,[System.Int32]3))
$loginInfoTable.Name = [System.String]'loginInfoTable'
$loginInfoTable.RowCount = [System.Int32]6
$loginInfoTable.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]20)))
$loginInfoTable.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]20)))
$loginInfoTable.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]20)))
$loginInfoTable.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]20)))
$loginInfoTable.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]20)))
$loginInfoTable.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Absolute,[System.Single]60)))
$loginInfoTable.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]448,[System.Int32]723))
$loginInfoTable.TabIndex = [System.Int32]1
#
#usernameGroupBox
#
$usernameGroupBox.BackColor = [System.Drawing.SystemColors]::Control
$usernameGroupBox.Controls.Add($panel6)
$usernameGroupBox.Dock = [System.Windows.Forms.DockStyle]::Fill
$usernameGroupBox.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$usernameGroupBox.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Nirmala UI',[System.Single]9.75,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$usernameGroupBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]15,[System.Int32]15))
$usernameGroupBox.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]15))
$usernameGroupBox.Name = [System.String]'usernameGroupBox'
$usernameGroupBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]418,[System.Int32]102))
$usernameGroupBox.TabIndex = [System.Int32]0
$usernameGroupBox.TabStop = $false
$usernameGroupBox.Text = [System.String]'Username'
#
#panel6
#
$panel6.BackColor = [System.Drawing.SystemColors]::ControlLightLight
$panel6.Controls.Add($usernameTextBox)
$panel6.Dock = [System.Windows.Forms.DockStyle]::Fill
$panel6.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]21))
$panel6.Name = [System.String]'panel6'
$panel6.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]412,[System.Int32]78))
$panel6.TabIndex = [System.Int32]0
#
#usernameTextBox
#
$usernameTextBox.BackColor = [System.Drawing.SystemColors]::InactiveBorder
$usernameTextBox.BorderStyle = [System.Windows.Forms.BorderStyle]::None
$usernameTextBox.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]12,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$usernameTextBox.ForeColor = [System.Drawing.SystemColors]::GrayText
$usernameTextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]18,[System.Int32]29))
$usernameTextBox.Name = [System.String]'usernameTextBox'
$usernameTextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]376,[System.Int32]19))
$usernameTextBox.TabIndex = [System.Int32]0
$usernameTextBox.add_Enter($usernameTextBox_Entry)
$usernameTextBox.add_Leave($usernameTextBox_Leave)
#
#domainGroupBox
#
$domainGroupBox.BackColor = [System.Drawing.SystemColors]::Control
$domainGroupBox.Controls.Add($panel2)
$domainGroupBox.Dock = [System.Windows.Forms.DockStyle]::Fill
$domainGroupBox.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$domainGroupBox.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Nirmala UI',[System.Single]9.75,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$domainGroupBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]15,[System.Int32]147))
$domainGroupBox.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]15))
$domainGroupBox.Name = [System.String]'domainGroupBox'
$domainGroupBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]418,[System.Int32]102))
$domainGroupBox.TabIndex = [System.Int32]1
$domainGroupBox.TabStop = $false
$domainGroupBox.Text = [System.String]'Domain'
#
#panel2
#
$panel2.BackColor = [System.Drawing.SystemColors]::ControlLightLight
$panel2.Controls.Add($domainTextBox)
$panel2.Dock = [System.Windows.Forms.DockStyle]::Fill
$panel2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]21))
$panel2.Name = [System.String]'panel2'
$panel2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]412,[System.Int32]78))
$panel2.TabIndex = [System.Int32]0
#
#domainTextBox
#
$domainTextBox.BackColor = [System.Drawing.SystemColors]::InactiveBorder
$domainTextBox.BorderStyle = [System.Windows.Forms.BorderStyle]::None
$domainTextBox.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]12,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$domainTextBox.ForeColor = [System.Drawing.SystemColors]::GrayText
$domainTextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]18,[System.Int32]29))
$domainTextBox.Name = [System.String]'domainTextBox'
$domainTextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]376,[System.Int32]19))
$domainTextBox.TabIndex = [System.Int32]0
$domainTextBox.add_MouseDown($domainTextBox_MouseDown)
#
#tokenNameGroupBox
#
$tokenNameGroupBox.BackColor = [System.Drawing.SystemColors]::Control
$tokenNameGroupBox.Controls.Add($panel3)
$tokenNameGroupBox.Dock = [System.Windows.Forms.DockStyle]::Fill
$tokenNameGroupBox.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$tokenNameGroupBox.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Nirmala UI',[System.Single]9.75,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$tokenNameGroupBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]15,[System.Int32]279))
$tokenNameGroupBox.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]15))
$tokenNameGroupBox.Name = [System.String]'tokenNameGroupBox'
$tokenNameGroupBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]418,[System.Int32]102))
$tokenNameGroupBox.TabIndex = [System.Int32]2
$tokenNameGroupBox.TabStop = $false
$tokenNameGroupBox.Text = [System.String]'API Token Name'
#
#panel3
#
$panel3.BackColor = [System.Drawing.SystemColors]::ControlLightLight
$panel3.Controls.Add($tokenNameTextBox)
$panel3.Dock = [System.Windows.Forms.DockStyle]::Fill
$panel3.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]21))
$panel3.Name = [System.String]'panel3'
$panel3.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]412,[System.Int32]78))
$panel3.TabIndex = [System.Int32]0
#
#tokenNameTextBox
#
$tokenNameTextBox.BackColor = [System.Drawing.SystemColors]::InactiveBorder
$tokenNameTextBox.BorderStyle = [System.Windows.Forms.BorderStyle]::None
$tokenNameTextBox.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]12,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$tokenNameTextBox.ForeColor = [System.Drawing.SystemColors]::GrayText
$tokenNameTextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]18,[System.Int32]29))
$tokenNameTextBox.Name = [System.String]'tokenNameTextBox'
$tokenNameTextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]376,[System.Int32]19))
$tokenNameTextBox.TabIndex = [System.Int32]0
#
#tokenGroupBox
#
$tokenGroupBox.BackColor = [System.Drawing.SystemColors]::Control
$tokenGroupBox.Controls.Add($panel4)
$tokenGroupBox.Dock = [System.Windows.Forms.DockStyle]::Fill
$tokenGroupBox.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$tokenGroupBox.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Nirmala UI',[System.Single]9.75,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$tokenGroupBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]15,[System.Int32]411))
$tokenGroupBox.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]15))
$tokenGroupBox.Name = [System.String]'tokenGroupBox'
$tokenGroupBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]418,[System.Int32]102))
$tokenGroupBox.TabIndex = [System.Int32]3
$tokenGroupBox.TabStop = $false
$tokenGroupBox.Text = [System.String]'API Token Value'
#
#panel4
#
$panel4.BackColor = [System.Drawing.SystemColors]::ControlLightLight
$panel4.Controls.Add($tokenValueTextBox)
$panel4.Dock = [System.Windows.Forms.DockStyle]::Fill
$panel4.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]21))
$panel4.Name = [System.String]'panel4'
$panel4.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]412,[System.Int32]78))
$panel4.TabIndex = [System.Int32]0
#
#tokenValueTextBox
#
$tokenValueTextBox.BackColor = [System.Drawing.SystemColors]::InactiveBorder
$tokenValueTextBox.BorderStyle = [System.Windows.Forms.BorderStyle]::None
$tokenValueTextBox.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]12,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$tokenValueTextBox.ForeColor = [System.Drawing.SystemColors]::GrayText
$tokenValueTextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]18,[System.Int32]29))
$tokenValueTextBox.Name = [System.String]'tokenValueTextBox'
$tokenValueTextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]376,[System.Int32]19))
$tokenValueTextBox.TabIndex = [System.Int32]0
#
#nodeGroupBox
#
$nodeGroupBox.BackColor = [System.Drawing.SystemColors]::Control
$nodeGroupBox.Controls.Add($panel5)
$nodeGroupBox.Dock = [System.Windows.Forms.DockStyle]::Fill
$nodeGroupBox.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$nodeGroupBox.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Nirmala UI',[System.Single]9.75,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$nodeGroupBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]15,[System.Int32]543))
$nodeGroupBox.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]15))
$nodeGroupBox.Name = [System.String]'nodeGroupBox'
$nodeGroupBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]418,[System.Int32]102))
$nodeGroupBox.TabIndex = [System.Int32]4
$nodeGroupBox.TabStop = $false
$nodeGroupBox.Text = [System.String]'Node'
#
#panel5
#
$panel5.BackColor = [System.Drawing.SystemColors]::ControlLightLight
$panel5.Controls.Add($nodeTextBox)
$panel5.Dock = [System.Windows.Forms.DockStyle]::Fill
$panel5.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]21))
$panel5.Name = [System.String]'panel5'
$panel5.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]412,[System.Int32]78))
$panel5.TabIndex = [System.Int32]0
#
#nodeTextBox
#
$nodeTextBox.BackColor = [System.Drawing.SystemColors]::InactiveBorder
$nodeTextBox.BorderStyle = [System.Windows.Forms.BorderStyle]::None
$nodeTextBox.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]12,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$nodeTextBox.ForeColor = [System.Drawing.SystemColors]::GrayText
$nodeTextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]18,[System.Int32]29))
$nodeTextBox.Name = [System.String]'nodeTextBox'
$nodeTextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]376,[System.Int32]19))
$nodeTextBox.TabIndex = [System.Int32]0
#
#loginButton
#
$loginButton.BackColor = [System.Drawing.Color]::LightSteelBlue
$loginButton.Dock = [System.Windows.Forms.DockStyle]::Fill
$loginButton.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$loginButton.ForeColor = [System.Drawing.SystemColors]::ControlText
$loginButton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]15,[System.Int32]675))
$loginButton.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]15))
$loginButton.Name = [System.String]'loginButton'
$loginButton.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]418,[System.Int32]33))
$loginButton.TabIndex = [System.Int32]5
$loginButton.Text = [System.String]'Login'
$loginButton.UseVisualStyleBackColor = $false
$loginButton.add_Click($LoginButton_Click)
#
#tableLayoutPanel4
#
$tableLayoutPanel4.ColumnCount = [System.Int32]1
$tableLayoutPanel4.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]100)))
$tableLayoutPanel4.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Absolute,[System.Single]20)))
$tableLayoutPanel4.Controls.Add($label1,[System.Int32]0,[System.Int32]1)
$tableLayoutPanel4.Dock = [System.Windows.Forms.DockStyle]::Fill
$tableLayoutPanel4.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]3))
$tableLayoutPanel4.Name = [System.String]'tableLayoutPanel4'
$tableLayoutPanel4.RowCount = [System.Int32]3
$tableLayoutPanel4.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]33.33333)))
$tableLayoutPanel4.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]33.33333)))
$tableLayoutPanel4.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]33.33333)))
$tableLayoutPanel4.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]548,[System.Int32]723))
$tableLayoutPanel4.TabIndex = [System.Int32]0
#
#label1
#
$label1.AutoSize = $true
$label1.Dock = [System.Windows.Forms.DockStyle]::Fill
$label1.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Nirmala UI',[System.Single]39.75,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$label1.ForeColor = [System.Drawing.Color]::RoyalBlue
$label1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]241))
$label1.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0))
$label1.Name = [System.String]'label1'
$label1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]548,[System.Int32]241))
$label1.TabIndex = [System.Int32]0
$label1.Text = [System.String]'Welcome!'
$label1.TextAlign = [System.Drawing.ContentAlignment]::MiddleCenter
#
#WarriorRange
#
$WarriorRange.AutoScaleDimensions = (New-Object -TypeName System.Drawing.SizeF -ArgumentList @([System.Single]96,[System.Single]96))
$WarriorRange.AutoScaleMode = [System.Windows.Forms.AutoScaleMode]::Dpi
$WarriorRange.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1008,[System.Int32]729))
$WarriorRange.Controls.Add($main)
$WarriorRange.Controls.Add($loginPanel)
$WarriorRange.Icon = ([System.Drawing.Icon]$resources.'$this.Icon')
$WarriorRange.MinimumSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]760,[System.Int32]350))
$WarriorRange.Name = [System.String]'WarriorRange'
$WarriorRange.Text = [System.String]'Warrior Range'
$main.ResumeLayout($false)
$configurationTable.ResumeLayout($false)
$sidePanel.ResumeLayout($false)
$sidePanel.PerformLayout()
$buttonPanel.ResumeLayout($false)
$informationPanel.ResumeLayout($false)
$rosterPanel.ResumeLayout($false)
$tableLayoutPanel1.ResumeLayout($false)
$tableLayoutPanel5.ResumeLayout($false)
$groupBox1.ResumeLayout($false)
$groupBox1.PerformLayout()
$tableLayoutPanel6.ResumeLayout($false)
$envPanel.ResumeLayout($false)
$envPanel.PerformLayout()
$tableLayoutPanel7.ResumeLayout($false)
$tableLayoutPanel8.ResumeLayout($false)
$tableLayoutPanel14.ResumeLayout($false)
$groupBox2.ResumeLayout($false)
$groupBox2.PerformLayout()
$tableLayoutPanel9.ResumeLayout($false)
$envConfigGroupBox.ResumeLayout($false)
$tableLayoutPanel10.ResumeLayout($false)
$tableLayoutPanel13.ResumeLayout($false)
$tableLayoutPanel13.PerformLayout()
$tableLayoutPanel12.ResumeLayout($false)
$tableLayoutPanel12.PerformLayout()
$tableLayoutPanel11.ResumeLayout($false)
$tableLayoutPanel11.PerformLayout()
$netPanel.ResumeLayout($false)
$tableLayoutPanel2.ResumeLayout($false)
$tableLayoutPanel3.ResumeLayout($false)
$panel1.ResumeLayout($false)
$panel1.PerformLayout()
$rolePanel.ResumeLayout($false)
$rolePanel.PerformLayout()
$loginPanel.ResumeLayout($false)
$loginInfoTable.ResumeLayout($false)
$usernameGroupBox.ResumeLayout($false)
$panel6.ResumeLayout($false)
$panel6.PerformLayout()
$domainGroupBox.ResumeLayout($false)
$panel2.ResumeLayout($false)
$panel2.PerformLayout()
$tokenNameGroupBox.ResumeLayout($false)
$panel3.ResumeLayout($false)
$panel3.PerformLayout()
$tokenGroupBox.ResumeLayout($false)
$panel4.ResumeLayout($false)
$panel4.PerformLayout()
$nodeGroupBox.ResumeLayout($false)
$panel5.ResumeLayout($false)
$panel5.PerformLayout()
$tableLayoutPanel4.ResumeLayout($false)
$tableLayoutPanel4.PerformLayout()
$WarriorRange.ResumeLayout($false)
Add-Member -InputObject $WarriorRange -Name saveButton -Value $saveButton -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name nextButton -Value $nextButton -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name backButton -Value $backButton -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name columnHeader1 -Value $columnHeader1 -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name columnHeader2 -Value $columnHeader2 -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name sidePanel -Value $sidePanel -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name buttonPanel -Value $buttonPanel -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name saveAndConfigureButton -Value $saveAndConfigureButton -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name informationPanel -Value $informationPanel -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name rolePanel -Value $rolePanel -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name netPanel -Value $netPanel -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name rosterPanel -Value $rosterPanel -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name envPanel -Value $envPanel -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name label5 -Value $label5 -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name label8 -Value $label8 -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name rosterLabel -Value $rosterLabel -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name roleLabel -Value $roleLabel -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name netLabel -Value $netLabel -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name envLabel -Value $envLabel -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name tableLayoutPanel1 -Value $tableLayoutPanel1 -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name tableLayoutPanel2 -Value $tableLayoutPanel2 -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name tableLayoutPanel3 -Value $tableLayoutPanel3 -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name panel1 -Value $panel1 -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name textBox1 -Value $textBox1 -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name button1 -Value $button1 -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name loginPanel -Value $loginPanel -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name loginInfoTable -Value $loginInfoTable -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name loginButton -Value $loginButton -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name tableLayoutPanel4 -Value $tableLayoutPanel4 -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name label1 -Value $label1 -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name domainGroupBox -Value $domainGroupBox -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name panel2 -Value $panel2 -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name nodeGroupBox -Value $nodeGroupBox -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name panel5 -Value $panel5 -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name tokenGroupBox -Value $tokenGroupBox -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name panel4 -Value $panel4 -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name tokenNameGroupBox -Value $tokenNameGroupBox -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name panel3 -Value $panel3 -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name domainTextBox -Value $domainTextBox -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name panel6 -Value $panel6 -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name usernameTextBox -Value $usernameTextBox -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name main -Value $main -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name configurationTable -Value $configurationTable -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name nodeTextBox -Value $nodeTextBox -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name tokenValueTextBox -Value $tokenValueTextBox -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name tokenNameTextBox -Value $tokenNameTextBox -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name tableLayoutPanel5 -Value $tableLayoutPanel5 -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name tableLayoutPanel6 -Value $tableLayoutPanel6 -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name rosterAddButton -Value $rosterAddButton -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name groupBox1 -Value $groupBox1 -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name rosterCheckedListBox -Value $rosterCheckedListBox -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name tableLayoutPanel7 -Value $tableLayoutPanel7 -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name tableLayoutPanel8 -Value $tableLayoutPanel8 -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name rosterFilterTextBox -Value $rosterFilterTextBox -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name tableLayoutPanel9 -Value $tableLayoutPanel9 -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name envImportTreeView -Value $envImportTreeView -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name tableLayoutPanel10 -Value $tableLayoutPanel10 -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name envConfigGroupBox -Value $envConfigGroupBox -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name tableLayoutPanel13 -Value $tableLayoutPanel13 -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name label4 -Value $label4 -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name tableLayoutPanel12 -Value $tableLayoutPanel12 -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name label3 -Value $label3 -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name tableLayoutPanel11 -Value $tableLayoutPanel11 -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name label2 -Value $label2 -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name envNameTextBox -Value $envNameTextBox -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name envMemDropDown -Value $envMemDropDown -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name envProcDropDown -Value $envProcDropDown -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name envSelectButton -Value $envSelectButton -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name envAddButton -Value $envAddButton -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name nameCol -Value $nameCol -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name vmCol -Value $vmCol -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name cpuCol -Value $cpuCol -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name ramCol -Value $ramCol -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name envSummaryListView -Value $envSummaryListView -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name tableLayoutPanel14 -Value $tableLayoutPanel14 -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name groupBox2 -Value $groupBox2 -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name textBox2 -Value $textBox2 -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name rosterFinalListBox -Value $rosterFinalListBox -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name usernameGroupBox -Value $usernameGroupBox -MemberType NoteProperty
}
. InitializeComponent
