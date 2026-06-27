param(
  [string]$Name,
  [string]$Type = "LocalBusiness",
  [string]$Street,
  [string]$City,
  [string]$Region,
  [string]$PostalCode,
  [string]$Country = "FR",
  [string]$Phone,
  [string]$Url,
  [string]$Lat = "",
  [string]$Lng = "",
  [string]$Hours = "Mo-Fr 09:00-18:00",
  [string]$Image = "",
  [string]$Description = "",
  [string]$PriceRange = "$$",
  [string[]]$SameAs = @()
)

if (-not $Name) {
  Write-Host "ERROR: -Name parameter is required." -ForegroundColor Red
  Write-Host "Usage: .\scripts\gen-local-schema.ps1 -Name ""Business Name"" -Type ""Restaurant"" -Street ""123 Main St"" -City ""Dijon"" -Region ""Bourgogne"" -PostalCode ""21000"" -Country ""FR"" -Phone ""+33-3-80-00-00-00"" -Url ""https://example.com"" -Lat ""47.3220"" -Lng ""5.0415"" -Hours ""Mo-Fr 09:00-18:00""" -ForegroundColor Yellow
  exit 1
}

if (-not $Type) {
  Write-Host "WARNING: -Type is empty. Using 'LocalBusiness' as default." -ForegroundColor Yellow
  $Type = "LocalBusiness"
}

Write-Host "╔══════════════════════════════════════════════════╗" -ForegroundColor Cyan
Write-Host "║        LocalBusiness JSON-LD Generator           ║" -ForegroundColor Cyan
Write-Host "╚══════════════════════════════════════════════════╝" -ForegroundColor Cyan

# --- Parse hours ---
function Parse-Hours {
  param([string]$HoursStr)
  $dayMap = @{
    "Mo" = "Monday"; "Tu" = "Tuesday"; "We" = "Wednesday"; "Th" = "Thursday"
    "Fr" = "Friday"; "Sa" = "Saturday"; "Su" = "Sunday"
    "Mon" = "Monday"; "Tue" = "Tuesday"; "Wed" = "Wednesday"; "Thu" = "Thursday"
    "Fri" = "Friday"; "Sat" = "Saturday"; "Sun" = "Sunday"
  }
  $specs = @()
  $parts = $HoursStr -split ';' | ForEach-Object { $_.Trim() }
  foreach ($part in $parts) {
    $rangeMatch = [regex]::Match($part, '^([A-Za-z]{2,3})-([A-Za-z]{2,3})\s+(\d{2}:\d{2})-(\d{2}:\d{2})$')
    if ($rangeMatch.Success) {
      $startDay = $dayMap[$rangeMatch.Groups[1].Value]; $endDay = $dayMap[$rangeMatch.Groups[2].Value]
      $open = $rangeMatch.Groups[3].Value; $close = $rangeMatch.Groups[4].Value
      if ($startDay -and $endDay) {
        $specs += @{ "@type" = "OpeningHoursSpecification"; "dayOfWeek" = @("$startDay","$endDay"); "opens" = $open; "closes" = $close }
      }
      continue
    }
    $singleMatch = [regex]::Match($part, '^([A-Za-z]{2,3})\s+(\d{2}:\d{2})-(\d{2}:\d{2})$')
    if ($singleMatch.Success) {
      $day = $dayMap[$singleMatch.Groups[1].Value]
      $open = $singleMatch.Groups[2].Value; $close = $singleMatch.Groups[3].Value
      if ($day) {
        $specs += @{ "@type" = "OpeningHoursSpecification"; "dayOfWeek" = $day; "opens" = $open; "closes" = $close }
      }
      continue
    }
    $multiMatch = [regex]::Match($part, '^([A-Za-z]{2,3}(?:,[A-Za-z]{2,3})+)\s+(\d{2}:\d{2})-(\d{2}:\d{2})$')
    if ($multiMatch.Success) {
      $days = $multiMatch.Groups[1].Value -split ',' | ForEach-Object { $dayMap[$_.Trim()] } | Where-Object { $_ }
      $open = $multiMatch.Groups[2].Value; $close = $multiMatch.Groups[3].Value
      if ($days.Count -gt 0) {
        $specs += @{ "@type" = "OpeningHoursSpecification"; "dayOfWeek" = $days; "opens" = $open; "closes" = $close }
      }
    }
  }
  if ($specs.Count -eq 0) {
    $specs += @{ "@type" = "OpeningHoursSpecification"; "dayOfWeek" = @("Monday","Friday"); "opens" = "09:00"; "closes" = "18:00" }
  }
  return $specs
}

$hoursSpecs = Parse-Hours -HoursStr $Hours

# --- Build schema ---
$schema = [ordered]@{
  "@context" = "https://schema.org"
  "@type" = $Type
  "name" = $Name
}

if ($Description) { $schema["description"] = $Description }
if ($Image) { $schema["image"] = $Image }
if ($Url) { $schema["url"] = $Url }
if ($Phone) { $schema["telephone"] = $Phone }
if ($PriceRange) { $schema["priceRange"] = $PriceRange }

# Address
if ($Street -or $City -or $Region -or $PostalCode -or $Country) {
  $addr = [ordered]@{ "@type" = "PostalAddress" }
  if ($Street) { $addr["streetAddress"] = $Street }
  if ($City) { $addr["addressLocality"] = $City }
  if ($Region) { $addr["addressRegion"] = $Region }
  if ($PostalCode) { $addr["postalCode"] = $PostalCode }
  if ($Country) { $addr["addressCountry"] = $Country }
  $schema["address"] = $addr
}

# Geo
if ($Lat -and $Lng) {
  $schema["geo"] = [ordered]@{
    "@type" = "GeoCoordinates"
    "latitude" = [float]$Lat
    "longitude" = [float]$Lng
  }
}

# Hours
$schema["openingHoursSpecification"] = $hoursSpecs

# SameAs
if ($SameAs.Count -gt 0) {
  $schema["sameAs"] = @($SameAs)
}

$json = $schema | ConvertTo-Json -Depth 10

# --- Output ---
Write-Host "`n$("-" * 60)" -ForegroundColor DarkGray
Write-Host "  Generated JSON-LD" -ForegroundColor Cyan
Write-Host "$("-" * 60)" -ForegroundColor DarkGray
Write-Host $json -ForegroundColor White

Write-Host "`n$("-" * 60)" -ForegroundColor DarkGray
Write-Host "  Copy-Paste HTML Block" -ForegroundColor Cyan
Write-Host "$("-" * 60)" -ForegroundColor DarkGray

$htmlComment = @"
<script type="application/ld+json">
$json
</script>
"@

Write-Host $htmlComment -ForegroundColor Green
Write-Host "`n  Insert this in your Astro/HTML site:" -ForegroundColor White
Write-Host "  → Astro (src/pages/): Paste in <head> or before </body>" -ForegroundColor Yellow
Write-Host "  → HTML: Paste in <head> or before </body>" -ForegroundColor Yellow
Write-Host "  → Recommended: src/components/SEO/SEO.astro or layout file" -ForegroundColor Yellow

# --- Validate ---
Write-Host "`n$("-" * 60)" -ForegroundColor DarkGray
Write-Host "  Validation" -ForegroundColor Cyan
Write-Host "$("-" * 60)" -ForegroundColor DarkGray
Write-Host "  @type:  $Type" -ForegroundColor White
Write-Host "  Name:   $Name" -ForegroundColor White
Write-Host "  Phone:  $(if ($Phone) { $Phone } else { 'NOT SET' })" -ForegroundColor $(if ($Phone) { 'Green' } else { 'Yellow' })
Write-Host "  Address: $(if ($Street -and $City) { "$Street, $City" } else { 'INCOMPLETE' })" -ForegroundColor $(if ($Street -and $City) { 'Green' } else { 'Yellow' })
Write-Host "  Geo:    $(if ($Lat -and $Lng) { 'SET' } else { 'NOT SET' })" -ForegroundColor $(if ($Lat -and $Lng) { 'Green' } else { 'Yellow' })
Write-Host "  Hours:  $Hours" -ForegroundColor White
Write-Host "  SameAs: $(if ($SameAs.Count -gt 0) { $SameAs.Count.ToString() + ' URLs' } else { 'NONE' })" -ForegroundColor $(if ($SameAs.Count -gt 0) { 'Green' } else { 'DarkGray' })
