# CVNP1606 Week 08 - Evidence Collection Script
# Run as Administrator. Saves output to evidence-report.txt.
# Commit evidence-report.txt to your GitHub portfolio repo under week08-rca/.

$lines = @()

$lines += "=== CVNP1606-W08 Evidence Report ==="
$lines += "Generated : $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')"
$lines += "Host      : $env:COMPUTERNAME"
$lines += ""

# System Log - Critical and Error Events
$lines += "[SYSTEM LOG - CRITICAL AND ERROR (last 7 days)]"

try {
    $events = Get-WinEvent -FilterHashtable @{
        LogName = 'System'
        Level = @(1,2)
        StartTime = (Get-Date).AddDays(-7)
    } -ErrorAction SilentlyContinue | Select-Object -First 15

    if ($events) {
        foreach ($event in $events) {
            $lines += "  $($event.TimeCreated.ToString('yyyy-MM-dd HH:mm:ss')) ID:$($event.Id) $($event.ProviderName) $($event.LevelDisplayName)"
        }
    }
    else {
        $lines += "  No Critical or Error events found in the last 7 days."
    }
}
catch {
    $lines += "  Could not query event log: $($_.Exception.Message)"
}

$lines += ""

# Unexpected Shutdown Events
$lines += "[UNEXPECTED SHUTDOWN EVENTS (6008 / 41)]"

try {
    $shutdownEvents = Get-WinEvent -FilterHashtable @{
        LogName = 'System'
        Id = @(6008,41)
    } -ErrorAction SilentlyContinue | Select-Object -First 10

    if ($shutdownEvents) {
        foreach ($event in $shutdownEvents) {
            $lines += "  $($event.TimeCreated.ToString('yyyy-MM-dd HH:mm:ss')) ID:$($event.Id)"
        }
    }
    else {
        $lines += "  No Event ID 6008 or 41 found."
    }
}
catch {
    $lines += "  Could not query shutdown events: $($_.Exception.Message)"
}

$lines += ""

# Last Boot Time
$lines += "[LAST BOOT]"

try {
    $os = Get-CimInstance Win32_OperatingSystem
    $lines += "  Last boot : $($os.LastBootUpTime.ToString('yyyy-MM-dd HH:mm:ss'))"
}
catch {
    $lines += "  Unable to determine last boot time."
}

$lines += ""

# Required Files
$lines += "[REQUIRED FILES]"

@(
    "event-export.txt",
    "event-timeline.md",
    "README.md",
    "ai-disclosure.md"
) | ForEach-Object {

    $p = Join-Path $PSScriptRoot $_

    if (Test-Path $p) {
        $lines += "  $_ : FOUND"
    }
    else {
        $lines += "  $_ : NOT FOUND"
    }
}

$lines += ""
$lines += "Commit this file (evidence-report.txt) to your GitHub repo under week08-rca/."

$out = $lines -join "`r`n"

$out | Out-File `
    -FilePath (Join-Path $PSScriptRoot "evidence-report.txt") `
    -Encoding utf8

Write-Host $out