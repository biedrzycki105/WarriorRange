[void][System.Reflection.Assembly]::Load('System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
[void][System.Reflection.Assembly]::Load('System.Windows.Forms, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
$WarriorRange = New-Object -TypeName System.Windows.Forms.Form
[System.Windows.Forms.Button]$saveButton = $null
[System.Windows.Forms.Button]$nextButton = $null
[System.Windows.Forms.Button]$backButton = $null
[System.Windows.Forms.TableLayoutPanel]$Header_Body = $null
[System.Windows.Forms.TableLayoutPanel]$Body = $null
[System.Windows.Forms.ColumnHeader]$columnHeader1 = $null
[System.Windows.Forms.ColumnHeader]$columnHeader2 = $null
[System.Windows.Forms.TableLayoutPanel]$sidePanel = $null
[System.Windows.Forms.FlowLayoutPanel]$buttonPanel = $null
[System.Windows.Forms.Button]$saveAndConfigureButton = $null
[System.Windows.Forms.Panel]$savePanel = $null
[System.Windows.Forms.Panel]$nextPanel = $null
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
[System.Windows.Forms.Panel]$saveConfigurePanel = $null
[System.Windows.Forms.TableLayoutPanel]$tableLayoutPanel1 = $null
[System.Windows.Forms.ListBox]$rosterBoxLeft = $null
[System.Windows.Forms.ListBox]$rosterBoxRight = $null
[System.Windows.Forms.TableLayoutPanel]$tableLayoutPanel2 = $null
[System.Windows.Forms.TableLayoutPanel]$tableLayoutPanel3 = $null
[System.Windows.Forms.Panel]$panel1 = $null
[System.Windows.Forms.TextBox]$textBox1 = $null
[System.Windows.Forms.Button]$button1 = $null
[System.Windows.Forms.TableLayoutPanel]$loginPanel = $null
[System.Windows.Forms.TableLayoutPanel]$tableLayoutPanel4 = $null
[System.Windows.Forms.Label]$label1 = $null
[System.Windows.Forms.TableLayoutPanel]$tableLayoutPanel5 = $null
[System.Windows.Forms.Button]$loginButton = $null
[System.Windows.Forms.TableLayoutPanel]$tableLayoutPanel7 = $null
[System.Windows.Forms.TableLayoutPanel]$tableLayoutPanel6 = $null
[System.Windows.Forms.TextBox]$passTextBox = $null
[System.Windows.Forms.TextBox]$userTextBox = $null
[System.Windows.Forms.Panel]$backPanel = $null

function InitializeComponent
{
$resources = . (Join-Path $PSScriptRoot 'testUI.resources.ps1')
$Header_Body = (New-Object -TypeName System.Windows.Forms.TableLayoutPanel)
$Body = (New-Object -TypeName System.Windows.Forms.TableLayoutPanel)
$sidePanel = (New-Object -TypeName System.Windows.Forms.TableLayoutPanel)
$roleLabel = (New-Object -TypeName System.Windows.Forms.Label)
$netLabel = (New-Object -TypeName System.Windows.Forms.Label)
$envLabel = (New-Object -TypeName System.Windows.Forms.Label)
$rosterLabel = (New-Object -TypeName System.Windows.Forms.Label)
$buttonPanel = (New-Object -TypeName System.Windows.Forms.FlowLayoutPanel)
$saveConfigurePanel = (New-Object -TypeName System.Windows.Forms.Panel)
$saveAndConfigureButton = (New-Object -TypeName System.Windows.Forms.Button)
$savePanel = (New-Object -TypeName System.Windows.Forms.Panel)
$saveButton = (New-Object -TypeName System.Windows.Forms.Button)
$nextPanel = (New-Object -TypeName System.Windows.Forms.Panel)
$nextButton = (New-Object -TypeName System.Windows.Forms.Button)
$backPanel = (New-Object -TypeName System.Windows.Forms.Panel)
$backButton = (New-Object -TypeName System.Windows.Forms.Button)
$informationPanel = (New-Object -TypeName System.Windows.Forms.Panel)
$netPanel = (New-Object -TypeName System.Windows.Forms.Panel)
$tableLayoutPanel2 = (New-Object -TypeName System.Windows.Forms.TableLayoutPanel)
$tableLayoutPanel3 = (New-Object -TypeName System.Windows.Forms.TableLayoutPanel)
$panel1 = (New-Object -TypeName System.Windows.Forms.Panel)
$textBox1 = (New-Object -TypeName System.Windows.Forms.TextBox)
$button1 = (New-Object -TypeName System.Windows.Forms.Button)
$rosterPanel = (New-Object -TypeName System.Windows.Forms.Panel)
$tableLayoutPanel1 = (New-Object -TypeName System.Windows.Forms.TableLayoutPanel)
$rosterBoxLeft = (New-Object -TypeName System.Windows.Forms.ListBox)
$rosterBoxRight = (New-Object -TypeName System.Windows.Forms.ListBox)
$rolePanel = (New-Object -TypeName System.Windows.Forms.Panel)
$label8 = (New-Object -TypeName System.Windows.Forms.Label)
$envPanel = (New-Object -TypeName System.Windows.Forms.Panel)
$label5 = (New-Object -TypeName System.Windows.Forms.Label)
$columnHeader1 = (New-Object -TypeName System.Windows.Forms.ColumnHeader)
$columnHeader2 = (New-Object -TypeName System.Windows.Forms.ColumnHeader)
$loginPanel = (New-Object -TypeName System.Windows.Forms.TableLayoutPanel)
$tableLayoutPanel4 = (New-Object -TypeName System.Windows.Forms.TableLayoutPanel)
$label1 = (New-Object -TypeName System.Windows.Forms.Label)
$tableLayoutPanel5 = (New-Object -TypeName System.Windows.Forms.TableLayoutPanel)
$loginButton = (New-Object -TypeName System.Windows.Forms.Button)
$tableLayoutPanel6 = (New-Object -TypeName System.Windows.Forms.TableLayoutPanel)
$tableLayoutPanel7 = (New-Object -TypeName System.Windows.Forms.TableLayoutPanel)
$userTextBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$passTextBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$Header_Body.SuspendLayout()
$Body.SuspendLayout()
$sidePanel.SuspendLayout()
$buttonPanel.SuspendLayout()
$saveConfigurePanel.SuspendLayout()
$savePanel.SuspendLayout()
$nextPanel.SuspendLayout()
$backPanel.SuspendLayout()
$informationPanel.SuspendLayout()
$netPanel.SuspendLayout()
$tableLayoutPanel2.SuspendLayout()
$tableLayoutPanel3.SuspendLayout()
$panel1.SuspendLayout()
$rosterPanel.SuspendLayout()
$tableLayoutPanel1.SuspendLayout()
$rolePanel.SuspendLayout()
$envPanel.SuspendLayout()
$loginPanel.SuspendLayout()
$tableLayoutPanel4.SuspendLayout()
$tableLayoutPanel5.SuspendLayout()
$tableLayoutPanel6.SuspendLayout()
$tableLayoutPanel7.SuspendLayout()
$WarriorRange.SuspendLayout()
#
#Header_Body
#
$Header_Body.ColumnCount = [System.Int32]1
$Header_Body.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]100)))
$Header_Body.Controls.Add($Body,[System.Int32]0,[System.Int32]1)
$Header_Body.Dock = [System.Windows.Forms.DockStyle]::Fill
$Header_Body.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]0))
$Header_Body.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0))
$Header_Body.Name = [System.String]'Header_Body'
$Header_Body.RowCount = [System.Int32]2
$Header_Body.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Absolute,[System.Single]45)))
$Header_Body.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]100)))
$Header_Body.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1008,[System.Int32]729))
$Header_Body.TabIndex = [System.Int32]0
#
#Body
#
$Body.ColumnCount = [System.Int32]2
$Body.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]15)))
$Body.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]85)))
$Body.Controls.Add($sidePanel,[System.Int32]0,[System.Int32]0)
$Body.Controls.Add($buttonPanel,[System.Int32]0,[System.Int32]1)
$Body.Controls.Add($informationPanel,[System.Int32]1,[System.Int32]0)
$Body.Dock = [System.Windows.Forms.DockStyle]::Fill
$Body.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]45))
$Body.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0))
$Body.Name = [System.String]'Body'
$Body.RowCount = [System.Int32]2
$Body.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]100)))
$Body.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Absolute,[System.Single]45)))
$Body.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Absolute,[System.Single]20)))
$Body.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1008,[System.Int32]684))
$Body.TabIndex = [System.Int32]2
$Body.add_Paint($Body_Paint)
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
$sidePanel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]151,[System.Int32]639))
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
$Body.SetColumnSpan($buttonPanel,[System.Int32]2)
$buttonPanel.Controls.Add($saveConfigurePanel)
$buttonPanel.Controls.Add($savePanel)
$buttonPanel.Controls.Add($nextPanel)
$buttonPanel.Controls.Add($backPanel)
$buttonPanel.Dock = [System.Windows.Forms.DockStyle]::Fill
$buttonPanel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]639))
$buttonPanel.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0))
$buttonPanel.Name = [System.String]'buttonPanel'
$buttonPanel.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0,[System.Int32]0,[System.Int32]5,[System.Int32]0))
$buttonPanel.RightToLeft = [System.Windows.Forms.RightToLeft]::Yes
$buttonPanel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1008,[System.Int32]45))
$buttonPanel.TabIndex = [System.Int32]2
#
#saveConfigurePanel
#
$saveConfigurePanel.BackColor = [System.Drawing.Color]::RoyalBlue
$saveConfigurePanel.Controls.Add($saveAndConfigureButton)
$saveConfigurePanel.Dock = [System.Windows.Forms.DockStyle]::Bottom
$saveConfigurePanel.ForeColor = [System.Drawing.SystemColors]::ButtonHighlight
$saveConfigurePanel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]850,[System.Int32]3))
$saveConfigurePanel.Name = [System.String]'saveConfigurePanel'
$saveConfigurePanel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]150,[System.Int32]32))
$saveConfigurePanel.TabIndex = [System.Int32]6
#
#saveAndConfigureButton
#
$saveAndConfigureButton.AutoSize = $true
$saveAndConfigureButton.AutoSizeMode = [System.Windows.Forms.AutoSizeMode]::GrowAndShrink
$saveAndConfigureButton.BackColor = [System.Drawing.Color]::LightSlateGray
$saveAndConfigureButton.Dock = [System.Windows.Forms.DockStyle]::Fill
$saveAndConfigureButton.Enabled = $false
$saveAndConfigureButton.FlatAppearance.BorderColor = [System.Drawing.Color]::LightSlateGray
$saveAndConfigureButton.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$saveAndConfigureButton.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Nirmala UI',[System.Single]9.75,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$saveAndConfigureButton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]0))
$saveAndConfigureButton.Name = [System.String]'saveAndConfigureButton'
$saveAndConfigureButton.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]150,[System.Int32]32))
$saveAndConfigureButton.TabIndex = [System.Int32]0
$saveAndConfigureButton.Text = [System.String]'Save and Configure'
$saveAndConfigureButton.UseVisualStyleBackColor = $false
#
#savePanel
#
$savePanel.Controls.Add($saveButton)
$savePanel.Dock = [System.Windows.Forms.DockStyle]::Bottom
$savePanel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]754,[System.Int32]3))
$savePanel.Name = [System.String]'savePanel'
$savePanel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]90,[System.Int32]32))
$savePanel.TabIndex = [System.Int32]5
#
#saveButton
#
$saveButton.BackColor = [System.Drawing.Color]::LightSlateGray
$saveButton.Dock = [System.Windows.Forms.DockStyle]::Fill
$saveButton.Enabled = $false
$saveButton.FlatAppearance.BorderColor = [System.Drawing.Color]::LightSlateGray
$saveButton.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$saveButton.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Nirmala UI',[System.Single]9.75,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$saveButton.ForeColor = [System.Drawing.SystemColors]::ButtonHighlight
$saveButton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]0))
$saveButton.Name = [System.String]'saveButton'
$saveButton.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]90,[System.Int32]32))
$saveButton.TabIndex = [System.Int32]1
$saveButton.Text = [System.String]'Save'
$saveButton.UseVisualStyleBackColor = $false
#
#nextPanel
#
$nextPanel.Controls.Add($nextButton)
$nextPanel.Dock = [System.Windows.Forms.DockStyle]::Bottom
$nextPanel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]658,[System.Int32]3))
$nextPanel.Name = [System.String]'nextPanel'
$nextPanel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]90,[System.Int32]32))
$nextPanel.TabIndex = [System.Int32]4
#
#nextButton
#
$nextButton.BackColor = [System.Drawing.Color]::RoyalBlue
$nextButton.Cursor = [System.Windows.Forms.Cursors]::Hand
$nextButton.Dock = [System.Windows.Forms.DockStyle]::Fill
$nextButton.FlatAppearance.BorderColor = [System.Drawing.Color]::RoyalBlue
$nextButton.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$nextButton.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Nirmala UI',[System.Single]9.75,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$nextButton.ForeColor = [System.Drawing.SystemColors]::ButtonHighlight
$nextButton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]0))
$nextButton.Name = [System.String]'nextButton'
$nextButton.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]90,[System.Int32]32))
$nextButton.TabIndex = [System.Int32]2
$nextButton.Text = [System.String]'Next'
$nextButton.UseVisualStyleBackColor = $false
$nextButton.add_Click($nextButton_Click)
#
#backPanel
#
$backPanel.Controls.Add($backButton)
$backPanel.Dock = [System.Windows.Forms.DockStyle]::Bottom
$backPanel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]562,[System.Int32]3))
$backPanel.Name = [System.String]'backPanel'
$backPanel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]90,[System.Int32]32))
$backPanel.TabIndex = [System.Int32]3
#
#backButton
#
$backButton.BackColor = [System.Drawing.Color]::RoyalBlue
$backButton.Cursor = [System.Windows.Forms.Cursors]::Hand
$backButton.Dock = [System.Windows.Forms.DockStyle]::Fill
$backButton.FlatAppearance.BorderColor = [System.Drawing.Color]::RoyalBlue
$backButton.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$backButton.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Nirmala UI',[System.Single]10,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$backButton.ForeColor = [System.Drawing.SystemColors]::ButtonHighlight
$backButton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]0))
$backButton.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0))
$backButton.Name = [System.String]'backButton'
$backButton.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]90,[System.Int32]32))
$backButton.TabIndex = [System.Int32]4
$backButton.Text = [System.String]'Back'
$backButton.UseVisualStyleBackColor = $false
$backButton.add_Click($backButton_Click)
#
#informationPanel
#
$informationPanel.Controls.Add($netPanel)
$informationPanel.Controls.Add($rosterPanel)
$informationPanel.Controls.Add($rolePanel)
$informationPanel.Controls.Add($envPanel)
$informationPanel.Dock = [System.Windows.Forms.DockStyle]::Fill
$informationPanel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]151,[System.Int32]0))
$informationPanel.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0))
$informationPanel.Name = [System.String]'informationPanel'
$informationPanel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]857,[System.Int32]639))
$informationPanel.TabIndex = [System.Int32]3
#
#netPanel
#
$netPanel.Controls.Add($tableLayoutPanel2)
$netPanel.Dock = [System.Windows.Forms.DockStyle]::Fill
$netPanel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]0))
$netPanel.Name = [System.String]'netPanel'
$netPanel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]857,[System.Int32]639))
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
$tableLayoutPanel2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]857,[System.Int32]639))
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
$tableLayoutPanel3.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]422,[System.Int32]633))
$tableLayoutPanel3.TabIndex = [System.Int32]0
#
#panel1
#
$panel1.BackColor = [System.Drawing.SystemColors]::Window
$panel1.Controls.Add($textBox1)
$panel1.Dock = [System.Windows.Forms.DockStyle]::Fill
$panel1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]45,[System.Int32]269))
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
$button1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]45,[System.Int32]319))
$button1.Name = [System.String]'button1'
$button1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]331,[System.Int32]44))
$button1.TabIndex = [System.Int32]1
$button1.Text = [System.String]'Add'
$button1.UseVisualStyleBackColor = $false
#
#rosterPanel
#
$rosterPanel.Controls.Add($tableLayoutPanel1)
$rosterPanel.Dock = [System.Windows.Forms.DockStyle]::Fill
$rosterPanel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]0))
$rosterPanel.Name = [System.String]'rosterPanel'
$rosterPanel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]857,[System.Int32]639))
$rosterPanel.TabIndex = [System.Int32]1
#
#tableLayoutPanel1
#
$tableLayoutPanel1.ColumnCount = [System.Int32]3
$tableLayoutPanel1.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]50)))
$tableLayoutPanel1.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Absolute,[System.Single]100)))
$tableLayoutPanel1.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]50)))
$tableLayoutPanel1.Controls.Add($rosterBoxLeft,[System.Int32]0,[System.Int32]1)
$tableLayoutPanel1.Controls.Add($rosterBoxRight,[System.Int32]2,[System.Int32]1)
$tableLayoutPanel1.Dock = [System.Windows.Forms.DockStyle]::Fill
$tableLayoutPanel1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]0))
$tableLayoutPanel1.Name = [System.String]'tableLayoutPanel1'
$tableLayoutPanel1.RowCount = [System.Int32]3
$tableLayoutPanel1.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]10)))
$tableLayoutPanel1.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]80)))
$tableLayoutPanel1.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]10)))
$tableLayoutPanel1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]857,[System.Int32]639))
$tableLayoutPanel1.TabIndex = [System.Int32]1
#
#rosterBoxLeft
#
$rosterBoxLeft.Dock = [System.Windows.Forms.DockStyle]::Fill
$rosterBoxLeft.FormattingEnabled = $true
$rosterBoxLeft.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]10,[System.Int32]66))
$rosterBoxLeft.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]10,[System.Int32]3,[System.Int32]10,[System.Int32]3))
$rosterBoxLeft.Name = [System.String]'rosterBoxLeft'
$rosterBoxLeft.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]358,[System.Int32]505))
$rosterBoxLeft.TabIndex = [System.Int32]0
#
#rosterBoxRight
#
$rosterBoxRight.Dock = [System.Windows.Forms.DockStyle]::Fill
$rosterBoxRight.FormattingEnabled = $true
$rosterBoxRight.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]488,[System.Int32]66))
$rosterBoxRight.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]10,[System.Int32]3,[System.Int32]10,[System.Int32]3))
$rosterBoxRight.Name = [System.String]'rosterBoxRight'
$rosterBoxRight.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]359,[System.Int32]505))
$rosterBoxRight.TabIndex = [System.Int32]1
#
#rolePanel
#
$rolePanel.Controls.Add($label8)
$rolePanel.Dock = [System.Windows.Forms.DockStyle]::Fill
$rolePanel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]0))
$rolePanel.Name = [System.String]'rolePanel'
$rolePanel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]857,[System.Int32]639))
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
#envPanel
#
$envPanel.Controls.Add($label5)
$envPanel.Dock = [System.Windows.Forms.DockStyle]::Fill
$envPanel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]0))
$envPanel.Name = [System.String]'envPanel'
$envPanel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]857,[System.Int32]639))
$envPanel.TabIndex = [System.Int32]0
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
#loginPanel
#
$loginPanel.ColumnCount = [System.Int32]3
$loginPanel.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]35)))
$loginPanel.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]30)))
$loginPanel.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]35)))
$loginPanel.Controls.Add($tableLayoutPanel4,[System.Int32]1,[System.Int32]0)
$loginPanel.Controls.Add($tableLayoutPanel5,[System.Int32]1,[System.Int32]1)
$loginPanel.Dock = [System.Windows.Forms.DockStyle]::Fill
$loginPanel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]0))
$loginPanel.Name = [System.String]'loginPanel'
$loginPanel.RowCount = [System.Int32]3
$loginPanel.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]50)))
$loginPanel.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Absolute,[System.Single]200)))
$loginPanel.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]50)))
$loginPanel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1008,[System.Int32]729))
$loginPanel.TabIndex = [System.Int32]1
#
#tableLayoutPanel4
#
$tableLayoutPanel4.ColumnCount = [System.Int32]1
$tableLayoutPanel4.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]100)))
$tableLayoutPanel4.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Absolute,[System.Single]20)))
$tableLayoutPanel4.Controls.Add($label1,[System.Int32]0,[System.Int32]1)
$tableLayoutPanel4.Dock = [System.Windows.Forms.DockStyle]::Fill
$tableLayoutPanel4.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]355,[System.Int32]3))
$tableLayoutPanel4.Name = [System.String]'tableLayoutPanel4'
$tableLayoutPanel4.RowCount = [System.Int32]3
$tableLayoutPanel4.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]33.33333)))
$tableLayoutPanel4.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]33.33333)))
$tableLayoutPanel4.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]33.33333)))
$tableLayoutPanel4.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]296,[System.Int32]258))
$tableLayoutPanel4.TabIndex = [System.Int32]0
#
#label1
#
$label1.AutoSize = $true
$label1.Dock = [System.Windows.Forms.DockStyle]::Fill
$label1.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'OCR A Extended',[System.Single]39.75,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$label1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]86))
$label1.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0))
$label1.Name = [System.String]'label1'
$label1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]296,[System.Int32]86))
$label1.TabIndex = [System.Int32]0
$label1.Text = [System.String]'Welcome!'
$label1.TextAlign = [System.Drawing.ContentAlignment]::MiddleCenter
#
#tableLayoutPanel5
#
$tableLayoutPanel5.ColumnCount = [System.Int32]1
$tableLayoutPanel5.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]100)))
$tableLayoutPanel5.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Absolute,[System.Single]20)))
$tableLayoutPanel5.Controls.Add($loginButton,[System.Int32]0,[System.Int32]2)
$tableLayoutPanel5.Controls.Add($tableLayoutPanel7,[System.Int32]0,[System.Int32]1)
$tableLayoutPanel5.Controls.Add($tableLayoutPanel6,[System.Int32]0,[System.Int32]0)
$tableLayoutPanel5.Dock = [System.Windows.Forms.DockStyle]::Fill
$tableLayoutPanel5.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]355,[System.Int32]267))
$tableLayoutPanel5.Name = [System.String]'tableLayoutPanel5'
$tableLayoutPanel5.RowCount = [System.Int32]3
$tableLayoutPanel5.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]40)))
$tableLayoutPanel5.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]40)))
$tableLayoutPanel5.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]20)))
$tableLayoutPanel5.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]296,[System.Int32]194))
$tableLayoutPanel5.TabIndex = [System.Int32]1
#
#loginButton
#
$loginButton.BackColor = [System.Drawing.Color]::LightSteelBlue
$loginButton.Dock = [System.Windows.Forms.DockStyle]::Fill
$loginButton.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$loginButton.ForeColor = [System.Drawing.SystemColors]::ControlText
$loginButton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]157))
$loginButton.Name = [System.String]'loginButton'
$loginButton.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]290,[System.Int32]34))
$loginButton.TabIndex = [System.Int32]2
$loginButton.Text = [System.String]'Login'
$loginButton.UseVisualStyleBackColor = $false
$loginButton.add_Click($LoginButton_Click)
#
#tableLayoutPanel6
#
$tableLayoutPanel6.BackColor = [System.Drawing.SystemColors]::HighlightText
$tableLayoutPanel6.ColumnCount = [System.Int32]1
$tableLayoutPanel6.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]100)))
$tableLayoutPanel6.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Absolute,[System.Single]20)))
$tableLayoutPanel6.Controls.Add($userTextBox,[System.Int32]0,[System.Int32]1)
$tableLayoutPanel6.Dock = [System.Windows.Forms.DockStyle]::Fill
$tableLayoutPanel6.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]3))
$tableLayoutPanel6.Name = [System.String]'tableLayoutPanel6'
$tableLayoutPanel6.RowCount = [System.Int32]3
$tableLayoutPanel6.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]30)))
$tableLayoutPanel6.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]40)))
$tableLayoutPanel6.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]30)))
$tableLayoutPanel6.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]290,[System.Int32]71))
$tableLayoutPanel6.TabIndex = [System.Int32]3
#
#tableLayoutPanel7
#
$tableLayoutPanel7.BackColor = [System.Drawing.SystemColors]::HighlightText
$tableLayoutPanel7.ColumnCount = [System.Int32]1
$tableLayoutPanel7.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]100)))
$tableLayoutPanel7.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Absolute,[System.Single]20)))
$tableLayoutPanel7.Controls.Add($passTextBox,[System.Int32]0,[System.Int32]1)
$tableLayoutPanel7.Dock = [System.Windows.Forms.DockStyle]::Fill
$tableLayoutPanel7.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]80))
$tableLayoutPanel7.Name = [System.String]'tableLayoutPanel7'
$tableLayoutPanel7.RowCount = [System.Int32]3
$tableLayoutPanel7.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]30)))
$tableLayoutPanel7.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]40)))
$tableLayoutPanel7.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]30)))
$tableLayoutPanel7.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]290,[System.Int32]71))
$tableLayoutPanel7.TabIndex = [System.Int32]4
#
#userTextBox
#
$userTextBox.BackColor = [System.Drawing.SystemColors]::InactiveBorder
$userTextBox.Dock = [System.Windows.Forms.DockStyle]::Fill
$userTextBox.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]12,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$userTextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]24))
$userTextBox.Name = [System.String]'userTextBox'
$userTextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]284,[System.Int32]26))
$userTextBox.TabIndex = [System.Int32]0
#
#passTextBox
#
$passTextBox.BackColor = [System.Drawing.SystemColors]::InactiveBorder
$passTextBox.Dock = [System.Windows.Forms.DockStyle]::Fill
$passTextBox.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]12,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$passTextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]24))
$passTextBox.Name = [System.String]'passTextBox'
$passTextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]284,[System.Int32]26))
$passTextBox.TabIndex = [System.Int32]1
#
#WarriorRange
#
$WarriorRange.AutoScaleDimensions = (New-Object -TypeName System.Drawing.SizeF -ArgumentList @([System.Single]96,[System.Single]96))
$WarriorRange.AutoScaleMode = [System.Windows.Forms.AutoScaleMode]::Dpi
$WarriorRange.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1008,[System.Int32]729))
$WarriorRange.Controls.Add($loginPanel)
$WarriorRange.Controls.Add($Header_Body)
$WarriorRange.Icon = ([System.Drawing.Icon]$resources.'$this.Icon')
$WarriorRange.MinimumSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]760,[System.Int32]350))
$WarriorRange.Name = [System.String]'WarriorRange'
$WarriorRange.Text = [System.String]'Warrior Range'
$WarriorRange.add_Load($WarriorRange_Load)
$Header_Body.ResumeLayout($false)
$Body.ResumeLayout($false)
$sidePanel.ResumeLayout($false)
$sidePanel.PerformLayout()
$buttonPanel.ResumeLayout($false)
$saveConfigurePanel.ResumeLayout($false)
$saveConfigurePanel.PerformLayout()
$savePanel.ResumeLayout($false)
$nextPanel.ResumeLayout($false)
$backPanel.ResumeLayout($false)
$informationPanel.ResumeLayout($false)
$netPanel.ResumeLayout($false)
$tableLayoutPanel2.ResumeLayout($false)
$tableLayoutPanel3.ResumeLayout($false)
$panel1.ResumeLayout($false)
$panel1.PerformLayout()
$rosterPanel.ResumeLayout($false)
$tableLayoutPanel1.ResumeLayout($false)
$rolePanel.ResumeLayout($false)
$rolePanel.PerformLayout()
$envPanel.ResumeLayout($false)
$envPanel.PerformLayout()
$loginPanel.ResumeLayout($false)
$tableLayoutPanel4.ResumeLayout($false)
$tableLayoutPanel4.PerformLayout()
$tableLayoutPanel5.ResumeLayout($false)
$tableLayoutPanel6.ResumeLayout($false)
$tableLayoutPanel6.PerformLayout()
$tableLayoutPanel7.ResumeLayout($false)
$tableLayoutPanel7.PerformLayout()
$WarriorRange.ResumeLayout($false)
Add-Member -InputObject $WarriorRange -Name saveButton -Value $saveButton -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name nextButton -Value $nextButton -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name backButton -Value $backButton -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name Header_Body -Value $Header_Body -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name Body -Value $Body -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name columnHeader1 -Value $columnHeader1 -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name columnHeader2 -Value $columnHeader2 -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name sidePanel -Value $sidePanel -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name buttonPanel -Value $buttonPanel -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name saveAndConfigureButton -Value $saveAndConfigureButton -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name savePanel -Value $savePanel -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name nextPanel -Value $nextPanel -MemberType NoteProperty
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
Add-Member -InputObject $WarriorRange -Name saveConfigurePanel -Value $saveConfigurePanel -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name tableLayoutPanel1 -Value $tableLayoutPanel1 -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name rosterBoxLeft -Value $rosterBoxLeft -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name rosterBoxRight -Value $rosterBoxRight -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name tableLayoutPanel2 -Value $tableLayoutPanel2 -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name tableLayoutPanel3 -Value $tableLayoutPanel3 -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name panel1 -Value $panel1 -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name textBox1 -Value $textBox1 -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name button1 -Value $button1 -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name loginPanel -Value $loginPanel -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name tableLayoutPanel4 -Value $tableLayoutPanel4 -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name label1 -Value $label1 -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name tableLayoutPanel5 -Value $tableLayoutPanel5 -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name loginButton -Value $loginButton -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name tableLayoutPanel7 -Value $tableLayoutPanel7 -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name tableLayoutPanel6 -Value $tableLayoutPanel6 -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name passTextBox -Value $passTextBox -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name userTextBox -Value $userTextBox -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name backPanel -Value $backPanel -MemberType NoteProperty
}
. InitializeComponent
