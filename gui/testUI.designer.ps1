[void][System.Reflection.Assembly]::Load('System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
[void][System.Reflection.Assembly]::Load('System.Windows.Forms, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
$WarriorRange = New-Object -TypeName System.Windows.Forms.Form
[System.Windows.Forms.Label]$label4 = $null
[System.Windows.Forms.Label]$label3 = $null
[System.Windows.Forms.Label]$label2 = $null
[System.Windows.Forms.Label]$label1 = $null
[System.Windows.Forms.Panel]$saveContinuePanel = $null
[System.Windows.Forms.Button]$saveAndConfigureButton = $null
[System.Windows.Forms.Panel]$savePanel = $null
[System.Windows.Forms.Button]$saveButton = $null
[System.Windows.Forms.Panel]$nextPanel = $null
[System.Windows.Forms.Button]$nextButton = $null
[System.Windows.Forms.Panel]$backPanel = $null
[System.Windows.Forms.Button]$backButton = $null
[System.Windows.Forms.TableLayoutPanel]$Header_Body = $null
[System.Windows.Forms.TableLayoutPanel]$Body = $null
[System.Windows.Forms.TableLayoutPanel]$Side_Panel = $null
[System.Windows.Forms.TableLayoutPanel]$Information_Panel = $null
[System.Windows.Forms.ColumnHeader]$columnHeader1 = $null
[System.Windows.Forms.ColumnHeader]$columnHeader2 = $null
[System.Windows.Forms.ListBox]$listBox1 = $null
[System.Windows.Forms.ListBox]$listBox2 = $null
[System.Windows.Forms.Button]$testButton = $null
[System.Windows.Forms.FlowLayoutPanel]$Button_Panel = $null
function InitializeComponent
{
$resources = . (Join-Path $PSScriptRoot 'testUI.resources.ps1')
$Header_Body = (New-Object -TypeName System.Windows.Forms.TableLayoutPanel)
$Body = (New-Object -TypeName System.Windows.Forms.TableLayoutPanel)
$Side_Panel = (New-Object -TypeName System.Windows.Forms.TableLayoutPanel)
$label4 = (New-Object -TypeName System.Windows.Forms.Label)
$label3 = (New-Object -TypeName System.Windows.Forms.Label)
$label2 = (New-Object -TypeName System.Windows.Forms.Label)
$label1 = (New-Object -TypeName System.Windows.Forms.Label)
$Button_Panel = (New-Object -TypeName System.Windows.Forms.FlowLayoutPanel)
$saveContinuePanel = (New-Object -TypeName System.Windows.Forms.Panel)
$saveAndConfigureButton = (New-Object -TypeName System.Windows.Forms.Button)
$savePanel = (New-Object -TypeName System.Windows.Forms.Panel)
$saveButton = (New-Object -TypeName System.Windows.Forms.Button)
$nextPanel = (New-Object -TypeName System.Windows.Forms.Panel)
$nextButton = (New-Object -TypeName System.Windows.Forms.Button)
$backPanel = (New-Object -TypeName System.Windows.Forms.Panel)
$backButton = (New-Object -TypeName System.Windows.Forms.Button)
$Information_Panel = (New-Object -TypeName System.Windows.Forms.TableLayoutPanel)
$listBox1 = (New-Object -TypeName System.Windows.Forms.ListBox)
$listBox2 = (New-Object -TypeName System.Windows.Forms.ListBox)
$testButton = (New-Object -TypeName System.Windows.Forms.Button)
$columnHeader1 = (New-Object -TypeName System.Windows.Forms.ColumnHeader)
$columnHeader2 = (New-Object -TypeName System.Windows.Forms.ColumnHeader)
$Header_Body.SuspendLayout()
$Body.SuspendLayout()
$Side_Panel.SuspendLayout()
$Button_Panel.SuspendLayout()
$saveContinuePanel.SuspendLayout()
$savePanel.SuspendLayout()
$nextPanel.SuspendLayout()
$backPanel.SuspendLayout()
$Information_Panel.SuspendLayout()
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
$Body.Controls.Add($Side_Panel,[System.Int32]0,[System.Int32]0)
$Body.Controls.Add($Button_Panel,[System.Int32]0,[System.Int32]1)
$Body.Controls.Add($Information_Panel,[System.Int32]1,[System.Int32]0)
$Body.Dock = [System.Windows.Forms.DockStyle]::Fill
$Body.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]48))
$Body.Name = [System.String]'Body'
$Body.RowCount = [System.Int32]2
$Body.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]100)))
$Body.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Absolute,[System.Single]45)))
$Body.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Absolute,[System.Single]20)))
$Body.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1002,[System.Int32]799))
$Body.TabIndex = [System.Int32]2
#
#Side_Panel
#
$Side_Panel.BackColor = [System.Drawing.SystemColors]::ControlDark
$Side_Panel.ColumnCount = [System.Int32]1
$Side_Panel.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]100)))
$Side_Panel.Controls.Add($label4,[System.Int32]0,[System.Int32]3)
$Side_Panel.Controls.Add($label3,[System.Int32]0,[System.Int32]2)
$Side_Panel.Controls.Add($label2,[System.Int32]0,[System.Int32]1)
$Side_Panel.Controls.Add($label1,[System.Int32]0,[System.Int32]0)
$Side_Panel.Dock = [System.Windows.Forms.DockStyle]::Fill
$Side_Panel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]3))
$Side_Panel.Name = [System.String]'Side_Panel'
$Side_Panel.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0,[System.Int32]3,[System.Int32]0,[System.Int32]0))
$Side_Panel.RowCount = [System.Int32]5
$Side_Panel.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Absolute,[System.Single]50)))
$Side_Panel.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Absolute,[System.Single]50)))
$Side_Panel.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Absolute,[System.Single]50)))
$Side_Panel.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Absolute,[System.Single]50)))
$Side_Panel.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Absolute,[System.Single]50)))
$Side_Panel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]144,[System.Int32]748))
$Side_Panel.TabIndex = [System.Int32]1
#
#label4
#
$label4.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Bottom -bor [System.Windows.Forms.AnchorStyles]::Left -bor [System.Windows.Forms.AnchorStyles]::Right)
$label4.AutoSize = $true
$label4.BackColor = [System.Drawing.SystemColors]::ControlLight
$label4.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Nirmala UI',[System.Single]12,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$label4.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]153))
$label4.Name = [System.String]'label4'
$label4.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]138,[System.Int32]50))
$label4.TabIndex = [System.Int32]3
$label4.Text = [System.String]'Roles and Permissions'
$label4.TextAlign = [System.Drawing.ContentAlignment]::MiddleCenter
#
#label3
#
$label3.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Bottom -bor [System.Windows.Forms.AnchorStyles]::Left -bor [System.Windows.Forms.AnchorStyles]::Right)
$label3.AutoSize = $true
$label3.BackColor = [System.Drawing.SystemColors]::ControlLight
$label3.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Nirmala UI',[System.Single]12,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$label3.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]103))
$label3.Name = [System.String]'label3'
$label3.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]138,[System.Int32]50))
$label3.TabIndex = [System.Int32]2
$label3.Text = [System.String]'Networks'
$label3.TextAlign = [System.Drawing.ContentAlignment]::MiddleCenter
#
#label2
#
$label2.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Bottom -bor [System.Windows.Forms.AnchorStyles]::Left -bor [System.Windows.Forms.AnchorStyles]::Right)
$label2.AutoSize = $true
$label2.BackColor = [System.Drawing.Color]::Gainsboro
$label2.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Nirmala UI',[System.Single]12,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$label2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]53))
$label2.Name = [System.String]'label2'
$label2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]138,[System.Int32]50))
$label2.TabIndex = [System.Int32]1
$label2.Text = [System.String]'Environment'
$label2.TextAlign = [System.Drawing.ContentAlignment]::MiddleCenter
#
#label1
#
$label1.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Bottom -bor [System.Windows.Forms.AnchorStyles]::Left -bor [System.Windows.Forms.AnchorStyles]::Right)
$label1.AutoSize = $true
$label1.BackColor = [System.Drawing.Color]::Peru
$label1.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Nirmala UI',[System.Single]12,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$label1.ForeColor = [System.Drawing.Color]::WhiteSmoke
$label1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]3))
$label1.Name = [System.String]'label1'
$label1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]138,[System.Int32]50))
$label1.TabIndex = [System.Int32]0
$label1.Text = [System.String]'Roster'
$label1.TextAlign = [System.Drawing.ContentAlignment]::MiddleCenter
#
#Button_Panel
#
$Body.SetColumnSpan($Button_Panel,[System.Int32]2)
$Button_Panel.Controls.Add($saveContinuePanel)
$Button_Panel.Controls.Add($savePanel)
$Button_Panel.Controls.Add($nextPanel)
$Button_Panel.Controls.Add($backPanel)
$Button_Panel.Dock = [System.Windows.Forms.DockStyle]::Fill
$Button_Panel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]757))
$Button_Panel.Name = [System.String]'Button_Panel'
$Button_Panel.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]10,[System.Int32]0,[System.Int32]0,[System.Int32]0))
$Button_Panel.RightToLeft = [System.Windows.Forms.RightToLeft]::Yes
$Button_Panel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]996,[System.Int32]39))
$Button_Panel.TabIndex = [System.Int32]2
#
#saveContinuePanel
#
$saveContinuePanel.Controls.Add($saveAndConfigureButton)
$saveContinuePanel.Dock = [System.Windows.Forms.DockStyle]::Bottom
$saveContinuePanel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]864,[System.Int32]3))
$saveContinuePanel.Name = [System.String]'saveContinuePanel'
$saveContinuePanel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]119,[System.Int32]32))
$saveContinuePanel.TabIndex = [System.Int32]6
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
$backButton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]0))
$backButton.Name = [System.String]'backButton'
$backButton.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]90,[System.Int32]32))
$backButton.TabIndex = [System.Int32]4
$backButton.Text = [System.String]'Back'
$backButton.UseVisualStyleBackColor = $true
#
#Information_Panel
#
$Information_Panel.ColumnCount = [System.Int32]5
$Information_Panel.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Absolute,[System.Single]30)))
$Information_Panel.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]50)))
$Information_Panel.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Absolute,[System.Single]100)))
$Information_Panel.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]50)))
$Information_Panel.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Absolute,[System.Single]30)))
$Information_Panel.Controls.Add($listBox1,[System.Int32]1,[System.Int32]1)
$Information_Panel.Controls.Add($listBox2,[System.Int32]3,[System.Int32]1)
$Information_Panel.Controls.Add($testButton,[System.Int32]1,[System.Int32]2)
$Information_Panel.Dock = [System.Windows.Forms.DockStyle]::Fill
$Information_Panel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]153,[System.Int32]3))
$Information_Panel.Name = [System.String]'Information_Panel'
$Information_Panel.RowCount = [System.Int32]3
$Information_Panel.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]15)))
$Information_Panel.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]70)))
$Information_Panel.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]15)))
$Information_Panel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]846,[System.Int32]748))
$Information_Panel.TabIndex = [System.Int32]3
#
#listBox1
#
$listBox1.Dock = [System.Windows.Forms.DockStyle]::Fill
$listBox1.FormattingEnabled = $true
$listBox1.Items.AddRange([System.Object[]]@([System.String]'one',[System.String]'two',[System.String]'three'))
$listBox1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]33,[System.Int32]115))
$listBox1.Name = [System.String]'listBox1'
$listBox1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]337,[System.Int32]517))
$listBox1.TabIndex = [System.Int32]0
#
#listBox2
#
$listBox2.Dock = [System.Windows.Forms.DockStyle]::Fill
$listBox2.FormattingEnabled = $true
$listBox2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]476,[System.Int32]115))
$listBox2.Name = [System.String]'listBox2'
$listBox2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]337,[System.Int32]517))
$listBox2.TabIndex = [System.Int32]1
#
#testButton
#
$testButton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]33,[System.Int32]638))
$testButton.Name = [System.String]'testButton'
$testButton.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75,[System.Int32]23))
$testButton.TabIndex = [System.Int32]2
$testButton.Text = [System.String]'button1'
$testButton.UseVisualStyleBackColor = $true
$testButton.add_MouseClick($testButton_MouseClick)
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
$Side_Panel.ResumeLayout($false)
$Side_Panel.PerformLayout()
$Button_Panel.ResumeLayout($false)
$saveContinuePanel.ResumeLayout($false)
$saveContinuePanel.PerformLayout()
$savePanel.ResumeLayout($false)
$nextPanel.ResumeLayout($false)
$backPanel.ResumeLayout($false)
$Information_Panel.ResumeLayout($false)
$WarriorRange.ResumeLayout($false)
Add-Member -InputObject $WarriorRange -Name label4 -Value $label4 -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name label3 -Value $label3 -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name label2 -Value $label2 -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name label1 -Value $label1 -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name saveContinuePanel -Value $saveContinuePanel -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name saveAndConfigureButton -Value $saveAndConfigureButton -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name savePanel -Value $savePanel -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name saveButton -Value $saveButton -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name nextPanel -Value $nextPanel -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name nextButton -Value $nextButton -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name backPanel -Value $backPanel -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name backButton -Value $backButton -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name Header_Body -Value $Header_Body -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name Body -Value $Body -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name Side_Panel -Value $Side_Panel -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name Information_Panel -Value $Information_Panel -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name columnHeader1 -Value $columnHeader1 -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name columnHeader2 -Value $columnHeader2 -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name listBox1 -Value $listBox1 -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name listBox2 -Value $listBox2 -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name testButton -Value $testButton -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name Button_Panel -Value $Button_Panel -MemberType NoteProperty
}
. InitializeComponent
