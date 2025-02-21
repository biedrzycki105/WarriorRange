<#
$testButton_MouseClick = {
    Write-Host $listBox1.Items
    $listBox1.Items.Add("four")
    Write-Host $listBox1.Items
}
#>
Add-Type -AssemblyName PresentationFramework
Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

. (Join-Path $PSScriptRoot 'testUI.designer.ps1')

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
            #Write-Host $labels[$i]
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
            #Write-Host $labels[$i]
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
            #Write-Host $labels[$i]
            $labels[$i].BackColor = "Gainsboro"
            $labels[$i].ForeColor = "Black"
        }
    }
}



$panels = @{}

$WarriorRange_Load = {
	$panels.Add($panel1)
	$panels.Add($panel2)
	$panels.Add($panel3)
	$panels[0].Visible = $true
	$panels[1].Visible = $false
	$panels[2].Visible = $false
}

$prevButton_Click = {
	
	for($i = 0; $i -lt $panels.Count; $i++) {

		if (($panels[$i].Visible -eq $true) -and ($i -gt 0)) {

			$panels[$i].Visible = $false
			$panels[$i - 1].Visible = $true
			break

		}

	}
}

$nextButton_Click = {

	for($i = 0; $i -lt $panels.Count; $i++) {

		if (($panels[$i].Visible -eq $true) -and ($i -lt $panels.Count - 1)) {

			$panels[$i].Visible = $false
			$panels[$i + 1].Visible = $true
			break

		}

	}
}


$WarriorRange.ShowDialog()