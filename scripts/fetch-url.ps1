param([string]$Url)

if (-not $Url) {
  Write-Host "ERROR: -Url parameter is required." -ForegroundColor Red
  Write-Host "Usage: .\scripts\fetch-url.ps1 -Url ""https://example.com""" -ForegroundColor Yellow
  exit 1
}

$parsed = [System.Uri]$Url
$domain = $parsed.Host
$baseUrl = $parsed.Scheme + "://" + $parsed.Host

function Write-Section {
  param([string]$Title)
  Write-Host "`n$("-" * 60)" -ForegroundColor DarkGray
  Write-Host "  $Title" -ForegroundColor Cyan
  Write-Host "$("-" * 60)" -ForegroundColor DarkGray
}

function Fetch-Content {
  param([string]$Uri)
  try {
    $resp = Invoke-WebRequest -Uri $Uri -UseBasicParsing -TimeoutSec 15 -ErrorAction Stop
    return @{ StatusCode = [int]$resp.StatusCode; Content = $resp.Content }
  } catch {
    return @{ StatusCode = $_.Exception.Response.StatusCode.value__; Error = $_.Exception.Message }
  }
}

Write-Host "╔══════════════════════════════════════════════════╗" -ForegroundColor Cyan
Write-Host "║         SEO Fetch & Analyze                      ║" -ForegroundColor Cyan
Write-Host "╚══════════════════════════════════════════════════╝" -ForegroundColor Cyan
Write-Host "URL   : $Url" -ForegroundColor White
Write-Host "Domain: $domain" -ForegroundColor White

# --- robots.txt ---
Write-Section -Title "Robots.txt"
$robotsUrl = "$baseUrl/robots.txt"
$robots = Fetch-Content -Uri $robotsUrl
if ($robots.StatusCode -eq 200) {
  Write-Host "✓ robots.txt found ($baseUrl/robots.txt)" -ForegroundColor Green
  $robots.Content -split "`n" | Select-Object -First 30 | ForEach-Object { Write-Host "  $_" }
  if (($robots.Content -split "`n").Count -gt 30) { Write-Host "  ... (truncated)" -ForegroundColor DarkGray }
} else {
  Write-Host "✗ robots.txt not found or inaccessible" -ForegroundColor Yellow
  if ($robots.Error) { Write-Host "  Error: $($robots.Error)" -ForegroundColor Red }
}

# --- Main page ---
Write-Section -Title "Page Fetch"
$page = Fetch-Content -Uri $Url
if ($page.StatusCode -ne 200) {
  Write-Host "✗ Failed to fetch page (HTTP $($page.StatusCode))" -ForegroundColor Red
  if ($page.Error) { Write-Host "  Error: $($page.Error)" -ForegroundColor Red }
  exit 1
}
Write-Host "✓ HTTP $($page.StatusCode) OK" -ForegroundColor Green
Write-Host "Content length: $($page.Content.Length) bytes" -ForegroundColor White

$html = $page.Content

# --- Title ---
Write-Section -Title "Title Tag"
if ($html -match '<title[^>]*>(.*?)</title>') {
  Write-Host $Matches[1] -ForegroundColor Green
  $titleLen = $Matches[1].Length
  if ($titleLen -lt 30 -or $titleLen -gt 60) {
    Write-Host "  ⚠ Length: $titleLen chars (recommended: 30-60)" -ForegroundColor Yellow
  } else {
    Write-Host "  ✓ Length: $titleLen chars" -ForegroundColor Green
  }
} else {
  Write-Host "✗ No title tag found" -ForegroundColor Red
}

# --- Meta Description ---
Write-Section -Title "Meta Description"
if ($html -match '<meta[^>]+name="description"[^>]+content="([^"]*)"') {
  Write-Host $Matches[1] -ForegroundColor Green
  $descLen = $Matches[1].Length
  if ($descLen -lt 120 -or $descLen -gt 160) {
    Write-Host "  ⚠ Length: $descLen chars (recommended: 120-160)" -ForegroundColor Yellow
  } else {
    Write-Host "  ✓ Length: $descLen chars" -ForegroundColor Green
  }
} else {
  Write-Host "✗ No meta description found" -ForegroundColor Red
}

# --- Canonical ---
Write-Section -Title "Canonical Tag"
if ($html -match '<link[^>]+rel="canonical"[^>]+href="([^"]*)"') {
  Write-Host $Matches[1] -ForegroundColor Green
} else {
  Write-Host "✗ No canonical tag found" -ForegroundColor Yellow
}

# --- H1 ---
Write-Section -Title "H1 Heading"
$h1s = [regex]::Matches($html, '<h1[^>]*>(.*?)</h1>', [System.Text.RegularExpressions.RegexOptions]::IgnoreCase)
if ($h1s.Count -gt 0) {
  $h1s | ForEach-Object { Write-Host "  $_($([regex]::Replace($_.Groups[1].Value, '<[^>]+>', '').Trim()))" -ForegroundColor Green }
  if ($h1s.Count -gt 1) { Write-Host "  ⚠ Multiple H1 tags ($($h1s.Count) found)" -ForegroundColor Yellow }
  else { Write-Host "  ✓ Single H1 tag" -ForegroundColor Green }
} else {
  Write-Host "✗ No H1 tag found" -ForegroundColor Red
}

# --- H2 ---
Write-Section -Title "H2 Headings (first 10)"
$h2s = [regex]::Matches($html, '<h2[^>]*>(.*?)</h2>', [System.Text.RegularExpressions.RegexOptions]::IgnoreCase)
if ($h2s.Count -gt 0) {
  $count = 0
  $h2s | ForEach-Object {
    $count++
    if ($count -gt 10) { return }
    $text = [regex]::Replace($_.Groups[1].Value, '<[^>]+>', '').Trim()
    Write-Host "  $count. $text"
  }
  if ($h2s.Count -gt 10) { Write-Host "  ... ($($h2s.Count - 10) more)" -ForegroundColor DarkGray }
  Write-Host "  Total H2 tags: $($h2s.Count)" -ForegroundColor White
} else {
  Write-Host "✗ No H2 tags found" -ForegroundColor Yellow
}

# --- JSON-LD ---
Write-Section -Title "JSON-LD Structured Data (first 3)"
$lds = [regex]::Matches($html, '<script[^>]+type="application/ld\+json"[^>]*>(.*?)</script>', [System.Text.RegularExpressions.RegexOptions]::IgnoreCase -bor [System.Text.RegularExpressions.RegexOptions]::Singleline)
if ($lds.Count -gt 0) {
  $count = 0
  $lds | ForEach-Object {
    $count++
    if ($count -gt 3) { return }
    $json = $_.Groups[1].Value.Trim()
    try {
      $parsedJson = $json | ConvertFrom-Json
      $type = if ($parsedJson.'@type') { $parsedJson.'@type' } else { "Unknown" }
      $name = if ($parsedJson.name) { $parsedJson.name } else { "N/A" }
      Write-Host "  Schema #$count | @type: $type | name: $name" -ForegroundColor Green
    } catch {
      Write-Host "  Schema #$count (raw, not parseable)" -ForegroundColor Yellow
    }
  }
  Write-Host "  Total JSON-LD blocks: $($lds.Count)" -ForegroundColor White
} else {
  Write-Host "✗ No JSON-LD structured data found" -ForegroundColor Yellow
}

# --- Word count ---
Write-Section -Title "Word Count (Visible Text)"
$body = if ($html -match '<body[^>]*>(.*?)</body>', [System.Text.RegularExpressions.RegexOptions]::IgnoreCase -bor [System.Text.RegularExpressions.RegexOptions]::Singleline) {
  $Matches[1]
} else { $html }
$visibleText = [regex]::Replace($body, '<script[^>]*>.*?</script>', '', [System.Text.RegularExpressions.RegexOptions]::Singleline)
$visibleText = [regex]::Replace($visibleText, '<style[^>]*>.*?</style>', '', [System.Text.RegularExpressions.RegexOptions]::Singleline)
$visibleText = [regex]::Replace($visibleText, '<[^>]+>', ' ')
$visibleText = [regex]::Replace($visibleText, '\s+', ' ').Trim()
$words = $visibleText -split '\s+' | Where-Object { $_ -ne '' }
$wordCount = $words.Count
Write-Host "  $wordCount words" -ForegroundColor White
if ($wordCount -lt 300) {
  Write-Host "  ⚠ Low word count (recommended: 300+)" -ForegroundColor Yellow
} elseif ($wordCount -gt 2000) {
  Write-Host "  ✓ Good content depth" -ForegroundColor Green
} else {
  Write-Host "  ✓ Adequate content" -ForegroundColor Green
}

# --- Summary ---
Write-Section -Title "Summary"
Write-Host "  URL:            $Url" -ForegroundColor White
Write-Host "  HTTP Status:    $($page.StatusCode)" -ForegroundColor White
Write-Host "  Content Words:  $wordCount" -ForegroundColor White
Write-Host "  Title:          $(if ($html -match '<title[^>]*>(.*?)</title>') { $Matches[1].Substring(0, [Math]::Min(60, $Matches[1].Length)) } else { 'MISSING' })" -ForegroundColor White
Write-Host "  Description:    $(if ($html -match '<meta[^>]+name="description"[^>]+content="([^"]*)"') { $Matches[1].Substring(0, [Math]::Min(80, $Matches[1].Length)) } else { 'MISSING' })" -ForegroundColor White
Write-Host "  H1:             $(if ($h1s.Count -gt 0) { 'PRESENT' } else { 'MISSING' })" -ForegroundColor White
Write-Host "  H2 count:       $($h2s.Count)" -ForegroundColor White
Write-Host "  JSON-LD blocks: $($lds.Count)" -ForegroundColor White
Write-Host "  Canonical:      $(if ($html -match '<link[^>]+rel="canonical"[^>]+href="([^"]*)"') { 'PRESENT' } else { 'MISSING' })" -ForegroundColor White
