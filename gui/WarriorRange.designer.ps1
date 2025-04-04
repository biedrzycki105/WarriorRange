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
[System.Windows.Forms.Label]$rosterLabel = $null
[System.Windows.Forms.Label]$roleLabel = $null
[System.Windows.Forms.Label]$netLabel = $null
[System.Windows.Forms.Label]$envLabel = $null
[System.Windows.Forms.TableLayoutPanel]$tableLayoutPanel1 = $null
[System.Windows.Forms.TableLayoutPanel]$tableLayoutPanel2 = $null
[System.Windows.Forms.TableLayoutPanel]$tableLayoutPanel3 = $null
[System.Windows.Forms.Panel]$panel1 = $null
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
[System.Windows.Forms.TextBox]$tokenNameTextBox = $null
[System.Windows.Forms.TableLayoutPanel]$tableLayoutPanel5 = $null
[System.Windows.Forms.GroupBox]$groupBox1 = $null
[System.Windows.Forms.TableLayoutPanel]$tableLayoutPanel7 = $null
[System.Windows.Forms.TableLayoutPanel]$tableLayoutPanel8 = $null
[System.Windows.Forms.TextBox]$rosterFilterTextBox = $null
[System.Windows.Forms.TableLayoutPanel]$tableLayoutPanel9 = $null
[System.Windows.Forms.TreeView]$envImportTreeView = $null
[System.Windows.Forms.TableLayoutPanel]$tableLayoutPanel10 = $null
[System.Windows.Forms.GroupBox]$envConfigGroupBox = $null
[System.Windows.Forms.TableLayoutPanel]$tableLayoutPanel11 = $null
[System.Windows.Forms.Label]$label2 = $null
[System.Windows.Forms.Button]$envSelectButton = $null
[System.Windows.Forms.Button]$envAddButton = $null
[System.Windows.Forms.ColumnHeader]$nameCol = $null
[System.Windows.Forms.ColumnHeader]$vmCol = $null
[System.Windows.Forms.ListView]$envSummaryListView = $null
[System.Windows.Forms.TableLayoutPanel]$tableLayoutPanel14 = $null
[System.Windows.Forms.GroupBox]$groupBox2 = $null
[System.Windows.Forms.TextBox]$textBox2 = $null
[System.ComponentModel.IContainer]$components = $null
[System.Windows.Forms.TextBox]$netTextBox = $null
[System.Windows.Forms.Button]$netAddButton = $null
[System.Windows.Forms.ListBox]$rosterUserListBox = $null
[System.Windows.Forms.TableLayoutPanel]$tableLayoutPanel6 = $null
[System.Windows.Forms.GroupBox]$groupBox = $null
[System.Windows.Forms.TableLayoutPanel]$tableLayoutPanel15 = $null
[System.Windows.Forms.Label]$label6 = $null
[System.Windows.Forms.Panel]$panel7 = $null
[System.Windows.Forms.ColumnHeader]$userCol = $null
[System.Windows.Forms.ColumnHeader]$groupCol = $null
[System.Windows.Forms.Button]$rosterAddButton = $null
[System.Windows.Forms.TextBox]$groupTextBox = $null
[System.Windows.Forms.TableLayoutPanel]$tableLayoutPanel16 = $null
[System.Windows.Forms.Button]$rosterSelectButton = $null
[System.Windows.Forms.Label]$selectText = $null
[System.Windows.Forms.ListView]$rosterListView = $null
[System.Windows.Forms.TableLayoutPanel]$tableLayoutPanel17 = $null
[System.Windows.Forms.TableLayoutPanel]$tableLayoutPanel18 = $null
[System.Windows.Forms.GroupBox]$groupBox3 = $null
[System.Windows.Forms.GroupBox]$groupBox4 = $null
[System.Windows.Forms.TreeView]$permGroupTreeView = $null
[System.Windows.Forms.GroupBox]$groupBox5 = $null
[System.Windows.Forms.Panel]$panel10 = $null
[System.Windows.Forms.TextBox]$envNameTextBox = $null
[System.Windows.Forms.Button]$roleAssignButton = $null
[System.Windows.Forms.TableLayoutPanel]$tableLayoutPanel13 = $null
[System.Windows.Forms.TableLayoutPanel]$tableLayoutPanel21 = $null
[System.Windows.Forms.Label]$roleSelectedLabel = $null
[System.Windows.Forms.Button]$roleSelectButton = $null
[System.Windows.Forms.TableLayoutPanel]$tableLayoutPanel19 = $null
[System.Windows.Forms.Label]$label3 = $null
[System.Windows.Forms.ComboBox]$roleComboBox = $null
[System.Windows.Forms.ColumnHeader]$groupHeader = $null
[System.Windows.Forms.ColumnHeader]$roleHeader = $null
[System.Windows.Forms.ListView]$roleAssnListView = $null
[System.Windows.Forms.Label]$label4 = $null
[System.Windows.Forms.GroupBox]$groupBox6 = $null
[System.Windows.Forms.ListView]$netListView = $null
[System.Windows.Forms.TableLayoutPanel]$tableLayoutPanel12 = $null
[System.Windows.Forms.Label]$summaryLabel = $null
[System.Windows.Forms.Panel]$summaryPanel = $null
[System.Windows.Forms.MaskedTextBox]$tokenValueMaskedTextBox = $null
[System.Windows.Forms.GroupBox]$groupBox10 = $null
[System.Windows.Forms.ListView]$listView4 = $null
[System.Windows.Forms.GroupBox]$groupBox9 = $null
[System.Windows.Forms.ListView]$listView3 = $null
[System.Windows.Forms.GroupBox]$groupBox8 = $null
[System.Windows.Forms.ListView]$listView2 = $null
[System.Windows.Forms.GroupBox]$groupBox7 = $null
[System.Windows.Forms.ListView]$listView1 = $null
[System.Windows.Forms.Panel]$panel8 = $null
[System.Windows.Forms.GroupBox]$usernameGroupBox = $null
function InitializeComponent
{
$main = (New-Object -TypeName System.Windows.Forms.TableLayoutPanel)
$configurationTable = (New-Object -TypeName System.Windows.Forms.TableLayoutPanel)
$sidePanel = (New-Object -TypeName System.Windows.Forms.TableLayoutPanel)
$summaryLabel = (New-Object -TypeName System.Windows.Forms.Label)
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
$summaryPanel = (New-Object -TypeName System.Windows.Forms.Panel)
$tableLayoutPanel12 = (New-Object -TypeName System.Windows.Forms.TableLayoutPanel)
$groupBox10 = (New-Object -TypeName System.Windows.Forms.GroupBox)
$listView4 = (New-Object -TypeName System.Windows.Forms.ListView)
$groupBox9 = (New-Object -TypeName System.Windows.Forms.GroupBox)
$listView3 = (New-Object -TypeName System.Windows.Forms.ListView)
$groupBox8 = (New-Object -TypeName System.Windows.Forms.GroupBox)
$listView2 = (New-Object -TypeName System.Windows.Forms.ListView)
$groupBox7 = (New-Object -TypeName System.Windows.Forms.GroupBox)
$listView1 = (New-Object -TypeName System.Windows.Forms.ListView)
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
$tableLayoutPanel11 = (New-Object -TypeName System.Windows.Forms.TableLayoutPanel)
$label2 = (New-Object -TypeName System.Windows.Forms.Label)
$panel10 = (New-Object -TypeName System.Windows.Forms.Panel)
$envNameTextBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$envAddButton = (New-Object -TypeName System.Windows.Forms.Button)
$envSummaryListView = (New-Object -TypeName System.Windows.Forms.ListView)
$nameCol = (New-Object -TypeName System.Windows.Forms.ColumnHeader)
$vmCol = (New-Object -TypeName System.Windows.Forms.ColumnHeader)
$label5 = (New-Object -TypeName System.Windows.Forms.Label)
$rolePanel = (New-Object -TypeName System.Windows.Forms.Panel)
$tableLayoutPanel17 = (New-Object -TypeName System.Windows.Forms.TableLayoutPanel)
$tableLayoutPanel13 = (New-Object -TypeName System.Windows.Forms.TableLayoutPanel)
$roleAssignButton = (New-Object -TypeName System.Windows.Forms.Button)
$tableLayoutPanel21 = (New-Object -TypeName System.Windows.Forms.TableLayoutPanel)
$roleSelectButton = (New-Object -TypeName System.Windows.Forms.Button)
$roleSelectedLabel = (New-Object -TypeName System.Windows.Forms.Label)
$tableLayoutPanel18 = (New-Object -TypeName System.Windows.Forms.TableLayoutPanel)
$groupBox4 = (New-Object -TypeName System.Windows.Forms.GroupBox)
$permGroupTreeView = (New-Object -TypeName System.Windows.Forms.TreeView)
$groupBox5 = (New-Object -TypeName System.Windows.Forms.GroupBox)
$tableLayoutPanel19 = (New-Object -TypeName System.Windows.Forms.TableLayoutPanel)
$roleComboBox = (New-Object -TypeName System.Windows.Forms.ComboBox)
$label3 = (New-Object -TypeName System.Windows.Forms.Label)
$groupBox3 = (New-Object -TypeName System.Windows.Forms.GroupBox)
$roleAssnListView = (New-Object -TypeName System.Windows.Forms.ListView)
$groupHeader = (New-Object -TypeName System.Windows.Forms.ColumnHeader)
$roleHeader = (New-Object -TypeName System.Windows.Forms.ColumnHeader)
$netPanel = (New-Object -TypeName System.Windows.Forms.Panel)
$tableLayoutPanel2 = (New-Object -TypeName System.Windows.Forms.TableLayoutPanel)
$groupBox6 = (New-Object -TypeName System.Windows.Forms.GroupBox)
$netListView = (New-Object -TypeName System.Windows.Forms.ListView)
$tableLayoutPanel3 = (New-Object -TypeName System.Windows.Forms.TableLayoutPanel)
$panel1 = (New-Object -TypeName System.Windows.Forms.Panel)
$netTextBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$netAddButton = (New-Object -TypeName System.Windows.Forms.Button)
$label4 = (New-Object -TypeName System.Windows.Forms.Label)
$rosterPanel = (New-Object -TypeName System.Windows.Forms.Panel)
$tableLayoutPanel1 = (New-Object -TypeName System.Windows.Forms.TableLayoutPanel)
$tableLayoutPanel5 = (New-Object -TypeName System.Windows.Forms.TableLayoutPanel)
$groupBox1 = (New-Object -TypeName System.Windows.Forms.GroupBox)
$rosterFilterTextBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$rosterUserListBox = (New-Object -TypeName System.Windows.Forms.ListBox)
$tableLayoutPanel16 = (New-Object -TypeName System.Windows.Forms.TableLayoutPanel)
$rosterSelectButton = (New-Object -TypeName System.Windows.Forms.Button)
$selectText = (New-Object -TypeName System.Windows.Forms.Label)
$tableLayoutPanel6 = (New-Object -TypeName System.Windows.Forms.TableLayoutPanel)
$rosterAddButton = (New-Object -TypeName System.Windows.Forms.Button)
$groupBox = (New-Object -TypeName System.Windows.Forms.GroupBox)
$tableLayoutPanel15 = (New-Object -TypeName System.Windows.Forms.TableLayoutPanel)
$label6 = (New-Object -TypeName System.Windows.Forms.Label)
$panel7 = (New-Object -TypeName System.Windows.Forms.Panel)
$groupTextBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$rosterListView = (New-Object -TypeName System.Windows.Forms.ListView)
$userCol = (New-Object -TypeName System.Windows.Forms.ColumnHeader)
$groupCol = (New-Object -TypeName System.Windows.Forms.ColumnHeader)
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
$tokenValueMaskedTextBox = (New-Object -TypeName System.Windows.Forms.MaskedTextBox)
$nodeGroupBox = (New-Object -TypeName System.Windows.Forms.GroupBox)
$panel5 = (New-Object -TypeName System.Windows.Forms.Panel)
$nodeTextBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$loginButton = (New-Object -TypeName System.Windows.Forms.Button)
$tableLayoutPanel4 = (New-Object -TypeName System.Windows.Forms.TableLayoutPanel)
$label1 = (New-Object -TypeName System.Windows.Forms.Label)
$panel8 = (New-Object -TypeName System.Windows.Forms.Panel)
$main.SuspendLayout()
$configurationTable.SuspendLayout()
$sidePanel.SuspendLayout()
$buttonPanel.SuspendLayout()
$informationPanel.SuspendLayout()
$summaryPanel.SuspendLayout()
$tableLayoutPanel12.SuspendLayout()
$groupBox10.SuspendLayout()
$groupBox9.SuspendLayout()
$groupBox8.SuspendLayout()
$groupBox7.SuspendLayout()
$envPanel.SuspendLayout()
$tableLayoutPanel7.SuspendLayout()
$tableLayoutPanel8.SuspendLayout()
$tableLayoutPanel14.SuspendLayout()
$groupBox2.SuspendLayout()
$tableLayoutPanel9.SuspendLayout()
$envConfigGroupBox.SuspendLayout()
$tableLayoutPanel10.SuspendLayout()
$tableLayoutPanel11.SuspendLayout()
$panel10.SuspendLayout()
$rolePanel.SuspendLayout()
$tableLayoutPanel17.SuspendLayout()
$tableLayoutPanel13.SuspendLayout()
$tableLayoutPanel21.SuspendLayout()
$tableLayoutPanel18.SuspendLayout()
$groupBox4.SuspendLayout()
$groupBox5.SuspendLayout()
$tableLayoutPanel19.SuspendLayout()
$groupBox3.SuspendLayout()
$netPanel.SuspendLayout()
$tableLayoutPanel2.SuspendLayout()
$groupBox6.SuspendLayout()
$tableLayoutPanel3.SuspendLayout()
$panel1.SuspendLayout()
$rosterPanel.SuspendLayout()
$tableLayoutPanel1.SuspendLayout()
$tableLayoutPanel5.SuspendLayout()
$groupBox1.SuspendLayout()
$tableLayoutPanel16.SuspendLayout()
$tableLayoutPanel6.SuspendLayout()
$groupBox.SuspendLayout()
$tableLayoutPanel15.SuspendLayout()
$panel7.SuspendLayout()
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
$main.Controls.Add($panel8,[System.Int32]0,[System.Int32]0)
$main.Dock = [System.Windows.Forms.DockStyle]::Fill
$main.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]0))
$main.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0))
$main.Name = [System.String]'main'
$main.RowCount = [System.Int32]2
$main.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Absolute,[System.Single]45)))
$main.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]100)))
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
$configurationTable.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1008,[System.Int32]684))
$configurationTable.TabIndex = [System.Int32]2
$configurationTable.add_Paint($Body_Paint)
#
#sidePanel
#
$sidePanel.BackColor = [System.Drawing.SystemColors]::ControlLight
$sidePanel.ColumnCount = [System.Int32]1
$sidePanel.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]100)))
$sidePanel.Controls.Add($summaryLabel,[System.Int32]0,[System.Int32]4)
$sidePanel.Controls.Add($roleLabel,[System.Int32]0,[System.Int32]3)
$sidePanel.Controls.Add($netLabel,[System.Int32]0,[System.Int32]2)
$sidePanel.Controls.Add($envLabel,[System.Int32]0,[System.Int32]1)
$sidePanel.Controls.Add($rosterLabel,[System.Int32]0,[System.Int32]0)
$sidePanel.Dock = [System.Windows.Forms.DockStyle]::Fill
$sidePanel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]0))
$sidePanel.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0))
$sidePanel.MaximumSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]151,[System.Int32]0))
$sidePanel.MinimumSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]110,[System.Int32]0))
$sidePanel.Name = [System.String]'sidePanel'
$sidePanel.RowCount = [System.Int32]6
$sidePanel.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Absolute,[System.Single]50)))
$sidePanel.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Absolute,[System.Single]50)))
$sidePanel.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Absolute,[System.Single]50)))
$sidePanel.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Absolute,[System.Single]50)))
$sidePanel.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Absolute,[System.Single]50)))
$sidePanel.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Absolute,[System.Single]50)))
$sidePanel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]151,[System.Int32]639))
$sidePanel.TabIndex = [System.Int32]1
#
#summaryLabel
#
$summaryLabel.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Bottom -bor [System.Windows.Forms.AnchorStyles]::Left -bor [System.Windows.Forms.AnchorStyles]::Right)
$summaryLabel.AutoSize = $true
$summaryLabel.BackColor = [System.Drawing.Color]::AliceBlue
$summaryLabel.Cursor = [System.Windows.Forms.Cursors]::Hand
$summaryLabel.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Nirmala UI',[System.Single]12,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$summaryLabel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]200))
$summaryLabel.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0))
$summaryLabel.Name = [System.String]'summaryLabel'
$summaryLabel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]151,[System.Int32]50))
$summaryLabel.TabIndex = [System.Int32]4
$summaryLabel.Text = [System.String]'Summary'
$summaryLabel.TextAlign = [System.Drawing.ContentAlignment]::MiddleCenter
$summaryLabel.add_Click($summaryLabel_Click)
#
#roleLabel
#
$roleLabel.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Bottom -bor [System.Windows.Forms.AnchorStyles]::Left -bor [System.Windows.Forms.AnchorStyles]::Right)
$roleLabel.AutoSize = $true
$roleLabel.BackColor = [System.Drawing.Color]::AliceBlue
$roleLabel.Cursor = [System.Windows.Forms.Cursors]::Hand
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
$netLabel.Cursor = [System.Windows.Forms.Cursors]::Hand
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
$envLabel.Cursor = [System.Windows.Forms.Cursors]::Hand
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
$rosterLabel.Cursor = [System.Windows.Forms.Cursors]::Hand
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
$buttonPanel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]639))
$buttonPanel.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0))
$buttonPanel.Name = [System.String]'buttonPanel'
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
$saveAndConfigureButton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]908,[System.Int32]5))
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
$saveButton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]808,[System.Int32]5))
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
$nextButton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]708,[System.Int32]5))
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
$backButton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]608,[System.Int32]5))
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
$informationPanel.Controls.Add($summaryPanel)
$informationPanel.Controls.Add($envPanel)
$informationPanel.Controls.Add($rolePanel)
$informationPanel.Controls.Add($netPanel)
$informationPanel.Controls.Add($rosterPanel)
$informationPanel.Dock = [System.Windows.Forms.DockStyle]::Fill
$informationPanel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]151,[System.Int32]0))
$informationPanel.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0))
$informationPanel.Name = [System.String]'informationPanel'
$informationPanel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]857,[System.Int32]639))
$informationPanel.TabIndex = [System.Int32]3
#
#summaryPanel
#
$summaryPanel.Controls.Add($tableLayoutPanel12)
$summaryPanel.Dock = [System.Windows.Forms.DockStyle]::Fill
$summaryPanel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]0))
$summaryPanel.Name = [System.String]'summaryPanel'
$summaryPanel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]857,[System.Int32]639))
$summaryPanel.TabIndex = [System.Int32]5
#
#tableLayoutPanel12
#
$tableLayoutPanel12.ColumnCount = [System.Int32]2
$tableLayoutPanel12.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]50)))
$tableLayoutPanel12.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]50)))
$tableLayoutPanel12.Controls.Add($groupBox10,[System.Int32]1,[System.Int32]1)
$tableLayoutPanel12.Controls.Add($groupBox9,[System.Int32]0,[System.Int32]1)
$tableLayoutPanel12.Controls.Add($groupBox8,[System.Int32]1,[System.Int32]0)
$tableLayoutPanel12.Controls.Add($groupBox7,[System.Int32]0,[System.Int32]0)
$tableLayoutPanel12.Dock = [System.Windows.Forms.DockStyle]::Fill
$tableLayoutPanel12.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]0))
$tableLayoutPanel12.Name = [System.String]'tableLayoutPanel12'
$tableLayoutPanel12.RowCount = [System.Int32]2
$tableLayoutPanel12.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]50)))
$tableLayoutPanel12.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]50)))
$tableLayoutPanel12.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]857,[System.Int32]639))
$tableLayoutPanel12.TabIndex = [System.Int32]0
#
#groupBox10
#
$groupBox10.Controls.Add($listView4)
$groupBox10.Dock = [System.Windows.Forms.DockStyle]::Fill
$groupBox10.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]438,[System.Int32]329))
$groupBox10.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]10))
$groupBox10.Name = [System.String]'groupBox10'
$groupBox10.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]409,[System.Int32]300))
$groupBox10.TabIndex = [System.Int32]3
$groupBox10.TabStop = $false
$groupBox10.Text = [System.String]'Networks'
#
#listView4
#
$listView4.BorderStyle = [System.Windows.Forms.BorderStyle]::None
$listView4.Dock = [System.Windows.Forms.DockStyle]::Fill
$listView4.HideSelection = $false
$listView4.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]16))
$listView4.Name = [System.String]'listView4'
$listView4.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]403,[System.Int32]281))
$listView4.TabIndex = [System.Int32]0
$listView4.UseCompatibleStateImageBehavior = $false
#
#groupBox9
#
$groupBox9.Controls.Add($listView3)
$groupBox9.Dock = [System.Windows.Forms.DockStyle]::Fill
$groupBox9.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]10,[System.Int32]329))
$groupBox9.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]10))
$groupBox9.Name = [System.String]'groupBox9'
$groupBox9.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]408,[System.Int32]300))
$groupBox9.TabIndex = [System.Int32]2
$groupBox9.TabStop = $false
$groupBox9.Text = [System.String]'Virtual Machines'
#
#listView3
#
$listView3.BorderStyle = [System.Windows.Forms.BorderStyle]::None
$listView3.Dock = [System.Windows.Forms.DockStyle]::Fill
$listView3.HideSelection = $false
$listView3.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]16))
$listView3.Name = [System.String]'listView3'
$listView3.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]402,[System.Int32]281))
$listView3.TabIndex = [System.Int32]0
$listView3.UseCompatibleStateImageBehavior = $false
#
#groupBox8
#
$groupBox8.Controls.Add($listView2)
$groupBox8.Dock = [System.Windows.Forms.DockStyle]::Fill
$groupBox8.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]438,[System.Int32]10))
$groupBox8.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]10))
$groupBox8.Name = [System.String]'groupBox8'
$groupBox8.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]409,[System.Int32]299))
$groupBox8.TabIndex = [System.Int32]1
$groupBox8.TabStop = $false
$groupBox8.Text = [System.String]'Roles'
#
#listView2
#
$listView2.BorderStyle = [System.Windows.Forms.BorderStyle]::None
$listView2.Dock = [System.Windows.Forms.DockStyle]::Fill
$listView2.HideSelection = $false
$listView2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]16))
$listView2.Name = [System.String]'listView2'
$listView2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]403,[System.Int32]280))
$listView2.TabIndex = [System.Int32]0
$listView2.UseCompatibleStateImageBehavior = $false
#
#groupBox7
#
$groupBox7.Controls.Add($listView1)
$groupBox7.Dock = [System.Windows.Forms.DockStyle]::Fill
$groupBox7.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]10,[System.Int32]10))
$groupBox7.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]10))
$groupBox7.Name = [System.String]'groupBox7'
$groupBox7.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]408,[System.Int32]299))
$groupBox7.TabIndex = [System.Int32]0
$groupBox7.TabStop = $false
$groupBox7.Text = [System.String]'Roster'
#
#listView1
#
$listView1.BorderStyle = [System.Windows.Forms.BorderStyle]::None
$listView1.Dock = [System.Windows.Forms.DockStyle]::Fill
$listView1.HideSelection = $false
$listView1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]16))
$listView1.Name = [System.String]'listView1'
$listView1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]402,[System.Int32]280))
$listView1.TabIndex = [System.Int32]0
$listView1.UseCompatibleStateImageBehavior = $false
#
#envPanel
#
$envPanel.Controls.Add($tableLayoutPanel7)
$envPanel.Controls.Add($label5)
$envPanel.Dock = [System.Windows.Forms.DockStyle]::Fill
$envPanel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]0))
$envPanel.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0))
$envPanel.Name = [System.String]'envPanel'
$envPanel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]857,[System.Int32]639))
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
$tableLayoutPanel7.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0))
$tableLayoutPanel7.Name = [System.String]'tableLayoutPanel7'
$tableLayoutPanel7.RowCount = [System.Int32]1
$tableLayoutPanel7.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]100)))
$tableLayoutPanel7.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Absolute,[System.Single]639)))
$tableLayoutPanel7.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]857,[System.Int32]639))
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
$tableLayoutPanel8.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]0))
$tableLayoutPanel8.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0))
$tableLayoutPanel8.Name = [System.String]'tableLayoutPanel8'
$tableLayoutPanel8.RowCount = [System.Int32]3
$tableLayoutPanel8.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Absolute,[System.Single]125)))
$tableLayoutPanel8.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]100)))
$tableLayoutPanel8.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Absolute,[System.Single]125)))
$tableLayoutPanel8.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]338,[System.Int32]639))
$tableLayoutPanel8.TabIndex = [System.Int32]2
#
#envImportTreeView
#
$envImportTreeView.BorderStyle = [System.Windows.Forms.BorderStyle]::None
$envImportTreeView.Dock = [System.Windows.Forms.DockStyle]::Fill
$envImportTreeView.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]30,[System.Int32]128))
$envImportTreeView.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]30,[System.Int32]3,[System.Int32]30,[System.Int32]3))
$envImportTreeView.Name = [System.String]'envImportTreeView'
$envImportTreeView.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]278,[System.Int32]383))
$envImportTreeView.TabIndex = [System.Int32]5
#
#envSelectButton
#
$envSelectButton.BackColor = [System.Drawing.SystemColors]::ControlLight
$envSelectButton.Dock = [System.Windows.Forms.DockStyle]::Fill
$envSelectButton.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$envSelectButton.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Nirmala UI',[System.Single]9.75,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$envSelectButton.ForeColor = [System.Drawing.SystemColors]::ControlDarkDark
$envSelectButton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]30,[System.Int32]524))
$envSelectButton.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]30,[System.Int32]10,[System.Int32]30,[System.Int32]75))
$envSelectButton.Name = [System.String]'envSelectButton'
$envSelectButton.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]278,[System.Int32]40))
$envSelectButton.TabIndex = [System.Int32]6
$envSelectButton.Text = [System.String]'Select'
$envSelectButton.UseVisualStyleBackColor = $false
$envSelectButton.add_Click($envSelectButton_Click)
#
#tableLayoutPanel14
#
$tableLayoutPanel14.ColumnCount = [System.Int32]1
$tableLayoutPanel14.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]100)))
$tableLayoutPanel14.Controls.Add($groupBox2,[System.Int32]0,[System.Int32]0)
$tableLayoutPanel14.Dock = [System.Windows.Forms.DockStyle]::Fill
$tableLayoutPanel14.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]0))
$tableLayoutPanel14.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0))
$tableLayoutPanel14.Name = [System.String]'tableLayoutPanel14'
$tableLayoutPanel14.RowCount = [System.Int32]1
$tableLayoutPanel14.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]100)))
$tableLayoutPanel14.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Absolute,[System.Single]125)))
$tableLayoutPanel14.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]338,[System.Int32]125))
$tableLayoutPanel14.TabIndex = [System.Int32]7
#
#groupBox2
#
$groupBox2.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Bottom -bor [System.Windows.Forms.AnchorStyles]::Left -bor [System.Windows.Forms.AnchorStyles]::Right)
$groupBox2.Controls.Add($textBox2)
$groupBox2.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$groupBox2.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]9.75,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$groupBox2.ForeColor = [System.Drawing.SystemColors]::ControlText
$groupBox2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]30,[System.Int32]74))
$groupBox2.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]30,[System.Int32]3,[System.Int32]30,[System.Int32]3))
$groupBox2.Name = [System.String]'groupBox2'
$groupBox2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]278,[System.Int32]48))
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
$textBox2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]272,[System.Int32]25))
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
$tableLayoutPanel9.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]338,[System.Int32]0))
$tableLayoutPanel9.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0))
$tableLayoutPanel9.Name = [System.String]'tableLayoutPanel9'
$tableLayoutPanel9.RowCount = [System.Int32]3
$tableLayoutPanel9.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]40)))
$tableLayoutPanel9.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Absolute,[System.Single]50)))
$tableLayoutPanel9.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]60)))
$tableLayoutPanel9.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]519,[System.Int32]639))
$tableLayoutPanel9.TabIndex = [System.Int32]3
#
#envConfigGroupBox
#
$envConfigGroupBox.BackColor = [System.Drawing.SystemColors]::Control
$envConfigGroupBox.Controls.Add($tableLayoutPanel10)
$envConfigGroupBox.Dock = [System.Windows.Forms.DockStyle]::Fill
$envConfigGroupBox.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Consolas',[System.Single]15.75,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$envConfigGroupBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]0))
$envConfigGroupBox.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0))
$envConfigGroupBox.Name = [System.String]'envConfigGroupBox'
$envConfigGroupBox.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]3,[System.Int32]30,[System.Int32]3,[System.Int32]3))
$envConfigGroupBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]519,[System.Int32]235))
$envConfigGroupBox.TabIndex = [System.Int32]0
$envConfigGroupBox.TabStop = $false
$envConfigGroupBox.Text = [System.String]'{...}'
#
#tableLayoutPanel10
#
$tableLayoutPanel10.ColumnCount = [System.Int32]1
$tableLayoutPanel10.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]100)))
$tableLayoutPanel10.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Absolute,[System.Single]20)))
$tableLayoutPanel10.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Absolute,[System.Single]20)))
$tableLayoutPanel10.Controls.Add($tableLayoutPanel11,[System.Int32]0,[System.Int32]0)
$tableLayoutPanel10.Dock = [System.Windows.Forms.DockStyle]::Fill
$tableLayoutPanel10.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]55))
$tableLayoutPanel10.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0))
$tableLayoutPanel10.Name = [System.String]'tableLayoutPanel10'
$tableLayoutPanel10.RowCount = [System.Int32]1
$tableLayoutPanel10.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]100)))
$tableLayoutPanel10.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]513,[System.Int32]177))
$tableLayoutPanel10.TabIndex = [System.Int32]0
#
#tableLayoutPanel11
#
$tableLayoutPanel11.ColumnCount = [System.Int32]1
$tableLayoutPanel11.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]100)))
$tableLayoutPanel11.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Absolute,[System.Single]20)))
$tableLayoutPanel11.Controls.Add($label2,[System.Int32]0,[System.Int32]0)
$tableLayoutPanel11.Controls.Add($panel10,[System.Int32]0,[System.Int32]1)
$tableLayoutPanel11.Dock = [System.Windows.Forms.DockStyle]::Fill
$tableLayoutPanel11.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]0))
$tableLayoutPanel11.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0))
$tableLayoutPanel11.Name = [System.String]'tableLayoutPanel11'
$tableLayoutPanel11.RowCount = [System.Int32]2
$tableLayoutPanel11.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Absolute,[System.Single]30)))
$tableLayoutPanel11.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]100)))
$tableLayoutPanel11.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]513,[System.Int32]177))
$tableLayoutPanel11.TabIndex = [System.Int32]0
#
#label2
#
$label2.AutoSize = $true
$label2.Dock = [System.Windows.Forms.DockStyle]::Fill
$label2.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]12,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$label2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]0))
$label2.Name = [System.String]'label2'
$label2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]507,[System.Int32]30))
$label2.TabIndex = [System.Int32]0
$label2.Text = [System.String]'Name this virtual machine'
$label2.TextAlign = [System.Drawing.ContentAlignment]::MiddleCenter
#
#panel10
#
$panel10.BackColor = [System.Drawing.SystemColors]::Window
$panel10.Controls.Add($envNameTextBox)
$panel10.Dock = [System.Windows.Forms.DockStyle]::Fill
$panel10.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]100,[System.Int32]70))
$panel10.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]100,[System.Int32]40,[System.Int32]100,[System.Int32]40))
$panel10.Name = [System.String]'panel10'
$panel10.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]10))
$panel10.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]313,[System.Int32]67))
$panel10.TabIndex = [System.Int32]1
#
#envNameTextBox
#
$envNameTextBox.BorderStyle = [System.Windows.Forms.BorderStyle]::None
$envNameTextBox.Dock = [System.Windows.Forms.DockStyle]::Fill
$envNameTextBox.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]12,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$envNameTextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]10,[System.Int32]10))
$envNameTextBox.Name = [System.String]'envNameTextBox'
$envNameTextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]293,[System.Int32]19))
$envNameTextBox.TabIndex = [System.Int32]0
#
#envAddButton
#
$envAddButton.BackColor = [System.Drawing.SystemColors]::ControlLight
$envAddButton.Dock = [System.Windows.Forms.DockStyle]::Fill
$envAddButton.FlatAppearance.BorderColor = [System.Drawing.SystemColors]::ControlDarkDark
$envAddButton.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$envAddButton.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Nirmala UI',[System.Single]14.25,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$envAddButton.ForeColor = [System.Drawing.SystemColors]::ControlDarkDark
$envAddButton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]100,[System.Int32]238))
$envAddButton.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]100,[System.Int32]3,[System.Int32]100,[System.Int32]3))
$envAddButton.Name = [System.String]'envAddButton'
$envAddButton.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]319,[System.Int32]44))
$envAddButton.TabIndex = [System.Int32]1
$envAddButton.Text = [System.String]'Add'
$envAddButton.UseVisualStyleBackColor = $false
$envAddButton.add_Click($envAddButton_Click)
#
#envSummaryListView
#
$envSummaryListView.BorderStyle = [System.Windows.Forms.BorderStyle]::FixedSingle
$envSummaryListView.Columns.AddRange([System.Windows.Forms.ColumnHeader[]]@($nameCol,$vmCol))
$envSummaryListView.Dock = [System.Windows.Forms.DockStyle]::Fill
$envSummaryListView.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]9.75,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$envSummaryListView.HideSelection = $false
$envSummaryListView.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]15,[System.Int32]300))
$envSummaryListView.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]15,[System.Int32]15,[System.Int32]15,[System.Int32]30))
$envSummaryListView.Name = [System.String]'envSummaryListView'
$envSummaryListView.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]489,[System.Int32]309))
$envSummaryListView.TabIndex = [System.Int32]2
$envSummaryListView.UseCompatibleStateImageBehavior = $false
$envSummaryListView.View = [System.Windows.Forms.View]::Details
$envSummaryListView.add_SelectedIndexChanged($envSummaryListView_SelectedIndexChanged)
#
#nameCol
#
$nameCol.Text = [System.String]'Name'
$nameCol.Width = [System.Int32]200
#
#vmCol
#
$vmCol.Text = [System.String]'Base VM'
$vmCol.Width = [System.Int32]250
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
#rolePanel
#
$rolePanel.Controls.Add($tableLayoutPanel17)
$rolePanel.Dock = [System.Windows.Forms.DockStyle]::Fill
$rolePanel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]0))
$rolePanel.Name = [System.String]'rolePanel'
$rolePanel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]857,[System.Int32]639))
$rolePanel.TabIndex = [System.Int32]3
#
#tableLayoutPanel17
#
$tableLayoutPanel17.ColumnCount = [System.Int32]1
$tableLayoutPanel17.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]100)))
$tableLayoutPanel17.Controls.Add($tableLayoutPanel13,[System.Int32]0,[System.Int32]1)
$tableLayoutPanel17.Controls.Add($tableLayoutPanel18,[System.Int32]0,[System.Int32]0)
$tableLayoutPanel17.Controls.Add($groupBox3,[System.Int32]0,[System.Int32]2)
$tableLayoutPanel17.Dock = [System.Windows.Forms.DockStyle]::Fill
$tableLayoutPanel17.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]0))
$tableLayoutPanel17.Name = [System.String]'tableLayoutPanel17'
$tableLayoutPanel17.RowCount = [System.Int32]3
$tableLayoutPanel17.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]50)))
$tableLayoutPanel17.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Absolute,[System.Single]50)))
$tableLayoutPanel17.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]50)))
$tableLayoutPanel17.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]857,[System.Int32]639))
$tableLayoutPanel17.TabIndex = [System.Int32]0
#
#tableLayoutPanel13
#
$tableLayoutPanel13.ColumnCount = [System.Int32]2
$tableLayoutPanel13.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]50)))
$tableLayoutPanel13.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]50)))
$tableLayoutPanel13.Controls.Add($roleAssignButton,[System.Int32]1,[System.Int32]0)
$tableLayoutPanel13.Controls.Add($tableLayoutPanel21,[System.Int32]0,[System.Int32]0)
$tableLayoutPanel13.Dock = [System.Windows.Forms.DockStyle]::Fill
$tableLayoutPanel13.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]297))
$tableLayoutPanel13.Name = [System.String]'tableLayoutPanel13'
$tableLayoutPanel13.RowCount = [System.Int32]1
$tableLayoutPanel13.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]100)))
$tableLayoutPanel13.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Absolute,[System.Single]44)))
$tableLayoutPanel13.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]851,[System.Int32]44))
$tableLayoutPanel13.TabIndex = [System.Int32]1
#
#roleAssignButton
#
$roleAssignButton.BackColor = [System.Drawing.SystemColors]::ControlLightLight
$roleAssignButton.Dock = [System.Windows.Forms.DockStyle]::Fill
$roleAssignButton.FlatAppearance.BorderColor = [System.Drawing.SystemColors]::ControlDark
$roleAssignButton.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$roleAssignButton.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]12,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$roleAssignButton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]475,[System.Int32]0))
$roleAssignButton.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]50,[System.Int32]0,[System.Int32]50,[System.Int32]0))
$roleAssignButton.Name = [System.String]'roleAssignButton'
$roleAssignButton.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]326,[System.Int32]44))
$roleAssignButton.TabIndex = [System.Int32]2
$roleAssignButton.Text = [System.String]'Assign'
$roleAssignButton.UseVisualStyleBackColor = $false
$roleAssignButton.add_Click($roleAssignButton_Click)
#
#tableLayoutPanel21
#
$tableLayoutPanel21.ColumnCount = [System.Int32]2
$tableLayoutPanel21.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]63.05882)))
$tableLayoutPanel21.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]36.94118)))
$tableLayoutPanel21.Controls.Add($roleSelectButton,[System.Int32]0,[System.Int32]0)
$tableLayoutPanel21.Controls.Add($roleSelectedLabel,[System.Int32]1,[System.Int32]0)
$tableLayoutPanel21.Dock = [System.Windows.Forms.DockStyle]::Fill
$tableLayoutPanel21.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]3))
$tableLayoutPanel21.Name = [System.String]'tableLayoutPanel21'
$tableLayoutPanel21.RowCount = [System.Int32]1
$tableLayoutPanel21.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]100)))
$tableLayoutPanel21.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]419,[System.Int32]38))
$tableLayoutPanel21.TabIndex = [System.Int32]3
#
#roleSelectButton
#
$roleSelectButton.BackColor = [System.Drawing.SystemColors]::ControlLightLight
$roleSelectButton.Dock = [System.Windows.Forms.DockStyle]::Fill
$roleSelectButton.FlatAppearance.BorderColor = [System.Drawing.SystemColors]::ControlDark
$roleSelectButton.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$roleSelectButton.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]12,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$roleSelectButton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]20,[System.Int32]0))
$roleSelectButton.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]20,[System.Int32]0,[System.Int32]10,[System.Int32]0))
$roleSelectButton.Name = [System.String]'roleSelectButton'
$roleSelectButton.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]234,[System.Int32]38))
$roleSelectButton.TabIndex = [System.Int32]3
$roleSelectButton.Text = [System.String]'Select'
$roleSelectButton.UseVisualStyleBackColor = $false
$roleSelectButton.add_Click($roleSelectButton_Click)
#
#roleSelectedLabel
#
$roleSelectedLabel.AutoSize = $true
$roleSelectedLabel.Dock = [System.Windows.Forms.DockStyle]::Fill
$roleSelectedLabel.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]9,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$roleSelectedLabel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]267,[System.Int32]0))
$roleSelectedLabel.Name = [System.String]'roleSelectedLabel'
$roleSelectedLabel.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]5,[System.Int32]0,[System.Int32]0,[System.Int32]0))
$roleSelectedLabel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]149,[System.Int32]38))
$roleSelectedLabel.TabIndex = [System.Int32]4
$roleSelectedLabel.Text = [System.String]'Selected: none'
$roleSelectedLabel.TextAlign = [System.Drawing.ContentAlignment]::MiddleLeft
#
#tableLayoutPanel18
#
$tableLayoutPanel18.ColumnCount = [System.Int32]2
$tableLayoutPanel18.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]50)))
$tableLayoutPanel18.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]50)))
$tableLayoutPanel18.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Absolute,[System.Single]20)))
$tableLayoutPanel18.Controls.Add($groupBox4,[System.Int32]0,[System.Int32]0)
$tableLayoutPanel18.Controls.Add($groupBox5,[System.Int32]1,[System.Int32]0)
$tableLayoutPanel18.Dock = [System.Windows.Forms.DockStyle]::Fill
$tableLayoutPanel18.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]3))
$tableLayoutPanel18.Name = [System.String]'tableLayoutPanel18'
$tableLayoutPanel18.RowCount = [System.Int32]1
$tableLayoutPanel18.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]100)))
$tableLayoutPanel18.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Absolute,[System.Single]288)))
$tableLayoutPanel18.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]851,[System.Int32]288))
$tableLayoutPanel18.TabIndex = [System.Int32]0
#
#groupBox4
#
$groupBox4.Controls.Add($permGroupTreeView)
$groupBox4.Dock = [System.Windows.Forms.DockStyle]::Fill
$groupBox4.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]9.75,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$groupBox4.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]3))
$groupBox4.Name = [System.String]'groupBox4'
$groupBox4.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]419,[System.Int32]282))
$groupBox4.TabIndex = [System.Int32]0
$groupBox4.TabStop = $false
$groupBox4.Text = [System.String]'Groups'
#
#permGroupTreeView
#
$permGroupTreeView.BorderStyle = [System.Windows.Forms.BorderStyle]::None
$permGroupTreeView.Dock = [System.Windows.Forms.DockStyle]::Fill
$permGroupTreeView.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]18))
$permGroupTreeView.Name = [System.String]'permGroupTreeView'
$permGroupTreeView.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]413,[System.Int32]261))
$permGroupTreeView.TabIndex = [System.Int32]0
#
#groupBox5
#
$groupBox5.Controls.Add($tableLayoutPanel19)
$groupBox5.Dock = [System.Windows.Forms.DockStyle]::Fill
$groupBox5.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]9.75,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$groupBox5.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]428,[System.Int32]3))
$groupBox5.Name = [System.String]'groupBox5'
$groupBox5.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]420,[System.Int32]282))
$groupBox5.TabIndex = [System.Int32]1
$groupBox5.TabStop = $false
$groupBox5.Text = [System.String]'Role'
#
#tableLayoutPanel19
#
$tableLayoutPanel19.ColumnCount = [System.Int32]1
$tableLayoutPanel19.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]100)))
$tableLayoutPanel19.Controls.Add($roleComboBox,[System.Int32]0,[System.Int32]1)
$tableLayoutPanel19.Controls.Add($label3,[System.Int32]0,[System.Int32]0)
$tableLayoutPanel19.Dock = [System.Windows.Forms.DockStyle]::Fill
$tableLayoutPanel19.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]18))
$tableLayoutPanel19.Name = [System.String]'tableLayoutPanel19'
$tableLayoutPanel19.RowCount = [System.Int32]2
$tableLayoutPanel19.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]44.44444)))
$tableLayoutPanel19.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]55.55556)))
$tableLayoutPanel19.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]414,[System.Int32]261))
$tableLayoutPanel19.TabIndex = [System.Int32]0
#
#roleComboBox
#
$roleComboBox.Dock = [System.Windows.Forms.DockStyle]::Top
$roleComboBox.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$roleComboBox.FormattingEnabled = $true
$roleComboBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]50,[System.Int32]125))
$roleComboBox.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]50,[System.Int32]10,[System.Int32]50,[System.Int32]0))
$roleComboBox.Name = [System.String]'roleComboBox'
$roleComboBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]314,[System.Int32]24))
$roleComboBox.TabIndex = [System.Int32]1
#
#label3
#
$label3.AutoSize = $true
$label3.Dock = [System.Windows.Forms.DockStyle]::Fill
$label3.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]0))
$label3.Name = [System.String]'label3'
$label3.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]45,[System.Int32]0,[System.Int32]0,[System.Int32]0))
$label3.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]408,[System.Int32]115))
$label3.TabIndex = [System.Int32]2
$label3.Text = [System.String]'Which role should this group have?'
$label3.TextAlign = [System.Drawing.ContentAlignment]::BottomLeft
#
#groupBox3
#
$groupBox3.Controls.Add($roleAssnListView)
$groupBox3.Dock = [System.Windows.Forms.DockStyle]::Fill
$groupBox3.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$groupBox3.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]12,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$groupBox3.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]150,[System.Int32]347))
$groupBox3.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]150,[System.Int32]3,[System.Int32]150,[System.Int32]3))
$groupBox3.Name = [System.String]'groupBox3'
$groupBox3.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]557,[System.Int32]289))
$groupBox3.TabIndex = [System.Int32]1
$groupBox3.TabStop = $false
$groupBox3.Text = [System.String]'Role Assignments'
$groupBox3.add_Enter($groupBox3_Enter)
#
#roleAssnListView
#
$roleAssnListView.BorderStyle = [System.Windows.Forms.BorderStyle]::None
$roleAssnListView.Columns.AddRange([System.Windows.Forms.ColumnHeader[]]@($groupHeader,$roleHeader))
$roleAssnListView.Dock = [System.Windows.Forms.DockStyle]::Fill
$roleAssnListView.HeaderStyle = [System.Windows.Forms.ColumnHeaderStyle]::Nonclickable
$roleAssnListView.HideSelection = $false
$roleAssnListView.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]22))
$roleAssnListView.Name = [System.String]'roleAssnListView'
$roleAssnListView.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]551,[System.Int32]264))
$roleAssnListView.TabIndex = [System.Int32]0
$roleAssnListView.UseCompatibleStateImageBehavior = $false
$roleAssnListView.View = [System.Windows.Forms.View]::Details
#
#groupHeader
#
$groupHeader.Text = [System.String]'Group'
$groupHeader.Width = [System.Int32]200
#
#roleHeader
#
$roleHeader.Text = [System.String]'Role'
$roleHeader.Width = [System.Int32]200
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
$tableLayoutPanel2.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]57.64294)))
$tableLayoutPanel2.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]42.35706)))
$tableLayoutPanel2.Controls.Add($groupBox6,[System.Int32]1,[System.Int32]0)
$tableLayoutPanel2.Controls.Add($tableLayoutPanel3,[System.Int32]0,[System.Int32]0)
$tableLayoutPanel2.Dock = [System.Windows.Forms.DockStyle]::Fill
$tableLayoutPanel2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]0))
$tableLayoutPanel2.Name = [System.String]'tableLayoutPanel2'
$tableLayoutPanel2.RowCount = [System.Int32]1
$tableLayoutPanel2.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]100)))
$tableLayoutPanel2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]857,[System.Int32]639))
$tableLayoutPanel2.TabIndex = [System.Int32]0
#
#groupBox6
#
$groupBox6.Controls.Add($netListView)
$groupBox6.Dock = [System.Windows.Forms.DockStyle]::Fill
$groupBox6.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]9.75,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$groupBox6.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]569,[System.Int32]100))
$groupBox6.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]75,[System.Int32]100,[System.Int32]75,[System.Int32]100))
$groupBox6.Name = [System.String]'groupBox6'
$groupBox6.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]213,[System.Int32]439))
$groupBox6.TabIndex = [System.Int32]4
$groupBox6.TabStop = $false
$groupBox6.Text = [System.String]'Networks'
#
#netListView
#
$netListView.BorderStyle = [System.Windows.Forms.BorderStyle]::None
$netListView.Dock = [System.Windows.Forms.DockStyle]::Fill
$netListView.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]12,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$netListView.HideSelection = $false
$netListView.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]18))
$netListView.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]30,[System.Int32]100,[System.Int32]30,[System.Int32]100))
$netListView.Name = [System.String]'netListView'
$netListView.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]207,[System.Int32]418))
$netListView.TabIndex = [System.Int32]2
$netListView.UseCompatibleStateImageBehavior = $false
$netListView.View = [System.Windows.Forms.View]::List
#
#tableLayoutPanel3
#
$tableLayoutPanel3.ColumnCount = [System.Int32]1
$tableLayoutPanel3.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]100)))
$tableLayoutPanel3.Controls.Add($panel1,[System.Int32]0,[System.Int32]2)
$tableLayoutPanel3.Controls.Add($netAddButton,[System.Int32]0,[System.Int32]3)
$tableLayoutPanel3.Controls.Add($label4,[System.Int32]0,[System.Int32]1)
$tableLayoutPanel3.Dock = [System.Windows.Forms.DockStyle]::Fill
$tableLayoutPanel3.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]3))
$tableLayoutPanel3.Name = [System.String]'tableLayoutPanel3'
$tableLayoutPanel3.RowCount = [System.Int32]5
$tableLayoutPanel3.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]50)))
$tableLayoutPanel3.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Absolute,[System.Single]50)))
$tableLayoutPanel3.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Absolute,[System.Single]50)))
$tableLayoutPanel3.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Absolute,[System.Single]50)))
$tableLayoutPanel3.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]50)))
$tableLayoutPanel3.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]488,[System.Int32]633))
$tableLayoutPanel3.TabIndex = [System.Int32]0
#
#panel1
#
$panel1.BackColor = [System.Drawing.SystemColors]::Window
$panel1.Controls.Add($netTextBox)
$panel1.Dock = [System.Windows.Forms.DockStyle]::Right
$panel1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]96,[System.Int32]294))
$panel1.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]30,[System.Int32]3,[System.Int32]30,[System.Int32]3))
$panel1.Name = [System.String]'panel1'
$panel1.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]12))
$panel1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]362,[System.Int32]44))
$panel1.TabIndex = [System.Int32]0
$panel1.add_Paint($panel1_Paint)
#
#netTextBox
#
$netTextBox.BorderStyle = [System.Windows.Forms.BorderStyle]::None
$netTextBox.Dock = [System.Windows.Forms.DockStyle]::Fill
$netTextBox.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Nirmala UI',[System.Single]12,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$netTextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]12))
$netTextBox.Name = [System.String]'netTextBox'
$netTextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]338,[System.Int32]22))
$netTextBox.TabIndex = [System.Int32]0
#
#netAddButton
#
$netAddButton.BackColor = [System.Drawing.SystemColors]::ControlLight
$netAddButton.Dock = [System.Windows.Forms.DockStyle]::Right
$netAddButton.FlatAppearance.MouseDownBackColor = [System.Drawing.Color]::Silver
$netAddButton.FlatAppearance.MouseOverBackColor = [System.Drawing.Color]::Gainsboro
$netAddButton.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$netAddButton.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Nirmala UI',[System.Single]12,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$netAddButton.ForeColor = [System.Drawing.SystemColors]::ControlDarkDark
$netAddButton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]96,[System.Int32]344))
$netAddButton.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]30,[System.Int32]3,[System.Int32]30,[System.Int32]3))
$netAddButton.Name = [System.String]'netAddButton'
$netAddButton.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]362,[System.Int32]44))
$netAddButton.TabIndex = [System.Int32]1
$netAddButton.Text = [System.String]'Add'
$netAddButton.UseVisualStyleBackColor = $false
$netAddButton.add_Click($netAddButton_Click)
#
#label4
#
$label4.AutoSize = $true
$label4.Dock = [System.Windows.Forms.DockStyle]::Right
$label4.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]107,[System.Int32]241))
$label4.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]80,[System.Int32]0,[System.Int32]40,[System.Int32]10))
$label4.Name = [System.String]'label4'
$label4.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]341,[System.Int32]40))
$label4.TabIndex = [System.Int32]2
$label4.Text = [System.String]'Enter the names of the networks to be created, separated by commas. Names should only include letters and numbers.'
$label4.TextAlign = [System.Drawing.ContentAlignment]::BottomLeft
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
$tableLayoutPanel1.ColumnCount = [System.Int32]2
$tableLayoutPanel1.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]40)))
$tableLayoutPanel1.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]60)))
$tableLayoutPanel1.Controls.Add($tableLayoutPanel5,[System.Int32]0,[System.Int32]0)
$tableLayoutPanel1.Controls.Add($tableLayoutPanel6,[System.Int32]1,[System.Int32]0)
$tableLayoutPanel1.Dock = [System.Windows.Forms.DockStyle]::Fill
$tableLayoutPanel1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]0))
$tableLayoutPanel1.Name = [System.String]'tableLayoutPanel1'
$tableLayoutPanel1.RowCount = [System.Int32]1
$tableLayoutPanel1.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]100)))
$tableLayoutPanel1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]857,[System.Int32]639))
$tableLayoutPanel1.TabIndex = [System.Int32]1
$tableLayoutPanel1.add_Paint($tableLayoutPanel1_Paint)
#
#tableLayoutPanel5
#
$tableLayoutPanel5.ColumnCount = [System.Int32]1
$tableLayoutPanel5.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]100)))
$tableLayoutPanel5.Controls.Add($groupBox1,[System.Int32]0,[System.Int32]0)
$tableLayoutPanel5.Controls.Add($rosterUserListBox,[System.Int32]0,[System.Int32]1)
$tableLayoutPanel5.Controls.Add($tableLayoutPanel16,[System.Int32]0,[System.Int32]2)
$tableLayoutPanel5.Dock = [System.Windows.Forms.DockStyle]::Fill
$tableLayoutPanel5.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]3))
$tableLayoutPanel5.Name = [System.String]'tableLayoutPanel5'
$tableLayoutPanel5.RowCount = [System.Int32]3
$tableLayoutPanel5.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Absolute,[System.Single]100)))
$tableLayoutPanel5.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]100)))
$tableLayoutPanel5.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Absolute,[System.Single]100)))
$tableLayoutPanel5.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Absolute,[System.Single]20)))
$tableLayoutPanel5.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]336,[System.Int32]633))
$tableLayoutPanel5.TabIndex = [System.Int32]0
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
$groupBox1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]236,[System.Int32]50))
$groupBox1.TabIndex = [System.Int32]2
$groupBox1.TabStop = $false
$groupBox1.Text = [System.String]'Filter'
#
#rosterFilterTextBox
#
$rosterFilterTextBox.BorderStyle = [System.Windows.Forms.BorderStyle]::None
$rosterFilterTextBox.Dock = [System.Windows.Forms.DockStyle]::Bottom
$rosterFilterTextBox.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Nirmala Text',[System.Single]9.75,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$rosterFilterTextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]22))
$rosterFilterTextBox.Name = [System.String]'rosterFilterTextBox'
$rosterFilterTextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]230,[System.Int32]25))
$rosterFilterTextBox.TabIndex = [System.Int32]0
#
#rosterUserListBox
#
$rosterUserListBox.BorderStyle = [System.Windows.Forms.BorderStyle]::None
$rosterUserListBox.Dock = [System.Windows.Forms.DockStyle]::Fill
$rosterUserListBox.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]9.75,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$rosterUserListBox.FormattingEnabled = $true
$rosterUserListBox.ItemHeight = [System.Int32]16
$rosterUserListBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]30,[System.Int32]100))
$rosterUserListBox.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]30,[System.Int32]0,[System.Int32]30,[System.Int32]0))
$rosterUserListBox.Name = [System.String]'rosterUserListBox'
$rosterUserListBox.SelectionMode = [System.Windows.Forms.SelectionMode]::MultiExtended
$rosterUserListBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]276,[System.Int32]433))
$rosterUserListBox.TabIndex = [System.Int32]3
#
#tableLayoutPanel16
#
$tableLayoutPanel16.ColumnCount = [System.Int32]1
$tableLayoutPanel16.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]100)))
$tableLayoutPanel16.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Absolute,[System.Single]20)))
$tableLayoutPanel16.Controls.Add($rosterSelectButton,[System.Int32]0,[System.Int32]0)
$tableLayoutPanel16.Controls.Add($selectText,[System.Int32]0,[System.Int32]1)
$tableLayoutPanel16.Dock = [System.Windows.Forms.DockStyle]::Fill
$tableLayoutPanel16.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]536))
$tableLayoutPanel16.Name = [System.String]'tableLayoutPanel16'
$tableLayoutPanel16.RowCount = [System.Int32]2
$tableLayoutPanel16.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]60)))
$tableLayoutPanel16.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]40)))
$tableLayoutPanel16.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]330,[System.Int32]94))
$tableLayoutPanel16.TabIndex = [System.Int32]4
#
#rosterSelectButton
#
$rosterSelectButton.BackColor = [System.Drawing.SystemColors]::ControlLight
$rosterSelectButton.Dock = [System.Windows.Forms.DockStyle]::Fill
$rosterSelectButton.FlatAppearance.BorderColor = [System.Drawing.SystemColors]::ControlDarkDark
$rosterSelectButton.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$rosterSelectButton.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Nirmala UI',[System.Single]9.75,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$rosterSelectButton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]30,[System.Int32]10))
$rosterSelectButton.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]30,[System.Int32]10,[System.Int32]30,[System.Int32]5))
$rosterSelectButton.Name = [System.String]'rosterSelectButton'
$rosterSelectButton.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]270,[System.Int32]41))
$rosterSelectButton.TabIndex = [System.Int32]5
$rosterSelectButton.Text = [System.String]'Select'
$rosterSelectButton.UseVisualStyleBackColor = $false
$rosterSelectButton.add_Click($rosterSelectButton_Click)
#
#selectText
#
$selectText.AutoSize = $true
$selectText.Dock = [System.Windows.Forms.DockStyle]::Fill
$selectText.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]9,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$selectText.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]56))
$selectText.Name = [System.String]'selectText'
$selectText.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]324,[System.Int32]38))
$selectText.TabIndex = [System.Int32]6
$selectText.TextAlign = [System.Drawing.ContentAlignment]::MiddleCenter
#
#tableLayoutPanel6
#
$tableLayoutPanel6.ColumnCount = [System.Int32]1
$tableLayoutPanel6.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]100)))
$tableLayoutPanel6.Controls.Add($rosterAddButton,[System.Int32]0,[System.Int32]1)
$tableLayoutPanel6.Controls.Add($groupBox,[System.Int32]0,[System.Int32]0)
$tableLayoutPanel6.Controls.Add($rosterListView,[System.Int32]0,[System.Int32]2)
$tableLayoutPanel6.Dock = [System.Windows.Forms.DockStyle]::Fill
$tableLayoutPanel6.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]345,[System.Int32]3))
$tableLayoutPanel6.Name = [System.String]'tableLayoutPanel6'
$tableLayoutPanel6.RowCount = [System.Int32]3
$tableLayoutPanel6.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]40)))
$tableLayoutPanel6.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Absolute,[System.Single]50)))
$tableLayoutPanel6.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]60)))
$tableLayoutPanel6.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]509,[System.Int32]633))
$tableLayoutPanel6.TabIndex = [System.Int32]1
#
#rosterAddButton
#
$rosterAddButton.BackColor = [System.Drawing.SystemColors]::ControlLight
$rosterAddButton.Dock = [System.Windows.Forms.DockStyle]::Fill
$rosterAddButton.FlatAppearance.BorderColor = [System.Drawing.SystemColors]::ControlDarkDark
$rosterAddButton.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$rosterAddButton.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Nirmala UI',[System.Single]14.25,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$rosterAddButton.ForeColor = [System.Drawing.SystemColors]::ControlText
$rosterAddButton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]100,[System.Int32]236))
$rosterAddButton.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]100,[System.Int32]3,[System.Int32]100,[System.Int32]3))
$rosterAddButton.Name = [System.String]'rosterAddButton'
$rosterAddButton.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]309,[System.Int32]44))
$rosterAddButton.TabIndex = [System.Int32]2
$rosterAddButton.Text = [System.String]'Add'
$rosterAddButton.UseVisualStyleBackColor = $false
$rosterAddButton.add_Click($rosterAddButton_Click)
#
#groupBox
#
$groupBox.Controls.Add($tableLayoutPanel15)
$groupBox.Dock = [System.Windows.Forms.DockStyle]::Fill
$groupBox.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$groupBox.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]9.75,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$groupBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]3))
$groupBox.Name = [System.String]'groupBox'
$groupBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]503,[System.Int32]227))
$groupBox.TabIndex = [System.Int32]0
$groupBox.TabStop = $false
$groupBox.Text = [System.String]'Group'
#
#tableLayoutPanel15
#
$tableLayoutPanel15.ColumnCount = [System.Int32]1
$tableLayoutPanel15.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]100)))
$tableLayoutPanel15.Controls.Add($label6,[System.Int32]0,[System.Int32]0)
$tableLayoutPanel15.Controls.Add($panel7,[System.Int32]0,[System.Int32]1)
$tableLayoutPanel15.Dock = [System.Windows.Forms.DockStyle]::Fill
$tableLayoutPanel15.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]18))
$tableLayoutPanel15.Name = [System.String]'tableLayoutPanel15'
$tableLayoutPanel15.RowCount = [System.Int32]2
$tableLayoutPanel15.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]35)))
$tableLayoutPanel15.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]65)))
$tableLayoutPanel15.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]497,[System.Int32]206))
$tableLayoutPanel15.TabIndex = [System.Int32]0
#
#label6
#
$label6.AutoSize = $true
$label6.Dock = [System.Windows.Forms.DockStyle]::Fill
$label6.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]9.75,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$label6.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]0))
$label6.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]3,[System.Int32]0,[System.Int32]3,[System.Int32]3))
$label6.Name = [System.String]'label6'
$label6.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]50,[System.Int32]0,[System.Int32]0,[System.Int32]0))
$label6.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]491,[System.Int32]69))
$label6.TabIndex = [System.Int32]0
$label6.Text = [System.String]'Enter a name for this group:'
$label6.TextAlign = [System.Drawing.ContentAlignment]::BottomLeft
#
#panel7
#
$panel7.BackColor = [System.Drawing.SystemColors]::Window
$panel7.Controls.Add($groupTextBox)
$panel7.Dock = [System.Windows.Forms.DockStyle]::Fill
$panel7.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]50,[System.Int32]72))
$panel7.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]50,[System.Int32]0,[System.Int32]50,[System.Int32]70))
$panel7.Name = [System.String]'panel7'
$panel7.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]20))
$panel7.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]397,[System.Int32]64))
$panel7.TabIndex = [System.Int32]1
#
#groupTextBox
#
$groupTextBox.BorderStyle = [System.Windows.Forms.BorderStyle]::None
$groupTextBox.Dock = [System.Windows.Forms.DockStyle]::Fill
$groupTextBox.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]12,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$groupTextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]20,[System.Int32]20))
$groupTextBox.Name = [System.String]'groupTextBox'
$groupTextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]357,[System.Int32]19))
$groupTextBox.TabIndex = [System.Int32]0
#
#rosterListView
#
$rosterListView.BorderStyle = [System.Windows.Forms.BorderStyle]::None
$rosterListView.Columns.AddRange([System.Windows.Forms.ColumnHeader[]]@($userCol,$groupCol))
$rosterListView.Dock = [System.Windows.Forms.DockStyle]::Fill
$rosterListView.HeaderStyle = [System.Windows.Forms.ColumnHeaderStyle]::Nonclickable
$rosterListView.HideSelection = $false
$rosterListView.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]15,[System.Int32]298))
$rosterListView.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]15,[System.Int32]15,[System.Int32]15,[System.Int32]30))
$rosterListView.MultiSelect = $false
$rosterListView.Name = [System.String]'rosterListView'
$rosterListView.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]479,[System.Int32]305))
$rosterListView.TabIndex = [System.Int32]1
$rosterListView.UseCompatibleStateImageBehavior = $false
$rosterListView.View = [System.Windows.Forms.View]::Details
#
#userCol
#
$userCol.Text = [System.String]'User'
$userCol.Width = [System.Int32]150
#
#groupCol
#
$groupCol.Text = [System.String]'Group'
$groupCol.Width = [System.Int32]200
#
#loginPanel
#
$loginPanel.ColumnCount = [System.Int32]3
$loginPanel.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]45)))
$loginPanel.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]45)))
$loginPanel.ColumnStyles.Add((New-Object -TypeName System.Windows.Forms.ColumnStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]10)))
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
$loginInfoTable.Controls.Add($usernameGroupBox,[System.Int32]0,[System.Int32]1)
$loginInfoTable.Controls.Add($domainGroupBox,[System.Int32]0,[System.Int32]2)
$loginInfoTable.Controls.Add($tokenNameGroupBox,[System.Int32]0,[System.Int32]3)
$loginInfoTable.Controls.Add($tokenGroupBox,[System.Int32]0,[System.Int32]4)
$loginInfoTable.Controls.Add($nodeGroupBox,[System.Int32]0,[System.Int32]5)
$loginInfoTable.Controls.Add($loginButton,[System.Int32]0,[System.Int32]6)
$loginInfoTable.Dock = [System.Windows.Forms.DockStyle]::Fill
$loginInfoTable.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]456,[System.Int32]3))
$loginInfoTable.Name = [System.String]'loginInfoTable'
$loginInfoTable.RowCount = [System.Int32]8
$loginInfoTable.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Absolute,[System.Single]20)))
$loginInfoTable.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]20)))
$loginInfoTable.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]20)))
$loginInfoTable.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]20)))
$loginInfoTable.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]20)))
$loginInfoTable.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Percent,[System.Single]20)))
$loginInfoTable.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Absolute,[System.Single]40)))
$loginInfoTable.RowStyles.Add((New-Object -TypeName System.Windows.Forms.RowStyle -ArgumentList @([System.Windows.Forms.SizeType]::Absolute,[System.Single]20)))
$loginInfoTable.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]447,[System.Int32]723))
$loginInfoTable.TabIndex = [System.Int32]1
#
#usernameGroupBox
#
$usernameGroupBox.BackColor = [System.Drawing.SystemColors]::Control
$usernameGroupBox.Controls.Add($panel6)
$usernameGroupBox.Dock = [System.Windows.Forms.DockStyle]::Fill
$usernameGroupBox.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$usernameGroupBox.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Nirmala UI',[System.Single]9.75,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$usernameGroupBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]23))
$usernameGroupBox.Name = [System.String]'usernameGroupBox'
$usernameGroupBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]441,[System.Int32]122))
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
$panel6.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]30,[System.Int32]40,[System.Int32]30,[System.Int32]30))
$panel6.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]435,[System.Int32]98))
$panel6.TabIndex = [System.Int32]0
#
#usernameTextBox
#
$usernameTextBox.BackColor = [System.Drawing.SystemColors]::GradientInactiveCaption
$usernameTextBox.BorderStyle = [System.Windows.Forms.BorderStyle]::None
$usernameTextBox.Dock = [System.Windows.Forms.DockStyle]::Fill
$usernameTextBox.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]12,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$usernameTextBox.ForeColor = [System.Drawing.SystemColors]::WindowText
$usernameTextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]30,[System.Int32]40))
$usernameTextBox.Name = [System.String]'usernameTextBox'
$usernameTextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]375,[System.Int32]19))
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
$domainGroupBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]151))
$domainGroupBox.Name = [System.String]'domainGroupBox'
$domainGroupBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]441,[System.Int32]122))
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
$panel2.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]30,[System.Int32]40,[System.Int32]30,[System.Int32]30))
$panel2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]435,[System.Int32]98))
$panel2.TabIndex = [System.Int32]0
#
#domainTextBox
#
$domainTextBox.BackColor = [System.Drawing.SystemColors]::GradientInactiveCaption
$domainTextBox.BorderStyle = [System.Windows.Forms.BorderStyle]::None
$domainTextBox.Dock = [System.Windows.Forms.DockStyle]::Fill
$domainTextBox.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]12,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$domainTextBox.ForeColor = [System.Drawing.SystemColors]::Desktop
$domainTextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]30,[System.Int32]40))
$domainTextBox.Name = [System.String]'domainTextBox'
$domainTextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]375,[System.Int32]19))
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
$tokenNameGroupBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]279))
$tokenNameGroupBox.Name = [System.String]'tokenNameGroupBox'
$tokenNameGroupBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]441,[System.Int32]122))
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
$panel3.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]30,[System.Int32]40,[System.Int32]30,[System.Int32]30))
$panel3.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]435,[System.Int32]98))
$panel3.TabIndex = [System.Int32]0
#
#tokenNameTextBox
#
$tokenNameTextBox.BackColor = [System.Drawing.SystemColors]::GradientInactiveCaption
$tokenNameTextBox.BorderStyle = [System.Windows.Forms.BorderStyle]::None
$tokenNameTextBox.Dock = [System.Windows.Forms.DockStyle]::Fill
$tokenNameTextBox.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]12,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$tokenNameTextBox.ForeColor = [System.Drawing.SystemColors]::Desktop
$tokenNameTextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]30,[System.Int32]40))
$tokenNameTextBox.Name = [System.String]'tokenNameTextBox'
$tokenNameTextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]375,[System.Int32]19))
$tokenNameTextBox.TabIndex = [System.Int32]0
#
#tokenGroupBox
#
$tokenGroupBox.BackColor = [System.Drawing.SystemColors]::Control
$tokenGroupBox.Controls.Add($panel4)
$tokenGroupBox.Dock = [System.Windows.Forms.DockStyle]::Fill
$tokenGroupBox.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$tokenGroupBox.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Nirmala UI',[System.Single]9.75,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$tokenGroupBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]407))
$tokenGroupBox.Name = [System.String]'tokenGroupBox'
$tokenGroupBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]441,[System.Int32]122))
$tokenGroupBox.TabIndex = [System.Int32]3
$tokenGroupBox.TabStop = $false
$tokenGroupBox.Text = [System.String]'API Token Value'
#
#panel4
#
$panel4.BackColor = [System.Drawing.SystemColors]::ControlLightLight
$panel4.Controls.Add($tokenValueMaskedTextBox)
$panel4.Dock = [System.Windows.Forms.DockStyle]::Fill
$panel4.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]21))
$panel4.Name = [System.String]'panel4'
$panel4.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]30,[System.Int32]40,[System.Int32]30,[System.Int32]30))
$panel4.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]435,[System.Int32]98))
$panel4.TabIndex = [System.Int32]0
#
#tokenValueMaskedTextBox
#
$tokenValueMaskedTextBox.BackColor = [System.Drawing.SystemColors]::GradientInactiveCaption
$tokenValueMaskedTextBox.BorderStyle = [System.Windows.Forms.BorderStyle]::None
$tokenValueMaskedTextBox.Dock = [System.Windows.Forms.DockStyle]::Fill
$tokenValueMaskedTextBox.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]12,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$tokenValueMaskedTextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]30,[System.Int32]40))
$tokenValueMaskedTextBox.Name = [System.String]'tokenValueMaskedTextBox'
$tokenValueMaskedTextBox.PasswordChar = [System.Char]'*'
$tokenValueMaskedTextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]375,[System.Int32]19))
$tokenValueMaskedTextBox.TabIndex = [System.Int32]0
#
#nodeGroupBox
#
$nodeGroupBox.BackColor = [System.Drawing.SystemColors]::Control
$nodeGroupBox.Controls.Add($panel5)
$nodeGroupBox.Dock = [System.Windows.Forms.DockStyle]::Fill
$nodeGroupBox.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$nodeGroupBox.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Nirmala UI',[System.Single]9.75,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$nodeGroupBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]535))
$nodeGroupBox.Name = [System.String]'nodeGroupBox'
$nodeGroupBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]441,[System.Int32]122))
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
$panel5.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]30,[System.Int32]40,[System.Int32]30,[System.Int32]30))
$panel5.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]435,[System.Int32]98))
$panel5.TabIndex = [System.Int32]0
#
#nodeTextBox
#
$nodeTextBox.BackColor = [System.Drawing.SystemColors]::GradientInactiveCaption
$nodeTextBox.BorderStyle = [System.Windows.Forms.BorderStyle]::None
$nodeTextBox.Dock = [System.Windows.Forms.DockStyle]::Fill
$nodeTextBox.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]12,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$nodeTextBox.ForeColor = [System.Drawing.SystemColors]::Desktop
$nodeTextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]30,[System.Int32]40))
$nodeTextBox.Name = [System.String]'nodeTextBox'
$nodeTextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]375,[System.Int32]19))
$nodeTextBox.TabIndex = [System.Int32]0
#
#loginButton
#
$loginButton.BackColor = [System.Drawing.Color]::LightSteelBlue
$loginButton.Dock = [System.Windows.Forms.DockStyle]::Fill
$loginButton.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$loginButton.ForeColor = [System.Drawing.SystemColors]::ControlText
$loginButton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]663))
$loginButton.Name = [System.String]'loginButton'
$loginButton.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]441,[System.Int32]34))
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
$tableLayoutPanel4.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]447,[System.Int32]723))
$tableLayoutPanel4.TabIndex = [System.Int32]0
#
#label1
#
$label1.AutoSize = $true
$label1.Dock = [System.Windows.Forms.DockStyle]::Fill
$label1.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Nirmala UI',[System.Single]39.75,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$label1.ForeColor = [System.Drawing.Color]::RoyalBlue
$label1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]241))
$label1.Name = [System.String]'label1'
$label1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]441,[System.Int32]241))
$label1.TabIndex = [System.Int32]0
$label1.Text = [System.String]'Welcome!'
$label1.TextAlign = [System.Drawing.ContentAlignment]::MiddleCenter
#
#panel8
#
$panel8.BackColor = [System.Drawing.SystemColors]::ControlLight
$panel8.Dock = [System.Windows.Forms.DockStyle]::Fill
$panel8.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]0))
$panel8.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0))
$panel8.Name = [System.String]'panel8'
$panel8.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1008,[System.Int32]45))
$panel8.TabIndex = [System.Int32]3
#
#WarriorRange
#
$WarriorRange.AutoScaleDimensions = (New-Object -TypeName System.Drawing.SizeF -ArgumentList @([System.Single]96,[System.Single]96))
$WarriorRange.AutoScaleMode = [System.Windows.Forms.AutoScaleMode]::Dpi
$WarriorRange.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1008,[System.Int32]729))
$WarriorRange.Controls.Add($main)
$WarriorRange.Controls.Add($loginPanel)
$WarriorRange.MaximumSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1024,[System.Int32]768))
$WarriorRange.MinimumSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1024,[System.Int32]768))
$WarriorRange.Name = [System.String]'WarriorRange'
$WarriorRange.Text = [System.String]'Warrior Range'
$WarriorRange.add_Load($WarriorRange_Load)
$main.ResumeLayout($false)
$configurationTable.ResumeLayout($false)
$sidePanel.ResumeLayout($false)
$sidePanel.PerformLayout()
$buttonPanel.ResumeLayout($false)
$informationPanel.ResumeLayout($false)
$summaryPanel.ResumeLayout($false)
$tableLayoutPanel12.ResumeLayout($false)
$groupBox10.ResumeLayout($false)
$groupBox9.ResumeLayout($false)
$groupBox8.ResumeLayout($false)
$groupBox7.ResumeLayout($false)
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
$tableLayoutPanel11.ResumeLayout($false)
$tableLayoutPanel11.PerformLayout()
$panel10.ResumeLayout($false)
$panel10.PerformLayout()
$rolePanel.ResumeLayout($false)
$tableLayoutPanel17.ResumeLayout($false)
$tableLayoutPanel13.ResumeLayout($false)
$tableLayoutPanel21.ResumeLayout($false)
$tableLayoutPanel21.PerformLayout()
$tableLayoutPanel18.ResumeLayout($false)
$groupBox4.ResumeLayout($false)
$groupBox5.ResumeLayout($false)
$tableLayoutPanel19.ResumeLayout($false)
$tableLayoutPanel19.PerformLayout()
$groupBox3.ResumeLayout($false)
$netPanel.ResumeLayout($false)
$tableLayoutPanel2.ResumeLayout($false)
$groupBox6.ResumeLayout($false)
$tableLayoutPanel3.ResumeLayout($false)
$tableLayoutPanel3.PerformLayout()
$panel1.ResumeLayout($false)
$panel1.PerformLayout()
$rosterPanel.ResumeLayout($false)
$tableLayoutPanel1.ResumeLayout($false)
$tableLayoutPanel5.ResumeLayout($false)
$groupBox1.ResumeLayout($false)
$groupBox1.PerformLayout()
$tableLayoutPanel16.ResumeLayout($false)
$tableLayoutPanel16.PerformLayout()
$tableLayoutPanel6.ResumeLayout($false)
$groupBox.ResumeLayout($false)
$tableLayoutPanel15.ResumeLayout($false)
$tableLayoutPanel15.PerformLayout()
$panel7.ResumeLayout($false)
$panel7.PerformLayout()
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
Add-Member -InputObject $WarriorRange -Name rosterLabel -Value $rosterLabel -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name roleLabel -Value $roleLabel -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name netLabel -Value $netLabel -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name envLabel -Value $envLabel -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name tableLayoutPanel1 -Value $tableLayoutPanel1 -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name tableLayoutPanel2 -Value $tableLayoutPanel2 -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name tableLayoutPanel3 -Value $tableLayoutPanel3 -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name panel1 -Value $panel1 -MemberType NoteProperty
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
Add-Member -InputObject $WarriorRange -Name tokenNameTextBox -Value $tokenNameTextBox -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name tableLayoutPanel5 -Value $tableLayoutPanel5 -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name groupBox1 -Value $groupBox1 -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name tableLayoutPanel7 -Value $tableLayoutPanel7 -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name tableLayoutPanel8 -Value $tableLayoutPanel8 -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name rosterFilterTextBox -Value $rosterFilterTextBox -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name tableLayoutPanel9 -Value $tableLayoutPanel9 -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name envImportTreeView -Value $envImportTreeView -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name tableLayoutPanel10 -Value $tableLayoutPanel10 -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name envConfigGroupBox -Value $envConfigGroupBox -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name tableLayoutPanel11 -Value $tableLayoutPanel11 -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name label2 -Value $label2 -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name envSelectButton -Value $envSelectButton -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name envAddButton -Value $envAddButton -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name nameCol -Value $nameCol -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name vmCol -Value $vmCol -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name envSummaryListView -Value $envSummaryListView -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name tableLayoutPanel14 -Value $tableLayoutPanel14 -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name groupBox2 -Value $groupBox2 -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name textBox2 -Value $textBox2 -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name components -Value $components -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name netTextBox -Value $netTextBox -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name netAddButton -Value $netAddButton -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name rosterUserListBox -Value $rosterUserListBox -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name tableLayoutPanel6 -Value $tableLayoutPanel6 -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name groupBox -Value $groupBox -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name tableLayoutPanel15 -Value $tableLayoutPanel15 -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name label6 -Value $label6 -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name panel7 -Value $panel7 -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name userCol -Value $userCol -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name groupCol -Value $groupCol -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name rosterAddButton -Value $rosterAddButton -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name groupTextBox -Value $groupTextBox -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name tableLayoutPanel16 -Value $tableLayoutPanel16 -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name rosterSelectButton -Value $rosterSelectButton -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name selectText -Value $selectText -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name rosterListView -Value $rosterListView -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name tableLayoutPanel17 -Value $tableLayoutPanel17 -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name tableLayoutPanel18 -Value $tableLayoutPanel18 -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name groupBox3 -Value $groupBox3 -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name groupBox4 -Value $groupBox4 -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name permGroupTreeView -Value $permGroupTreeView -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name groupBox5 -Value $groupBox5 -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name panel10 -Value $panel10 -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name envNameTextBox -Value $envNameTextBox -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name roleAssignButton -Value $roleAssignButton -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name tableLayoutPanel13 -Value $tableLayoutPanel13 -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name tableLayoutPanel21 -Value $tableLayoutPanel21 -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name roleSelectedLabel -Value $roleSelectedLabel -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name roleSelectButton -Value $roleSelectButton -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name tableLayoutPanel19 -Value $tableLayoutPanel19 -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name label3 -Value $label3 -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name roleComboBox -Value $roleComboBox -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name groupHeader -Value $groupHeader -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name roleHeader -Value $roleHeader -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name roleAssnListView -Value $roleAssnListView -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name label4 -Value $label4 -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name groupBox6 -Value $groupBox6 -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name netListView -Value $netListView -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name tableLayoutPanel12 -Value $tableLayoutPanel12 -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name summaryLabel -Value $summaryLabel -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name summaryPanel -Value $summaryPanel -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name tokenValueMaskedTextBox -Value $tokenValueMaskedTextBox -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name groupBox10 -Value $groupBox10 -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name listView4 -Value $listView4 -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name groupBox9 -Value $groupBox9 -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name listView3 -Value $listView3 -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name groupBox8 -Value $groupBox8 -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name listView2 -Value $listView2 -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name groupBox7 -Value $groupBox7 -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name listView1 -Value $listView1 -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name panel8 -Value $panel8 -MemberType NoteProperty
Add-Member -InputObject $WarriorRange -Name usernameGroupBox -Value $usernameGroupBox -MemberType NoteProperty
}
. InitializeComponent
