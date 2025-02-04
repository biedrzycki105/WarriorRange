# Add-Type -AssemblyName PresentationFramework
# Add-Type -AssemblyName System.Windows.Forms.Form

$WarriorRange = New-Object -TypeName System.Windows.Forms.Form
[System.Windows.Forms.TableLayoutPanel]$tableLayoutPanel1 = $null
[System.Windows.Forms.TableLayoutPanel]$tableLayoutPanel2 = $null
[System.Windows.Forms.Label]$label4 = $null
[System.Windows.Forms.Label]$label3 = $null
[System.Windows.Forms.Label]$label2 = $null
[System.Windows.Forms.Label]$label1 = $null
function InitializeComponent
{
$tableLayoutPanel1 = (New-Object -TypeName System.Windows.Forms.TableLayoutPanel)
$tableLayoutPanel2 = (New-Object -TypeName System.Windows.Forms.TableLayoutPanel)
$label4 = (New-Object -TypeName System.Windows.Forms.Label)
$label3 = (New-Object -TypeName System.Windows.Forms.Label)
$label2 = (New-Object -TypeName System.Windows.Forms.Label)
$label1 = (New-Object -TypeName System.Windows.Forms.Label)
$tableLayoutPanel1.SuspendLayout()
$tableLayoutPanel2.SuspendLayout()
$WarriorRange.SuspendLayout()
#
#tableLayoutPanel1
#
$tableLayoutPanel1.AllowDrop = $true
$tableLayoutPanel1.ColumnCount = [System.Int32]2
$tableLayoutPanel1.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]15)))
$tableLayoutPanel1.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]85)))
$tableLayoutPanel1.Controls.Add($tableLayoutPanel2,[System.Int32]0,[System.Int32]0)
$tableLayoutPanel1.Dock = [System.Windows.Forms.DockStyle]::Fill
$tableLayoutPanel1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]0))
$tableLayoutPanel1.Name = [System.String]'tableLayoutPanel1'
$tableLayoutPanel1.RowCount = [System.Int32]2
$tableLayoutPanel1.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]95)))
$tableLayoutPanel1.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]5)))
$tableLayoutPanel1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1008,[System.Int32]729))
$tableLayoutPanel1.TabIndex = [System.Int32]0
#
#tableLayoutPanel2
#
$tableLayoutPanel2.BackColor = [System.Drawing.SystemColors]::ControlDark
$tableLayoutPanel2.ColumnCount = [System.Int32]1
$tableLayoutPanel2.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]100)))
$tableLayoutPanel2.Controls.Add($label4,[System.Int32]0,[System.Int32]3)
$tableLayoutPanel2.Controls.Add($label3,[System.Int32]0,[System.Int32]2)
$tableLayoutPanel2.Controls.Add($label2,[System.Int32]0,[System.Int32]1)
$tableLayoutPanel2.Controls.Add($label1,[System.Int32]0,[System.Int32]0)
$tableLayoutPanel2.Dock = [System.Windows.Forms.DockStyle]::Fill
$tableLayoutPanel2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]3))
$tableLayoutPanel2.Name = [System.String]'tableLayoutPanel2'
$tableLayoutPanel2.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0,[System.Int32]3,[System.Int32]0,[System.Int32]0))
$tableLayoutPanel2.RowCount = [System.Int32]5
$tableLayoutPanel2.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Absolute,[System.Single]50)))
$tableLayoutPanel2.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Absolute,[System.Single]50)))
$tableLayoutPanel2.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Absolute,[System.Single]50)))
$tableLayoutPanel2.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Absolute,[System.Single]50)))
$tableLayoutPanel2.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Absolute,[System.Single]50)))
$tableLayoutPanel2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]145,[System.Int32]686))
$tableLayoutPanel2.TabIndex = [System.Int32]1
#
#label4
#
$label4.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Bottom -bor [System.Windows.Forms.AnchorStyles]::Left -bor [System.Windows.Forms.AnchorStyles]::Right)
$label4.AutoSize = $true
$label4.BackColor = [System.Drawing.SystemColors]::ControlLight
$label4.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Calibri',[System.Single]12,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$label4.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]153))
$label4.Name = [System.String]'label4'
$label4.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]139,[System.Int32]50))
$label4.TabIndex = [System.Int32]3
$label4.Text = [System.String]'Roles and Permissions'
$label4.TextAlign = [System.Drawing.ContentAlignment]::MiddleCenter
$label4.add_MouseClick($label4_MouseClick)
#
#label3
#
$label3.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Bottom -bor [System.Windows.Forms.AnchorStyles]::Left -bor [System.Windows.Forms.AnchorStyles]::Right)
$label3.AutoSize = $true
$label3.BackColor = [System.Drawing.SystemColors]::ControlLight
$label3.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Calibri',[System.Single]12,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$label3.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]103))
$label3.Name = [System.String]'label3'
$label3.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]139,[System.Int32]50))
$label3.TabIndex = [System.Int32]2
$label3.Text = [System.String]'Networks'
$label3.TextAlign = [System.Drawing.ContentAlignment]::MiddleCenter
$label3.add_MouseClick($label3_MouseClick)
#
#label2
#
$label2.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Bottom -bor [System.Windows.Forms.AnchorStyles]::Left -bor [System.Windows.Forms.AnchorStyles]::Right)
$label2.AutoSize = $true
$label2.BackColor = [System.Drawing.Color]::Gainsboro
$label2.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Calibri',[System.Single]12,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$label2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]53))
$label2.Name = [System.String]'label2'
$label2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]139,[System.Int32]50))
$label2.TabIndex = [System.Int32]1
$label2.Text = [System.String]'Environment'
$label2.TextAlign = [System.Drawing.ContentAlignment]::MiddleCenter
$label2.add_Click($label2_Click)
$label2.add_MouseClick($label2_MouseClick)
#
#label1
#
$label1.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Bottom -bor [System.Windows.Forms.AnchorStyles]::Left -bor [System.Windows.Forms.AnchorStyles]::Right)
$label1.AutoSize = $true
$label1.BackColor = [System.Drawing.Color]::Peru
$label1.BorderStyle = [System.Windows.Forms.BorderStyle]::Fixed3D
$label1.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Calibri',[System.Single]12,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$label1.ForeColor = [System.Drawing.Color]::WhiteSmoke
$label1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]3))
$label1.Name = [System.String]'label1'
$label1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]139,[System.Int32]50))
$label1.TabIndex = [System.Int32]0
$label1.Text = [System.String]'Roster'
$label1.TextAlign = [System.Drawing.ContentAlignment]::MiddleCenter
$label1.add_MouseClick($label1_MouseClick)
#
#WarriorRange
#
$WarriorRange.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1008,[System.Int32]729))
$WarriorRange.Controls.Add($tableLayoutPanel1)
$WarriorRange.MinimumSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1024,[System.Int32]384))
$WarriorRange.Text = [System.String]'Main Menu'
$WarriorRange.add_Load($WarriorRange_Load)
$tableLayoutPanel1.ResumeLayout($false)
$tableLayoutPanel2.ResumeLayout($false)
$tableLayoutPanel2.PerformLayout()
$WarriorRange.ResumeLayout($false)
Add-Member -InputObject $WarriorRange -Name tableLayoutPanel1 -Value $tableLayoutPanel1 -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name tableLayoutPanel2 -Value $tableLayoutPanel2 -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name label4 -Value $label4 -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name label3 -Value $label3 -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name label2 -Value $label2 -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name label1 -Value $label1 -MemberType NoteProperty
}
. InitializeComponent
