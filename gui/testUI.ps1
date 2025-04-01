using module ..\modules\WarriorRangeUtils\WarriorRangeUtils.psm1
Import-Module Corsinvest.ProxmoxVE.Api

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

$roleLabel_Click = {
    SetPanelView $rolePanel $roleLabel
    
    # Load configurations from previous panels in order to assign roles
    LoadConfigs
}

$netLabel_Click = {
    SetPanelView $netPanel $netLabel
}

$envLabel_Click = {
    SetPanelView $envPanel $envLabel
}

$rosterLabel_Click = {
    SetPanelView $rosterPanel $rosterLabel
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


function SetPanelView($visiblePanel, $clickedLabel) {

    foreach ($label in $labels) {
        if ($label -ne $clickedLabel) {
            $label.ForeColor = "Black"
            $label.BackColor = "AliceBlue"
        }
    }

    $clickedLabel.ForeColor = "WhiteSmoke"
    $clickedLabel.BackColor = "CornflowerBlue"

    foreach ($panel in $panels.GetEnumerator()) {
        if ($panel.value.Name -ne $visiblePanel.Name) {
            $panel.value.Visible = $false
        }

    }

    $visiblePanel.Visible = $true
    $visiblePanel.Focus()
}

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