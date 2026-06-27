param([string]$Url)

if (-not $Url) {
  Write-Host "ERROR: -Url parameter is required." -ForegroundColor Red
  Write-Host "Usage: .\scripts\psi-audit.ps1 -Url ""https://example.com""" -ForegroundColor Yellow
  exit 1
}

function Write-Section {
  param([string]$Title)
  Write-Host "`n$("-" * 60)" -ForegroundColor DarkGray
  Write-Host "  $Title" -ForegroundColor Cyan
  Write-Host "$("-" * 60)" -ForegroundColor DarkGray
}

function Color-Score {
  param([float]$Score)
  if ($Score -ge 0.9) { return "Green" }
  if ($Score -ge 0.5) { return "Yellow" }
  return "Red"
}

function Color-Metric {
  param([string]$Status)
  if ($Status -eq "PASS" -or $Status -eq "pass") { return "Green" }
  if ($Status -eq "WARN" -or $Status -eq "warn") { return "Yellow" }
  return "Red"
}

$apiUrl = "https://www.googleapis.com/pagespeedonline/v5/runPagespeed?url=$([System.Uri]::EscapeDataString($Url))&strategy=mobile"

Write-Host "╔══════════════════════════════════════════════════╗" -ForegroundColor Cyan
Write-Host "║        PageSpeed Insights Audit                  ║" -ForegroundColor Cyan
Write-Host "╚══════════════════════════════════════════════════╝" -ForegroundColor Cyan
Write-Host "URL : $Url" -ForegroundColor White
Write-Host "API : $apiUrl" -ForegroundColor DarkGray

try {
  $resp = Invoke-RestMethod -Uri $apiUrl -Method Get -TimeoutSec 30 -ErrorAction Stop
} catch {
  Write-Host "`n✗ API request failed." -ForegroundColor Red
  Write-Host "  $($_.Exception.Message)" -ForegroundColor Red
  exit 1
}

if ($resp.error) {
  Write-Host "`n✗ Google API returned an error:" -ForegroundColor Red
  Write-Host "  $($resp.error | ConvertTo-Json -Depth 3)" -ForegroundColor Red
  exit 1
}

$lighthouse = $resp.lighthouseResult
if (-not $lighthouse) {
  Write-Host "`n✗ No lighthouseResult in API response." -ForegroundColor Red
  exit 1
}

$categories = $lighthouse.categories
$audits = $lighthouse.audits

# --- Performance Score ---
Write-Section -Title "Performance Score"
$perfScore = $categories.performance.score * 100
$perfColor = if ($perfScore -ge 90) { "Green" } elseif ($perfScore -ge 50) { "Yellow" } else { "Red" }
Write-Host "  $perfScore/100" -ForegroundColor $perfColor

# --- Core Web Vitals ---
Write-Section -Title "Core Web Vitals"

function Show-Metric {
  param([string]$Label, [string]$AuditId, [hashtable]$Audits)
  $audit = $Audits.$AuditId
  if (-not $audit -or -not $audit.numericValue) {
    Write-Host "  $Label -- N/A" -ForegroundColor DarkGray
    return
  }
  $val = $audit.numericValue
  $displayValue = $audit.displayValue
  $score = $audit.score
  $status = if ($score -ge 0.9) { "PASS" } elseif ($score -ge 0.5) { "WARN" } else { "FAIL" }
  $color = if ($score -ge 0.9) { "Green" } elseif ($score -ge 0.5) { "Yellow" } else { "Red" }
  Write-Host "  $Label : $displayValue [$status]" -ForegroundColor $color
}

Show-Metric -Label "LCP (Largest Contentful Paint)" -AuditId "largest-contentful-paint" -Audits $audits
Show-Metric -Label "CLS (Cumulative Layout Shift)" -AuditId "cumulative-layout-shift" -Audits $audits
Show-Metric -Label "INP (Interaction to Next Paint)" -AuditId "interaction-to-next-paint" -Audits $audits
Show-Metric -Label "FCP (First Contentful Paint)" -AuditId "first-contentful-paint" -Audits $audits
Show-Metric -Label "TTFB (Time to First Byte)" -AuditId "time-to-first-byte" -Audits $audits
Show-Metric -Label "TBT (Total Blocking Time)" -AuditId "total-blocking-time" -Audits $audits
Show-Metric -Label "SI (Speed Index)" -AuditId "speed-index" -Audits $audits

# --- Opportunities ---
Write-Section -Title "Top Opportunities (savings in ms)"
$oppAudits = $lighthouse.audits.PSObject.Properties |
  Where-Object { $_.Value.details -and $_.Value.details.type -eq 'opportunity' } |
  Sort-Object { [Math]::Max(0, $_.Value.numericValue) } -Descending |
  Select-Object -First 3

if ($oppAudits.Count -gt 0) {
  $oppAudits | ForEach-Object {
    $title = $_.Value.title
    $savings = if ($_.Value.numericValue) { "{0:N0} ms" -f $_.Value.numericValue } else { "N/A" }
    Write-Host "  ⚡ $title" -ForegroundColor Yellow
    Write-Host "     Potential savings: $savings" -ForegroundColor White
  }
} else {
  Write-Host "  No opportunities found." -ForegroundColor Green
}

# --- Diagnostics ---
Write-Section -Title "Top Diagnostics"
$diagAudits = $lighthouse.audits.PSObject.Properties |
  Where-Object { $_.Value.details -and $_.Value.details.type -eq 'diagnostic' -and $_.Value.score -and $_.Value.score -lt 1 } |
  Sort-Object { $_.Value.score } |
  Select-Object -First 3

if ($diagAudits.Count -gt 0) {
  $diagAudits | ForEach-Object {
    $title = $_.Value.title
    $score = "{0:P0}" -f $_.Value.score
    Write-Host "  � $title [score: $score]" -ForegroundColor Yellow
  }
} else {
  Write-Host "  No diagnostics flagged." -ForegroundColor Green
}

# --- Overall Scores ---
Write-Section -Title "Category Scores"
$categories.PSObject.Properties | Sort-Object Name | ForEach-Object {
  $catName = $_.Name
  $catScore = $_.Value.score * 100
  $color = if ($catScore -ge 90) { "Green" } elseif ($catScore -ge 50) { "Yellow" } else { "Red" }
  Write-Host "  $catName : $("{0:N0}" -f $catScore)/100" -ForegroundColor $color
}

# --- Summary ---
Write-Section -Title "Summary"
Write-Host "  URL:              $Url" -ForegroundColor White
Write-Host "  Performance:      $("{0:N0}" -f $perfScore)/100" -ForegroundColor $(Color-Score -Score ($perfScore / 100))

$lcp = $audits.'largest-contentful-paint'
if ($lcp -and $lcp.numericValue) { Write-Host "  LCP:              $($lcp.displayValue) [$(if($lcp.score -ge 0.9){'PASS'}elseif($lcp.score -ge 0.5){'WARN'}else{'FAIL'})]" -ForegroundColor $(Color-Metric -Status $(if($lcp.score -ge 0.9){'pass'}else{'warn'})) }

$cls = $audits.'cumulative-layout-shift'
if ($cls -and $cls.numericValue) { Write-Host "  CLS:              $($cls.displayValue) [$(if($cls.score -ge 0.9){'PASS'}elseif($cls.score -ge 0.5){'WARN'}else{'FAIL'})]" -ForegroundColor $(Color-Metric -Status $(if($cls.score -ge 0.9){'pass'}else{'warn'})) }

$inp = $audits.'interaction-to-next-paint'
if ($inp -and $inp.numericValue) { Write-Host "  INP:              $($inp.displayValue) [$(if($inp.score -ge 0.9){'PASS'}elseif($inp.score -ge 0.5){'WARN'}else{'FAIL'})]" -ForegroundColor $(Color-Metric -Status $(if($inp.score -ge 0.9){'pass'}else{'warn'})) }

Write-Host "`n  Note: PSI data is from the real-world CrUX report" -ForegroundColor DarkGray
Write-Host "  combined with lab-based Lighthouse analysis." -ForegroundColor DarkGray
