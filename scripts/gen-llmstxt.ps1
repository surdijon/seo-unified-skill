param(
  [string]$SiteName,
  [string]$SiteUrl,
  [string]$Description,
  [hashtable]$KeyPages = @{}
)

if (-not $SiteName -or -not $SiteUrl) {
  Write-Host "ERROR: -SiteName and -SiteUrl are required." -ForegroundColor Red
  Write-Host "Usage: .\scripts\gen-llmstxt.ps1 -SiteName ""My Site"" -SiteUrl ""https://example.com"" -Description ""A great site"" -KeyPages @{""/"" = ""Homepage""; ""/about"" = ""About us""}" -ForegroundColor Yellow
  exit 1
}

# Normalize SiteUrl
$SiteUrl = $SiteUrl.TrimEnd('/')

Write-Host "╔══════════════════════════════════════════════════╗" -ForegroundColor Cyan
Write-Host "║           llms.txt Generator                     ║" -ForegroundColor Cyan
Write-Host "╚══════════════════════════════════════════════════╝" -ForegroundColor Cyan
Write-Host "Site: $SiteName" -ForegroundColor White
Write-Host "URL : $SiteUrl" -ForegroundColor White

# --- Build llms.txt content ---
$lines = @()

# Title & description
$lines += "# $SiteName"
$lines += ""
if ($Description) {
  $lines += "> $Description"
  $lines += ""
}

# Summary
$lines += "## $SiteName"
$lines += ""
if ($Description) {
  $lines += $Description
} else {
  $lines += "Official site of $SiteName."
}
$lines += ""

# Key pages
if ($KeyPages.Count -gt 0) {
  $lines += "## Key Pages"
  $lines += ""
  foreach ($page in $KeyPages.Keys) {
    $desc = $KeyPages[$page]
    $fullUrl = if ($page -match '^https?://') { $page } else { "$SiteUrl$page" }
    if ($desc) {
      $lines += "- [$desc]($fullUrl)"
    } else {
      $lines += "- [$fullUrl]($fullUrl)"
    }
  }
  $lines += ""
}

# Optional: sitemap hint
$lines += "## Additional Resources"
$lines += ""
$lines += "- [Sitemap]($SiteUrl/sitemap-index.xml)"
$lines += "- [Robots]($SiteUrl/robots.txt)"
$lines += ""

$content = $lines -join "`n"

# --- Output ---
Write-Host "`n$("-" * 60)" -ForegroundColor DarkGray
Write-Host "  Generated llms.txt" -ForegroundColor Cyan
Write-Host "$("-" * 60)" -ForegroundColor DarkGray
Write-Host ""
Write-Host $content -ForegroundColor White

Write-Host "`n$("-" * 60)" -ForegroundColor DarkGray
Write-Host "  Save Instructions" -ForegroundColor Cyan
Write-Host "$("-" * 60)" -ForegroundColor DarkGray
Write-Host "  Save the above content as: llms.txt" -ForegroundColor Green
Write-Host "  Place in the root of your site: $SiteUrl/llms.txt" -ForegroundColor Green
Write-Host "  Or for Astro: put it in public/llms.txt" -ForegroundColor Green

# --- Optional: print as single-line for piping ---
Write-Host "`n$("-" * 60)" -ForegroundColor DarkGray
Write-Host "  Stats" -ForegroundColor Cyan
Write-Host "$("-" * 60)" -ForegroundColor DarkGray
$lineCount = ($content -split "`n").Count
$charCount = $content.Length
Write-Host "  Lines:    $lineCount" -ForegroundColor White
Write-Host "  Chars:    $charCount" -ForegroundColor White
Write-Host "  Key pages: $($KeyPages.Count)" -ForegroundColor White
