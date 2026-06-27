param([string]$BrandName)

if (-not $BrandName) {
  Write-Host "ERROR: -BrandName parameter is required." -ForegroundColor Red
  Write-Host "Usage: .\scripts\entity-audit.ps1 -BrandName ""Brand Name""" -ForegroundColor Yellow
  exit 1
}

Write-Host "╔══════════════════════════════════════════════════╗" -ForegroundColor Cyan
Write-Host "║         Brand Entity Audit                        ║" -ForegroundColor Cyan
Write-Host "╚══════════════════════════════════════════════════╝" -ForegroundColor Cyan
Write-Host "Brand: $BrandName" -ForegroundColor White
Write-Host ""

# --- Build platform checks ---
$encoded = [System.Uri]::EscapeDataString($BrandName)
$slug = $BrandName.ToLowerInvariant() -replace '[^a-z0-9]+', '-'

$checks = @(
  @{
    Platform  = "Wikipedia"
    Url       = "https://en.wikipedia.org/w/index.php?search=$encoded"
    Note      = "Check if brand has a dedicated Wikipedia page"
  }
  @{
    Platform  = "Wikidata"
    Url       = "https://www.wikidata.org/w/index.php?search=$encoded"
    Note      = "Check if brand has a Wikidata QID"
  }
  @{
    Platform  = "Crunchbase"
    Url       = "https://www.crunchbase.com/organization/$slug"
    Note      = "Check if brand is listed on Crunchbase"
  }
  @{
    Platform  = "Knowledge Panel"
    Url       = "https://www.google.com/search?q=$encoded"
    Note      = "Check if Google shows a Knowledge Panel in results"
  }
  @{
    Platform  = "ChatGPT"
    Url       = "https://chat.openai.com"
    Note      = "Ask: ""What do you know about $BrandName"""
  }
  @{
    Platform  = "Perplexity"
    Url       = "https://www.perplexity.ai"
    Note      = "Ask: ""What do you know about $BrandName"""
  }
  @{
    Platform  = "Bing"
    Url       = "https://www.bing.com/search?q=$encoded"
    Note      = "Check Bing entity/sidebar results"
  }
)

# --- Attempt heuristic quick-check via Wikidata API ---
$wdScore = 0
$wikiScore = 0
$wikidataApiUrl = "https://www.wikidata.org/w/api.php?action=wbsearchentities&search=$encoded&language=en&format=json&limit=1"

try {
  $wdResp = Invoke-RestMethod -Uri $wikidataApiUrl -Method Get -TimeoutSec 10 -ErrorAction SilentlyContinue
  if ($wdResp -and $wdResp.search -and $wdResp.search.Count -gt 0) {
    $wdScore = 30
    $wikiScore = 20
  }
} catch {
  # Wikidata API unavailable; skip scoring
}

# --- Try Crunchbase heuristic ---
$cbScore = 0
try {
  $cbReq = [System.Net.WebRequest]::Create("https://www.crunchbase.com/organization/$slug")
  $cbReq.Method = "HEAD"
  $cbReq.Timeout = 5000
  $cbResp = $cbReq.GetResponse()
  if ($cbResp.StatusCode -eq 200) { $cbScore = 15 }
  $cbResp.Close()
} catch {
  # Not found or blocked; no score
}

# --- Try Knowledge Panel heuristic via Google scrape hint ---
$kpScore = 0
try {
  $gpResp = Invoke-WebRequest -Uri "https://www.google.com/search?q=$encoded" -UseBasicParsing -TimeoutSec 8 -ErrorAction SilentlyContinue
  if ($gpResp.Content -match 'knowledge.?panel' -or $gpResp.Content -match 'KnowledgeGraph' -or $gpResp.Content -match 'data-attrid') {
    $kpScore = 20
  } elseif ($gpResp.Content -match $BrandName) {
    $kpScore = 10
  }
} catch {
  $kpScore = 5
}

$totalScore = $wdScore + $wikiScore + $cbScore + $kpScore
$totalScore = [Math]::Min(100, $totalScore)

# --- Output the checklist ---
Write-Host "## Entity Audit: $BrandName" -ForegroundColor White
Write-Host ""

# Table header
Write-Host ("{0,-20} {1,-10} {2,-60}" -f "Platform", "Status", "URL / Action") -ForegroundColor Cyan
Write-Host ("{0,-20} {1,-10} {2,-60}" -f ("-"*20), ("-"*10), ("-"*60)) -ForegroundColor DarkGray

foreach ($check in $checks) {
  $statusIcon = "⚠ CHECK"
  $statusColor = "Yellow"

  if ($check.Platform -eq "Wikipedia" -and $wikiScore -gt 0) {
    $statusIcon = "✓ FOUND"
    $statusColor = "Green"
  } elseif ($check.Platform -eq "Wikidata" -and $wdScore -gt 0) {
    $statusIcon = "✓ FOUND"
    $statusColor = "Green"
  } elseif ($check.Platform -eq "Crunchbase" -and $cbScore -gt 0) {
    $statusIcon = "✓ FOUND"
    $statusColor = "Green"
  } elseif ($check.Platform -eq "Knowledge Panel" -and $kpScore -ge 20) {
    $statusIcon = "✓ FOUND"
    $statusColor = "Green"
  } elseif ($check.Platform -eq "Knowledge Panel" -and $kpScore -ge 10) {
    $statusIcon = "? POSSIBLE"
    $statusColor = "Yellow"
  }

  $line = "{0,-20} {1,-10} {2,-60}" -f $check.Platform, $statusIcon, $check.Url
  Write-Host $line -ForegroundColor $statusColor
}

Write-Host ""

# --- Entity Strength Score ---
Write-Host "$("-" * 60)" -ForegroundColor DarkGray
Write-Host "  Entity Strength Score" -ForegroundColor Cyan
Write-Host "$("-" * 60)" -ForegroundColor DarkGray

$barLen = 50
$filled = [Math]::Round($totalScore / 100 * $barLen)
$empty = $barLen - $filled
$bar = "[" + ("█" * $filled) + ("░" * $empty) + "]"

$scoreColor = if ($totalScore -ge 70) { "Green" } elseif ($totalScore -ge 40) { "Yellow" } else { "Red" }
$rating = if ($totalScore -ge 70) { "Strong" } elseif ($totalScore -ge 40) { "Moderate" } else { "Weak" }

Write-Host "  Score: $totalScore/100 $bar" -ForegroundColor $scoreColor
Write-Host "  Rating: $rating" -ForegroundColor $scoreColor

Write-Host "`n  Score Breakdown:" -ForegroundColor White
Write-Host "    Wikidata entity found : $wdScore/30" -ForegroundColor $(if ($wdScore -gt 0) { 'Green' } else { 'DarkGray' })
Write-Host "    Wikipedia page        : $wikiScore/20" -ForegroundColor $(if ($wikiScore -gt 0) { 'Green' } else { 'DarkGray' })
Write-Host "    Crunchbase listing    : $cbScore/15" -ForegroundColor $(if ($cbScore -gt 0) { 'Green' } else { 'DarkGray' })
Write-Host "    Knowledge Panel hint  : $kpScore/20" -ForegroundColor $(if ($kpScore -ge 10) { 'Green' } else { 'DarkGray' })

Write-Host "`n  Recommendations:" -ForegroundColor White
if ($totalScore -lt 40) {
  Write-Host "    → Create Wikidata entry for the brand" -ForegroundColor Yellow
  Write-Host "    → Ensure Wikipedia notability criteria are met" -ForegroundColor Yellow
  Write-Host "    → List on Crunchbase, LinkedIn, and other directories" -ForegroundColor Yellow
  Write-Host "    → Add schema.org markup (LocalBusiness/Organization) to the site" -ForegroundColor Yellow
  Write-Host "    → Build Google Business Profile if applicable" -ForegroundColor Yellow
} elseif ($totalScore -lt 70) {
  Write-Host "    → Improve Wikidata entry with more properties" -ForegroundColor Yellow
  Write-Host "    → Get listed on more industry-specific directories" -ForegroundColor Yellow
  Write-Host "    → Build citations and backlinks to strengthen entity signals" -ForegroundColor Yellow
} else {
  Write-Host "    → Entity presence is strong. Maintain with regular updates." -ForegroundColor Green
  Write-Host "    → Monitor Knowledge Panel for accuracy." -ForegroundColor Green
}
