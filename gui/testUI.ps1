using module ..\modules\WarriorRangeUtils\WarriorRangeUtils.psm1
Import-Module Corsinvest.ProxmoxVE.Api

. (Join-Path $PSScriptRoot 'Theme.ps1')
. (Join-Path $PSScriptRoot 'testUI.designer.ps1')
. (Join-Path $PSScriptRoot 'login.ps1')
. (Join-Path $PSScriptRoot 'roster.ps1')
. (Join-Path $PSScriptRoot 'environment.ps1')
. (Join-Path $PSScriptRoot 'network.ps1')
. (Join-Path $PSScriptRoot 'roles.ps1')

Add-Type -AssemblyName PresentationFramework
Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

$global:utils = [WarriorRangeUtils]::new()

$loginPanel.Visible = $true
$main.Visible = $false

$labels = @(
    $rosterLabel,
    $envLabel,
    $netLabel,
    $roleLabel
)

function SetPanelView($visiblePanel) {

    foreach ($panel in $panels.GetEnumerator()) {

        if ($panel.value.Name -ne $visiblePanel.Name) {
            $panel.value.Visible = $false
        }

    }

    $visiblePanel.Visible = $true
    $visiblePanel.Focus()

}

$roleLabel_Click = {
    SetPanelView $rolePanel

    #active colors
    $roleLabel.ForeColor = "WhiteSmoke"
    $roleLabel.BackColor = "CornflowerBlue"
	
    for ($i = 0; $i -lt $labels.Count; $i++) {
        if ($i -ne 3) {
            #inactive colors
            $labels[$i].ForeColor = "Black"
            $labels[$i].BackColor = "AliceBlue"
        }
    }
    
    # Load configurations from previous panels in order to assign roles
    LoadConfigs
}

$netLabel_Click = {
    SetPanelView $netPanel

    $netLabel.ForeColor = "WhiteSmoke"
    $netLabel.BackColor = "CornflowerBlue"
	
    for ($i = 0; $i -lt $labels.Count; $i++) {
        if ($i -ne 2) {
            $labels[$i].ForeColor = "Black"
            $labels[$i].BackColor = "AliceBlue"
        }
    }
}

$envLabel_Click = {
    SetPanelView $envPanel

    $envLabel.ForeColor = "WhiteSmoke"
    $envLabel.BackColor = "CornflowerBlue"
	
    for ($i = 0; $i -lt $labels.Count; $i++) {
        if ($i -ne 1) {
            $labels[$i].ForeColor = "Black"
            $labels[$i].BackColor = "AliceBlue"
        }
    }
}

$rosterLabel_Click = {
    SetPanelView $rosterPanel
    
    $rosterLabel.ForeColor = "WhiteSmoke"
    $rosterLabel.BackColor = "CornflowerBlue"
	
    for ($i = 0; $i -lt $labels.Count; $i++) {
        if ($i -ne 0) {
            $labels[$i].ForeColor = "Black"
            $labels[$i].BackColor = "AliceBlue"
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

$backButton_Click = {

}

$nextButton_Click = {

}

$mainPanel_Load = {
    # Load users into roster panel
    ImportUsers

    # Load Base VMs into environment panel
    ImportBaseVMs
}

$WarriorRange.ShowDialog()