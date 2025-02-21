. (Join-Path $PSScriptRoot 'testUI.designer.ps1')

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
    $roleLabel.BackColor = "Peru"
    $roleLabel.ForeColor = "WhiteSmoke"
	
    for ($i = 0; $i -lt $labels.Count; $i++) {
        if ($i -ne 3) {
            #Write-Host $labels[$i]
            $labels[$i].BackColor = "Gainsboro"
            $labels[$i].ForeColor = "Black"
        }
    }
}

$netLabel_Click = {
    $netLabel.BackColor = "Peru"
    $netLabel.ForeColor = "WhiteSmoke"
	
    for ($i = 0; $i -lt $labels.Count; $i++) {
        if ($i -ne 2) {
            #Write-Host $labels[$i]
            $labels[$i].BackColor = "Gainsboro"
            $labels[$i].ForeColor = "Black"
        }
    }
}

$envLabel_Click = {
    $envLabel.BackColor = "Peru"
    $envLabel.ForeColor = "WhiteSmoke"
	
    for ($i = 0; $i -lt $labels.Count; $i++) {
        if ($i -ne 1) {
            #Write-Host $labels[$i]
            $labels[$i].BackColor = "Gainsboro"
            $labels[$i].ForeColor = "Black"
        }
    }
}

$rosterLabel_Click = {
    $rosterLabel.BackColor = "Peru"
    $rosterLabel.ForeColor = "WhiteSmoke"
	
    for ($i = 0; $i -lt $labels.Count; $i++) {
        if ($i -ne 0) {
            $labels[$i].BackColor = "Gainsboro"
            $labels[$i].ForeColor = "Black"
        }
    }
}



$panels = @{}

$panels["rosterPanel"] = $rosterPanel
$panels["envPanel"] = $envPanel
$panels["netPanel"] = $netPanel
$panels["rolePanel"] = $rolePanel

#$panels["rosterPanel"].Visible = $true
#$panels["envPanel"].Visible = $false
#$panels["netPanel"].Visible = $false
#$panels["rolePanel"].Visible = $false


function SetPanelView {

    param (
        $visiblePanel
    )

    foreach ($panel in $panels.GetEnumerator()) {
        if (($panel.value.Visible) -and $panel.value -ne $visiblePanel) {
            $panel.value.Visible = $false
        }
    }

    $visiblePanel.Visible = $true
    
}

SetPanelView $rosterPanel

$WarriorRange.ShowDialog()