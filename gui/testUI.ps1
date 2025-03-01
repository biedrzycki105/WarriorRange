. (Join-Path $PSScriptRoot 'Theme.ps1')
. (Join-Path $PSScriptRoot 'testUI.designer.ps1')
# . (Join-Path $PSScriptRoot 'login.ps1')

Add-Type -AssemblyName PresentationFramework
Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

Write-Verbose "Loaded Sucessfully"

$labels = @(
    $rosterLabel,
    $envLabel,
    $netLabel,
    $roleLabel
)

$roleLabel_Click = {
    SetPanelView $rolePanel

    #active colors
    $roleLabel.ForeColor = $theme["foreColorActive"]
    $roleLabel.BackColor = $theme["backColorActive"]
	
    for ($i = 0; $i -lt $labels.Count; $i++) {
        if ($i -ne 3) {
            #inactive colors
            $labels[$i].ForeColor = $theme["foreColorInactive"]
            $labels[$i].BackColor = $theme["backColorInactive"]
        }
    }
}

$netLabel_Click = {
    SetPanelView $netPanel

    $netLabel.ForeColor = $theme["foreColorActive"]
    $netLabel.BackColor = $theme["backColorActive"]
	
    for ($i = 0; $i -lt $labels.Count; $i++) {
        if ($i -ne 2) {
            $labels[$i].ForeColor = $theme["foreColorInactive"]
            $labels[$i].BackColor = $theme["backColorInactive"]
        }
    }
}

$envLabel_Click = {
    SetPanelView $envPanel

    $envLabel.ForeColor = $theme["foreColorActive"]
    $envLabel.BackColor = $theme["backColorActive"]
	
    for ($i = 0; $i -lt $labels.Count; $i++) {
        if ($i -ne 1) {
            $labels[$i].ForeColor = $theme["foreColorInactive"]
            $labels[$i].BackColor = $theme["backColorInactive"]
        }
    }
}

$rosterLabel_Click = {
    SetPanelView $rosterPanel
    
    $rosterLabel.ForeColor = $theme["foreColorActive"]
    $rosterLabel.BackColor = $theme["backColorActive"]
	
    for ($i = 0; $i -lt $labels.Count; $i++) {
        if ($i -ne 0) {
            $labels[$i].ForeColor = $theme["foreColorInactive"]
            $labels[$i].BackColor = $theme["backColorInactive"]
        }
    }
}

$panels = @{}

$panels["rosterPanel"] = $rosterPanel
$panels["envPanel"] = $envPanel
$panels["netPanel"] = $netPanel
$panels["rolePanel"] = $rolePanel
$panels["rosterPanel"].Visible = $true
$panels["envPanel"].Visible = $false
$panels["netPanel"].Visible = $false
$panels["rolePanel"].Visible = $false


function SetPanelView($visiblePanel) {

    foreach ($panel in $panels.GetEnumerator()) {

        if ($panel.value.Name -ne $visiblePanel.Name) {
            $panel.value.Visible = $false
        }

    }

    $visiblePanel.Visible = $true

}

$backButton_Click = {

}

$nextButton_Click = {

}

$WarriorRange.ShowDialog()