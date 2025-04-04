using module ..\modules\WarriorRangeUtils\WarriorRangeUtils.psm1
Import-Module Corsinvest.ProxmoxVE.Api

. (Join-Path $PSScriptRoot 'testUI.designer.ps1')
. (Join-Path $PSScriptRoot 'login.ps1')
. (Join-Path $PSScriptRoot 'roster.ps1')
. (Join-Path $PSScriptRoot 'environment.ps1')
. (Join-Path $PSScriptRoot 'network.ps1')
. (Join-Path $PSScriptRoot 'roles.ps1')
. (Join-Path '.\summary.ps1')

Add-Type -AssemblyName PresentationFramework
Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing


### CONTROLS ----------------------------------------------------

$panels = [ordered]@{
    "rosterPanel" = $rosterPanel;
    "envPanel" = $envPanel;
    "netPanel" = $netPanel;
    "rolePanel" = $rolePanel;
    "summaryPanel" = $summaryPanel;
}

$labels = @(
    $rosterLabel,
    $envLabel,
    $netLabel,
    $roleLabel,
    $summaryLabel
)

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

$summaryLabel_Click = {
    SetPanelView $summaryPanel $summaryLabel
    LoadSummary
}

$backButton_Click = {
    $keys = $global:panels.Keys
    $currentIndex = 0
    Write-Host "all panels: $($global:panels.Count)"
    foreach ($panel in $global:panels) {
        Write-Host "panel: $($panel.Text)"
        Write-Host "visible: $($panel.Visible)"
        if ($panel.Visible) {
            $currentIndex = $keys.IndexOf($panel)
        }
    }

    $global:panels[$keys[$currentIndex - 1]].Visible = $true
    $global:panels[$keys[$currentIndex]].Visible = $false
}

$nextButton_Click = {

}

$mainPanel_Load = {
    # Load users into roster panel
    ImportUsers

    # Load Base VMs into environment panel
    ImportBaseVMs
}

### END CONTROLS ----------------------------------------------------


### SETUP -----------------------------------------------------------

$global:utils = [WarriorRangeUtils]::new()

$loginPanel.Visible = $true
$main.Visible = $false

$panels["rosterPanel"].Visible = $true
$panels["envPanel"].Visible = $false
$panels["netPanel"].Visible = $false
$panels["rolePanel"].Visible = $false
$panels["summaryPanel"].Visible = $false

### END SETUP -------------------------------------------------------


$WarriorRange.ShowDialog()