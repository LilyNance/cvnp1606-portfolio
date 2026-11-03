# CVNP1606 Week 09 - Evidence Collection Script (Midterm)
# Run as Administrator. Saves output to evidence-report.txt.
# Commit evidence-report.txt to your GitHub portfolio repo under midterm-service-desk/.

$lines = @()
$lines += "=== CVNP1606-W09 Evidence Report (Midterm) ==="
$lines += "Generated : $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')"
$lines += "Host      : $env:COMPUTERNAME"
$lines += ""

# Ticket A - Account lockout state
$lines += "[TICKET A - ACCOUNT STATE]"
Get-LocalUser | ForEach-Object {
    $lines += "  $($_.Name.PadRight(28)) Enabled: $($_.Enabled)  LockedOut: $($_.IsAccountLockedOut)"
}
$lines += ""

# Ticket B - Top CPU/memory consumers
$lines += "[TICKET B - TOP PROCESSES (CPU)]"
Get-Process | Sort-Object CPU -Descending | Select-Object -First 8 | ForEach-Object {
    $lines += "  $($_.ProcessName.PadRight(28)) CPU: $([math]::Round($_.CPU,1))s   WS: $([math]::Round($_.WorkingSet64/1MB,1)) MB"
}
$lines += ""

# Ticket C - Device Manager non-OK devices
$lines += "[TICKET C - PNP DEVICE STATUS]"
$nonOK = Get-PnpDevice | Where-Object { $_.Status -ne "OK" }

if ($nonOK) {
    $nonOK | ForEach-Object {
        $lines += "  Status: $($_.Status.PadRight(12)) Class: $($_.Class.PadRight(20)) Name: $($_.FriendlyName)"
    }
}
else {
    $lines += "  All devices status: OK"
}

$lines += ""

# Ticket D - Network connectivity
$lines += "[TICKET D - NETWORK STATE]"

Get-NetIPConfiguration | Where-Object { $_.IPv4Address } | ForEach-Object {
    $lines += "  $($_.InterfaceAlias) : $($_.IPv4Address.IPAddress)/$($_.IPv4Address.PrefixLength)  GW: $($_.IPv4DefaultGateway.NextHop)"
}

@("127.0.0.1", "8.8.8.8") | ForEach-Object {
    $r = Test-Connection -ComputerName $_ -Count 1 -ErrorAction SilentlyContinue
    $lines += "  Ping $_ : $(if ($r) { 'REACHABLE' } else { 'UNREACHABLE' })"
}

$lines += ""

# Security log - lockout events
$lines += "[SECURITY LOG - LOCKOUT EVENTS (4625 / 4740, last 24h)]"

try {
    $lockouts = Get-WinEvent -FilterHashtable @{
        LogName   = 'Security'
        Id        = @(4625, 4740)
        StartTime = (Get-Date).AddHours(-24)
    } -ErrorAction SilentlyContinue | Select-Object -First 10

    if ($lockouts) {
        $lockouts | ForEach-Object {
            $lines += "  $($_.TimeCreated.ToString('yyyy-MM-dd HH:mm:ss'))  ID:$($_.Id)"
        }
    }
    else {
        $lines += "  No lockout events in last 24h."
    }
}
catch {
    $lines += "  Could not query Security log (requires admin): $($_.Exception.Message)"
}

$lines += ""

# Required files
$lines += "[REQUIRED FILES]"

@("ticket-pack.md", "change-note.md", "README.md") | ForEach-Object {
    $p = Join-Path $PSScriptRoot $_

    if (Test-Path $p) {
        $lines += "  $_ : FOUND ($((Get-Item $p).Length) bytes)"
    }
    else {
        $lines += "  $_ : NOT FOUND"
    }
}

$lines += ""
$lines += "Commit this file (evidence-report.txt) to your GitHub repo under midterm-service-desk/."

$out = $lines -join "`n"
$out | Out-File -FilePath (Join-Path $PSScriptRoot "evidence-report.txt") -Encoding utf8

Write-Host $out