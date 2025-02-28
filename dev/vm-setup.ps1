Import-Module Corsinvest.ProxmoxVE.Api
$ErrorActionPreference = "Stop"

# Function to find the next available VMID in a given range
function Get-NextAvailableVMID {
    param (
        [int]$RangeID,
        [object]$jsonContent,
        [string]$rangeName
    )

    $startvmid = $RangeID * 100000  # Convert to 9-digit VMID base
    $existingVMIDs = @()
    
    if ($jsonContent -and $jsonContent.PSObject.Properties[$rangeName]) {
        $existingVMs = $jsonContent.$rangeName.VMs.PSObject.Properties | ForEach-Object { $_.Value.vmid }
        if ($existingVMs) {
            $maxID = ($existingVMs | Measure-Object -Maximum).Maximum
            return [string]($maxID + 1)  # Assign next available VMID in range as a string
        }
    }
    return [string]$startvmid  # Start from the base if no VMs exist
}

# Function to find the next available VM Label in a range
function Get-NextAvailableVMLabel {
    param (
        [object]$jsonContent,
        [string]$rangeName
    )

    # If no VMs exist for the range, start with "vm01"
    if (-not $jsonContent.$rangeName.VMs) {
        return "vm01"
    }

    $max = 0
    # Iterate over each VM label property in the VMs object
    foreach ($prop in $jsonContent.$rangeName.VMs.PSObject.Properties) {
        if ($prop.Name -match '^vm(\d+)$') {
            $num = [int]$Matches[1]
            if ($num -gt $max) {
                $max = $num
            }
        }
    }
    
    $newNumber = $max + 1
    return "vm" + $newNumber.ToString("00")
}

# Get Proxmox API details from user
$PROXMOX_HOST = (Read-Host "Enter Proxmox host (IP or hostname only, no https://)").Trim()
$PROXMOX_PORT = (Read-Host "Enter Proxmox port (default: 8006)").Trim()

Write-Host "DEBUG: Entered Proxmox host: '$PROXMOX_HOST'"
Write-Host "DEBUG: Entered Proxmox port: '$PROXMOX_PORT'"

if ([string]::IsNullOrWhiteSpace($PROXMOX_HOST) -or [string]::IsNullOrWhiteSpace($PROXMOX_PORT)) {
    Write-Host "Error: Proxmox host and port cannot be empty!"
    exit
}

$PROXMOX_USER = Read-Host "Enter Proxmox username (e.g., user ; no @)"
$PROXMOX_DOMAIN = Read-Host "Enter Proxmox domain (e.g., pam, pve, etc.)"
$TOKEN_NAME = Read-Host "Enter API Token Name"
$API_TOKEN = Read-Host "Enter Proxmox API token"
$BASE_RESOURCE_POOL = "BASE"
$NODE_AND_PORT = "$PROXMOX_HOST`:$PROXMOX_PORT"

Write-Host "DEBUG: Constructed HostsAndPorts: '$NODE_AND_PORT'"
if ([string]::IsNullOrWhiteSpace($NODE_AND_PORT)) {
    Write-Host "ERROR: HostsAndPorts is empty! Check your Proxmox host and port input."
    exit
}

# Connect to Proxmox
try {
    Write-Host "Connecting to Proxmox at $NODE_AND_PORT..."
    $Session = Connect-PveCluster -HostsAndPorts $NODE_AND_PORT -SkipCertificateCheck -ApiToken "$PROXMOX_USER@$PROXMOX_DOMAIN!$TOKEN_NAME=$API_TOKEN"
    Write-Host "Successfully authenticated with Proxmox"
} catch {
    Write-Host "Failed to authenticate with Proxmox."
    Write-Host "Error: $_"
    exit
}

# Fetch VMs belonging to the BASE resource pool
try {
    Write-Host "🔍 Retrieving VMs in the '$BASE_RESOURCE_POOL' resource pool..."
    $baseVMs = Get-PveVm | Where-Object -Property Pool -ilike -Value "Base"

    if ($baseVMs) {
        Write-Host "✅ Found VMs in '$BASE_RESOURCE_POOL':"
        
        # Display the list of VMs for the user
        $baseVMs | ForEach-Object { Write-Host "- VM ID: $($_.vmid), Name: $($_.name), Node: $($_.node)" }
        
        # Ask user which VM to clone
        $vmToClone = Read-Host "Enter the VM ID of the template you wish to clone"
        
        # Validate user input
        if ($vmToClone -and ($baseVMs.vmid -contains [int]$vmToClone)) {
            Write-Host "✅ Selected VM: $vmToClone"
        } else {
            Write-Host "❌ Invalid VM ID entered. Please try again."
            exit
        }
    } else {
        Write-Host "⚠️ No VMs found in the '$BASE_RESOURCE_POOL' resource pool."
    }
} catch {
    Write-Host "❌ Error retrieving VMs in the resource pool: $_"
    exit
}

# Define JSON file path
$jsonFilePath = "./configs/ranges/range.json"

# Load existing JSON or create a new one
if (Test-Path $jsonFilePath) {
    $jsonContent = Get-Content -Raw -Path $jsonFilePath | ConvertFrom-Json
} else {
    $jsonContent = @{}
}

#Ask for range name
$rangeName = Read-Host "Enter the name of the range"

# Ensure the range exists in JSON
if (-not $jsonContent.PSObject.Properties[$rangeName]) {
    # Ask user for range details
    $rangeID = Read-Host "Enter the 4-digit range ID"
    $networks = Read-Host "Enter the networks for this VM (comma-separated)"
    $jsonContent | Add-Member -MemberType NoteProperty -Name $rangeName -Value @{ range_id = $rangeID; vms = @{}; networks = @($networks -split ",") }
    $jsonContent | ConvertTo-Json -Depth 10 | Set-Content -Path $jsonFilePath
    Write-Host "Range Created! Run again to add VMs"
    exit
}

$vmName = Read-Host "Enter the name for the new VM"

# Generate next available VMID from JSON file instead of Proxmox
$vmid = Get-NextAvailableVMID -RangeID $rangeID -jsonContent $jsonContent -rangeName $rangeName
$vmLabel = Get-NextAvailableVMLabel -jsonContent $jsonContent -rangeName $rangeName

# Ensure VMs object exists before adding new VM
if (-not $jsonContent.$rangeName.PSObject.Properties["vms"]) {
    $jsonContent.$rangeName | Add-Member -MemberType NoteProperty -Name "vms" -Value @{}
}

# Add VM to range
$jsonContent.$rangeName.VMs | Add-Member -MemberType NoteProperty -Name $vmLabel -Value @{ name = $vmName; vmid = $vmid; base_vmid = $vmToClone }

# Save updated JSON
$jsonContent | ConvertTo-Json -Depth 10 | Set-Content -Path $jsonFilePath
Write-Host "✅ VM successfully added to $jsonFilePath"