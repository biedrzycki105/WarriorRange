$WarriorRange_Load = {
    
}
$label2_Click = {
}
. (Join-Path $PSScriptRoot 'demo.designer.ps1')

Add-Type -AssemblyName PresentationFramework
Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing
$labels = @(
    $label1,
    $label2,
    $label3,
    $label4
)

$label1_MouseClick = {
    $label1.BackColor = "Peru"
    $label1.ForeColor = "WhiteSmoke"
    
    for ($i = 0; $i -lt $labels.Count; $i++) {
        if ($i -ne 0) {
            $labels[$i].BackColor = "Gainsboro"
            $labels[$i].ForeColor = "Black"
        }
    }
}


$label2_MouseClick = {
    $label2.BackColor = "Peru"
    $label2.ForeColor = "WhiteSmoke"
    
    for ($i = 0; $i -lt $labels.Count; $i++) {
        if ($i -ne 1) {
            Write-Debug $labels[$i]
            $labels[$i].BackColor = "Gainsboro"
            $labels[$i].ForeColor = "Black"
        }
    }
}

$label3_MouseClick = {
    $label3.BackColor = "Peru"
    $label3.ForeColor = "WhiteSmoke"
    
    for ($i = 0; $i -lt $labels.Count; $i++) {
        if ($i -ne 2) {
            Write-Debug $labels[$i]
            $labels[$i].BackColor = "Gainsboro"
            $labels[$i].ForeColor = "Black"
        }
    }
}

$label4_MouseClick = {
    $label4.BackColor = "Peru"
    $label4.ForeColor = "WhiteSmoke"
    
    for ($i = 0; $i -lt $labels.Count; $i++) {
        if ($i -ne 3) {
            Write-Debug $labels[$i]
            $labels[$i].BackColor = "Gainsboro"
            $labels[$i].ForeColor = "Black"
        }
    }
}
$WarriorRange.ShowDialog()

