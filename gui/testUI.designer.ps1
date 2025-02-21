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
[System.Windows.Forms.Label]$label7 = $null
[System.Windows.Forms.Label]$label6 = $null
[System.Windows.Forms.Label]$rosterLabel = $null
[System.Windows.Forms.Label]$roleLabel = $null
[System.Windows.Forms.Label]$netLabel = $null
[System.Windows.Forms.Label]$envLabel = $null
[System.Windows.Forms.Panel]$saveConfigurePanel = $null
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
$rolePanel = (New-Object -TypeName System.Windows.Forms.Panel)
$label8 = (New-Object -TypeName System.Windows.Forms.Label)
$netPanel = (New-Object -TypeName System.Windows.Forms.Panel)
$label7 = (New-Object -TypeName System.Windows.Forms.Label)
$rosterPanel = (New-Object -TypeName System.Windows.Forms.Panel)
$label6 = (New-Object -TypeName System.Windows.Forms.Label)
$envPanel = (New-Object -TypeName System.Windows.Forms.Panel)
$label5 = (New-Object -TypeName System.Windows.Forms.Label)
$columnHeader1 = (New-Object -TypeName System.Windows.Forms.ColumnHeader)
$columnHeader2 = (New-Object -TypeName System.Windows.Forms.ColumnHeader)
$Header_Body.SuspendLayout()
$Body.SuspendLayout()
$sidePanel.SuspendLayout()
$buttonPanel.SuspendLayout()
$saveConfigurePanel.SuspendLayout()
$savePanel.SuspendLayout()
$nextPanel.SuspendLayout()
$backPanel.SuspendLayout()
$informationPanel.SuspendLayout()
$rolePanel.SuspendLayout()
$netPanel.SuspendLayout()
$rosterPanel.SuspendLayout()
$envPanel.SuspendLayout()
$WarriorRange.SuspendLayout()
#
#Header_Body
#
$Header_Body.ColumnCount = [System.Int32]1
$Header_Body.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]100)))
$Header_Body.Controls.Add($Body,[System.Int32]0,[System.Int32]1)
$Header_Body.Dock = [System.Windows.Forms.DockStyle]::Fill
$Header_Body.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]0))
$Header_Body.Name = [System.String]'Header_Body'
$Header_Body.RowCount = [System.Int32]2
$Header_Body.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Absolute,[System.Single]45)))
$Header_Body.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]100)))
$Header_Body.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1008,[System.Int32]850))
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
$Body.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]48))
$Body.Name = [System.String]'Body'
$Body.RowCount = [System.Int32]2
$Body.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]100)))
$Body.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Absolute,[System.Single]45)))
$Body.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Absolute,[System.Single]20)))
$Body.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1002,[System.Int32]799))
$Body.TabIndex = [System.Int32]2
$Body.add_Paint($Body_Paint)
#
#sidePanel
#
$sidePanel.BackColor = [System.Drawing.SystemColors]::ControlDark
$sidePanel.ColumnCount = [System.Int32]1
$sidePanel.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]100)))
$sidePanel.Controls.Add($roleLabel,[System.Int32]0,[System.Int32]3)
$sidePanel.Controls.Add($netLabel,[System.Int32]0,[System.Int32]2)
$sidePanel.Controls.Add($envLabel,[System.Int32]0,[System.Int32]1)
$sidePanel.Controls.Add($rosterLabel,[System.Int32]0,[System.Int32]0)
$sidePanel.Dock = [System.Windows.Forms.DockStyle]::Fill
$sidePanel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]3))
$sidePanel.Name = [System.String]'sidePanel'
$sidePanel.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0,[System.Int32]3,[System.Int32]0,[System.Int32]0))
$sidePanel.RowCount = [System.Int32]5
$sidePanel.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Absolute,[System.Single]50)))
$sidePanel.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Absolute,[System.Single]50)))
$sidePanel.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Absolute,[System.Single]50)))
$sidePanel.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Absolute,[System.Single]50)))
$sidePanel.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Absolute,[System.Single]50)))
$sidePanel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]144,[System.Int32]748))
$sidePanel.TabIndex = [System.Int32]1
#
#roleLabel
#
$roleLabel.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Bottom -bor [System.Windows.Forms.AnchorStyles]::Left -bor [System.Windows.Forms.AnchorStyles]::Right)
$roleLabel.AutoSize = $true
$roleLabel.BackColor = [System.Drawing.SystemColors]::ControlLight
$roleLabel.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Nirmala UI',[System.Single]12,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$roleLabel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]153))
$roleLabel.Name = [System.String]'roleLabel'
$roleLabel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]138,[System.Int32]50))
$roleLabel.TabIndex = [System.Int32]3
$roleLabel.Text = [System.String]'Roles and Permissions'
$roleLabel.TextAlign = [System.Drawing.ContentAlignment]::MiddleCenter
$roleLabel.add_Click($roleLabel_Click)
#
#netLabel
#
$netLabel.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Bottom -bor [System.Windows.Forms.AnchorStyles]::Left -bor [System.Windows.Forms.AnchorStyles]::Right)
$netLabel.AutoSize = $true
$netLabel.BackColor = [System.Drawing.SystemColors]::ControlLight
$netLabel.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Nirmala UI',[System.Single]12,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$netLabel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]103))
$netLabel.Name = [System.String]'netLabel'
$netLabel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]138,[System.Int32]50))
$netLabel.TabIndex = [System.Int32]2
$netLabel.Text = [System.String]'Networks'
$netLabel.TextAlign = [System.Drawing.ContentAlignment]::MiddleCenter
$netLabel.add_Click($netLabel_Click)
#
#envLabel
#
$envLabel.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Bottom -bor [System.Windows.Forms.AnchorStyles]::Left -bor [System.Windows.Forms.AnchorStyles]::Right)
$envLabel.AutoSize = $true
$envLabel.BackColor = [System.Drawing.Color]::Gainsboro
$envLabel.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Nirmala UI',[System.Single]12,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$envLabel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]53))
$envLabel.Name = [System.String]'envLabel'
$envLabel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]138,[System.Int32]50))
$envLabel.TabIndex = [System.Int32]1
$envLabel.Text = [System.String]'Environment'
$envLabel.TextAlign = [System.Drawing.ContentAlignment]::MiddleCenter
$envLabel.add_Click($envLabel_Click)
#
#rosterLabel
#
$rosterLabel.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Bottom -bor [System.Windows.Forms.AnchorStyles]::Left -bor [System.Windows.Forms.AnchorStyles]::Right)
$rosterLabel.AutoSize = $true
$rosterLabel.BackColor = [System.Drawing.Color]::Peru
$rosterLabel.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Nirmala UI',[System.Single]12,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$rosterLabel.ForeColor = [System.Drawing.Color]::WhiteSmoke
$rosterLabel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]3))
$rosterLabel.Name = [System.String]'rosterLabel'
$rosterLabel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]138,[System.Int32]50))
$rosterLabel.TabIndex = [System.Int32]0
$rosterLabel.Text = [System.String]'Roster'
$rosterLabel.TextAlign = [System.Drawing.ContentAlignment]::MiddleCenter
$rosterLabel.add_Click($rosterLabel_Click)
#
#buttonPanel
#
$Body.SetColumnSpan($buttonPanel,[System.Int32]2)
$buttonPanel.Controls.Add($saveConfigurePanel)
$buttonPanel.Controls.Add($savePanel)
$buttonPanel.Controls.Add($nextPanel)
$buttonPanel.Controls.Add($backPanel)
$buttonPanel.Dock = [System.Windows.Forms.DockStyle]::Fill
$buttonPanel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]757))
$buttonPanel.Name = [System.String]'buttonPanel'
$buttonPanel.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]10,[System.Int32]0,[System.Int32]0,[System.Int32]0))
$buttonPanel.RightToLeft = [System.Windows.Forms.RightToLeft]::Yes
$buttonPanel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]996,[System.Int32]39))
$buttonPanel.TabIndex = [System.Int32]2
#
#saveConfigurePanel
#
$saveConfigurePanel.Controls.Add($saveAndConfigureButton)
$saveConfigurePanel.Dock = [System.Windows.Forms.DockStyle]::Bottom
$saveConfigurePanel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]864,[System.Int32]3))
$saveConfigurePanel.Name = [System.String]'saveConfigurePanel'
$saveConfigurePanel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]119,[System.Int32]32))
$saveConfigurePanel.TabIndex = [System.Int32]6
#
#saveAndConfigureButton
#
$saveAndConfigureButton.AutoSize = $true
$saveAndConfigureButton.AutoSizeMode = [System.Windows.Forms.AutoSizeMode]::GrowAndShrink
$saveAndConfigureButton.Dock = [System.Windows.Forms.DockStyle]::Fill
$saveAndConfigureButton.Enabled = $false
$saveAndConfigureButton.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$saveAndConfigureButton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]0))
$saveAndConfigureButton.Name = [System.String]'saveAndConfigureButton'
$saveAndConfigureButton.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]119,[System.Int32]32))
$saveAndConfigureButton.TabIndex = [System.Int32]0
$saveAndConfigureButton.Text = [System.String]'Save and Configure'
$saveAndConfigureButton.UseVisualStyleBackColor = $true
#
#savePanel
#
$savePanel.Controls.Add($saveButton)
$savePanel.Dock = [System.Windows.Forms.DockStyle]::Bottom
$savePanel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]768,[System.Int32]3))
$savePanel.Name = [System.String]'savePanel'
$savePanel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]90,[System.Int32]32))
$savePanel.TabIndex = [System.Int32]5
#
#saveButton
#
$saveButton.Dock = [System.Windows.Forms.DockStyle]::Fill
$saveButton.Enabled = $false
$saveButton.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$saveButton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]0))
$saveButton.Name = [System.String]'saveButton'
$saveButton.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]90,[System.Int32]32))
$saveButton.TabIndex = [System.Int32]1
$saveButton.Text = [System.String]'Save'
$saveButton.UseVisualStyleBackColor = $true
#
#nextPanel
#
$nextPanel.Controls.Add($nextButton)
$nextPanel.Dock = [System.Windows.Forms.DockStyle]::Bottom
$nextPanel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]672,[System.Int32]3))
$nextPanel.Name = [System.String]'nextPanel'
$nextPanel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]90,[System.Int32]32))
$nextPanel.TabIndex = [System.Int32]4
#
#nextButton
#
$nextButton.Cursor = [System.Windows.Forms.Cursors]::Hand
$nextButton.Dock = [System.Windows.Forms.DockStyle]::Fill
$nextButton.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$nextButton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]0))
$nextButton.Name = [System.String]'nextButton'
$nextButton.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]90,[System.Int32]32))
$nextButton.TabIndex = [System.Int32]2
$nextButton.Text = [System.String]'Next'
$nextButton.UseVisualStyleBackColor = $true
#
#backPanel
#
$backPanel.Controls.Add($backButton)
$backPanel.Dock = [System.Windows.Forms.DockStyle]::Bottom
$backPanel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]576,[System.Int32]3))
$backPanel.Name = [System.String]'backPanel'
$backPanel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]90,[System.Int32]32))
$backPanel.TabIndex = [System.Int32]3
#
#backButton
#
$backButton.Cursor = [System.Windows.Forms.Cursors]::Hand
$backButton.Dock = [System.Windows.Forms.DockStyle]::Fill
$backButton.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$backButton.ForeColor = [System.Drawing.SystemColors]::ControlText
$backButton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]0))
$backButton.Name = [System.String]'backButton'
$backButton.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]90,[System.Int32]32))
$backButton.TabIndex = [System.Int32]4
$backButton.Text = [System.String]'Back'
$backButton.UseVisualStyleBackColor = $true
$backButton.add_Click($backButton_Click)
#
#informationPanel
#
$informationPanel.Controls.Add($rolePanel)
$informationPanel.Controls.Add($netPanel)
$informationPanel.Controls.Add($rosterPanel)
$informationPanel.Controls.Add($envPanel)
$informationPanel.Dock = [System.Windows.Forms.DockStyle]::Fill
$informationPanel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]150,[System.Int32]0))
$informationPanel.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0))
$informationPanel.Name = [System.String]'informationPanel'
$informationPanel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]852,[System.Int32]754))
$informationPanel.TabIndex = [System.Int32]3
#
#rolePanel
#
$rolePanel.Controls.Add($label8)
$rolePanel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]208,[System.Int32]530))
$rolePanel.Name = [System.String]'rolePanel'
$rolePanel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]200,[System.Int32]100))
$rolePanel.TabIndex = [System.Int32]3
#
#label8
#
$label8.AutoSize = $true
$label8.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]86,[System.Int32]39))
$label8.Name = [System.String]'label8'
$label8.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]24,[System.Int32]13))
$label8.TabIndex = [System.Int32]0
$label8.Text = [System.String]'role'
#
#netPanel
#
$netPanel.Controls.Add($label7)
$netPanel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]208,[System.Int32]398))
$netPanel.Name = [System.String]'netPanel'
$netPanel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]200,[System.Int32]100))
$netPanel.TabIndex = [System.Int32]2
#
#label7
#
$label7.AutoSize = $true
$label7.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]88,[System.Int32]45))
$label7.Name = [System.String]'label7'
$label7.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]22,[System.Int32]13))
$label7.TabIndex = [System.Int32]0
$label7.Text = [System.String]'net'
#
#rosterPanel
#
$rosterPanel.Controls.Add($label6)
$rosterPanel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]208,[System.Int32]116))
$rosterPanel.Name = [System.String]'rosterPanel'
$rosterPanel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]200,[System.Int32]100))
$rosterPanel.TabIndex = [System.Int32]1
#
#label6
#
$label6.AutoSize = $true
$label6.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]77,[System.Int32]40))
$label6.Name = [System.String]'label6'
$label6.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]33,[System.Int32]13))
$label6.TabIndex = [System.Int32]0
$label6.Text = [System.String]'roster'
#
#envPanel
#
$envPanel.Controls.Add($label5)
$envPanel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]208,[System.Int32]261))
$envPanel.Name = [System.String]'envPanel'
$envPanel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]200,[System.Int32]100))
$envPanel.TabIndex = [System.Int32]0
#
#label5
#
$label5.AutoSize = $true
$label5.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]80,[System.Int32]48))
$label5.Name = [System.String]'label5'
$label5.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]25,[System.Int32]13))
$label5.TabIndex = [System.Int32]4
$label5.Text = [System.String]'env'
$label5.add_Click($label5_Click)
#
#WarriorRange
#
$WarriorRange.AutoScaleDimensions = (New-Object -TypeName System.Drawing.SizeF -ArgumentList @([System.Single]96,[System.Single]96))
$WarriorRange.AutoScaleMode = [System.Windows.Forms.AutoScaleMode]::Dpi
$WarriorRange.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1008,[System.Int32]850))
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
$rolePanel.ResumeLayout($false)
$rolePanel.PerformLayout()
$netPanel.ResumeLayout($false)
$netPanel.PerformLayout()
$rosterPanel.ResumeLayout($false)
$rosterPanel.PerformLayout()
$envPanel.ResumeLayout($false)
$envPanel.PerformLayout()
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
Add-Member -InputObject $WarriorRange -Name label7 -Value $label7 -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name label6 -Value $label6 -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name rosterLabel -Value $rosterLabel -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name roleLabel -Value $roleLabel -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name netLabel -Value $netLabel -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name envLabel -Value $envLabel -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name saveConfigurePanel -Value $saveConfigurePanel -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name backPanel -Value $backPanel -MemberType NoteProperty
}
. InitializeComponent
