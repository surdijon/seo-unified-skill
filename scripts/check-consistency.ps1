param(
  [string]$SkillRoot = (Resolve-Path "$PSScriptRoot/..")
)

$ErrorActionPreference = "Stop"

$ESC = [char]27
$PASS_SYM = "${ESC}[92mPASS${ESC}[0m"
$WARN_SYM = "${ESC}[93mWARN${ESC}[0m"
$FAIL_SYM = "${ESC}[91mFAIL${ESC}[0m"

$passed = 0; $warnings = 0; $failed = 0

function Ok  { param([string]$m) $script:passed++; Write-Host "  $PASS_SYM $m" }
function Warn { param([string]$m) $script:warnings++; Write-Host "  $WARN_SYM $m" }
function Fail { param([string]$m) $script:failed++; Write-Host "  $FAIL_SYM $m" }

function Test-FileExists {
  param([string]$Path)
  try { return Test-Path -LiteralPath $Path -PathType Leaf } catch { return $false }
}

function Format-Size {
  param([long]$Bytes)
  if ($Bytes -ge 1024) { return "{0:N0} KB" -f ($Bytes / 1KB) }
  return "$Bytes B"
}

# ─── Header ────────────────────────────────────────────
Write-Host "╔══════════════════════════════════════════════╗" -ForegroundColor Cyan
Write-Host "║     SEO-GEO-EEAT-CORE Consistency Check     ║" -ForegroundColor Cyan
Write-Host "╚══════════════════════════════════════════════╝" -ForegroundColor Cyan
Write-Host ""

$skillMd = Join-Path $SkillRoot "SKILL.md"
if (-not (Test-FileExists $skillMd)) { Fail "SKILL.md not found at $skillMd"; exit 1 }

try { $skillContent = Get-Content -LiteralPath $skillMd -Raw -ErrorAction Stop }
catch { Fail "Cannot read SKILL.md"; exit 1 }

# ══════════════════════════════════════════════════════
# CHECK 1: All referenced files exist
# ══════════════════════════════════════════════════════
Write-Host "${ESC}[1m[1/6] Referenced files exist${ESC}[0m" -ForegroundColor White

$refs = [regex]::Matches($skillContent, '`((?:references|evolution|scripts)/[^`]+)`') |
  ForEach-Object { $_.Groups[1].Value } | Sort-Object -Unique

$missingRefs = @()
$foundRefs = @()
foreach ($r in $refs) {
  if ($r.EndsWith('/')) {
    $dp = Join-Path $SkillRoot $r
    if (Test-Path -LiteralPath $dp -PathType Container) { $foundRefs += $r } else { $missingRefs += $r }
  } elseif ($r.Contains('*')) {
    $parentDir = Split-Path (Join-Path $SkillRoot $r) -Parent
    if (Test-Path -LiteralPath $parentDir -PathType Container) { $foundRefs += $r } else { $missingRefs += $r }
  } else {
    $fp = Join-Path $SkillRoot $r
    if (Test-FileExists $fp) { $foundRefs += $r } else { $missingRefs += $r }
  }
}

if ($missingRefs.Count -eq 0) {
  Ok "All $($refs.Count) referenced files exist"
} else {
  foreach ($m in $missingRefs) { Fail "Missing: $m" }
}

# ══════════════════════════════════════════════════════
# CHECK 2: File sizes match SKILL.md
# ══════════════════════════════════════════════════════
Write-Host "${ESC}[1m[2/6] File sizes vs SKILL.md table${ESC}[0m" -ForegroundColor White

$sizeMatches = [regex]::Matches($skillContent, '\| `([^`]+)` \| ~(\d+)\s*KB \|')
$sizeWarns = 0
$sizeOk = 0

foreach ($m in $sizeMatches) {
  $relPath = $m.Groups[1].Value.Trim()
  $expectedKb = [int]$m.Groups[2].Value
  $fp = Join-Path $SkillRoot $relPath

    if (-not (Test-FileExists $fp)) { Warn "$($relPath): file not found (expected ~${expectedKb}KB)"; $sizeWarns++; continue }

  try {
    $actualBytes = (Get-Item -LiteralPath $fp).Length
    $actualKb = $actualBytes / 1KB
    $diffPct = [Math]::Abs(($actualKb - $expectedKb) / $expectedKb) * 100
    if ($diffPct -gt 20) {
      Warn "$($relPath): expected ~${expectedKb}KB, actual $(Format-Size $actualBytes) ($('{0:N0}' -f $diffPct)% diff)"
      $sizeWarns++
    } else {
      $sizeOk++
    }
  } catch { Warn "$($relPath): could not read size"; $sizeWarns++ }
}

if ($sizeWarns -eq 0) { Ok "All $sizeOk file sizes within 20% of SKILL.md table" }
else { Write-Host "  ($sizeOk OK, $sizeWarns warnings)" -ForegroundColor DarkGray }

# ══════════════════════════════════════════════════════
# CHECK 3: VETO conditions consistency
# ══════════════════════════════════════════════════════
Write-Host "${ESC}[1m[3/6] VETO conditions consistency${ESC}[0m" -ForegroundColor White

$vetoFiles = @(
  @{ Path = "references/audit-framework.md"; Label = "audit-framework.md" },
  @{ Path = "evolution/quality-gates.md";    Label = "quality-gates.md" }
)
$vetoIssues = 0

foreach ($vf in $vetoFiles) {
  $fp = Join-Path $SkillRoot $vf.Path
  if (-not (Test-FileExists $fp)) { Warn "$($vf.Label): not found"; $vetoIssues++; continue }

  try { $content = Get-Content -LiteralPath $fp -Raw -ErrorAction Stop }
  catch { Warn "$($vf.Label): could not read"; $vetoIssues++; continue }

  $hasFullTable = $content -match '\| Condition \| Check \|'
  $refsSkill = $content -match '(?i)see\s+SKILL\.md.*VETO|SKILL\.md.*veto|SKILL\.md.*VETO'

  if ($hasFullTable) {
    Warn "$($vf.Label) contains its own veto table (should reference SKILL.md instead)"
    $vetoIssues++
  } elseif (-not $refsSkill) {
    Warn "$($vf.Label) does not reference SKILL.md veto conditions"
    $vetoIssues++
  }
}

if ($vetoIssues -eq 0) { Ok "Both files correctly reference SKILL.md for veto conditions" }

# ══════════════════════════════════════════════════════
# CHECK 4: Evolution folder structure
# ══════════════════════════════════════════════════════
Write-Host "${ESC}[1m[4/6] Evolution folder structure${ESC}[0m" -ForegroundColor White

$evolRoot = Join-Path $SkillRoot "evolution"
if (-not (Test-Path -LiteralPath $evolRoot -PathType Container)) { Fail "evolution/ directory not found" }
else {
  $required = @(
    @{T="file"; N="calibrations.md"}, @{T="file"; N="pattern-library.md"}
    @{T="file"; N="quality-gates.md"}, @{T="file"; N="improvement-suggestions.md"}
    @{T="file"; N="uncertainty-log.md"}, @{T="file"; N="review-calendar.md"}
    @{T="file"; N="README.md"}, @{T="dir"; N="checklists"}
    @{T="dir"; N="templates"}, @{T="dir"; N="learnings"}
  )
  $missingItems = @()
  foreach ($r in $required) {
    $p = Join-Path $evolRoot $r.N
    $exists = if ($r.T -eq "file") { Test-FileExists $p } else { Test-Path -LiteralPath $p -PathType Container }
    if (-not $exists) { $missingItems += $r.N }
  }
  if ($missingItems.Count -eq 0) { Ok "All $($required.Count) evolution/ items present" }
  else { Fail "Missing evolution/ items: $($missingItems -join ', ')" }
}

# ══════════════════════════════════════════════════════
# CHECK 5: Scripts are valid PowerShell
# ══════════════════════════════════════════════════════
Write-Host "${ESC}[1m[5/6] Scripts are valid PowerShell${ESC}[0m" -ForegroundColor White

$scriptsDir = Join-Path $SkillRoot "scripts"
if (-not (Test-Path -LiteralPath $scriptsDir -PathType Container)) { Warn "scripts/ directory not found" }
else {
  $ps1Files = Get-ChildItem -LiteralPath $scriptsDir -Filter "*.ps1" -File
  $validCount = 0; $invalidFiles = @()
  foreach ($f in $ps1Files) {
    try {
      $content = Get-Content -LiteralPath $f.FullName -Raw -ErrorAction Stop
    } catch { $invalidFiles += "$($f.Name): cannot read"; continue }

    if ([string]::IsNullOrWhiteSpace($content)) { $invalidFiles += "$($f.Name): empty file"; continue }

    $trimmed = $content.TrimStart()
    if (-not $trimmed.StartsWith("param(")) { $invalidFiles += "$($f.Name): does not start with param("; continue }

    try {
      $null = [System.Management.Automation.Language.Parser]::ParseInput($content, [ref]$null, [ref]$null)
      $validCount++
    } catch { $invalidFiles += "$($f.Name): parse error — $($_.Exception.Message)" }
  }

  if ($invalidFiles.Count -eq 0) { Ok "All $($ps1Files.Count) PowerShell scripts valid" }
  else {
    foreach ($x in $invalidFiles) { Fail $x }
    Write-Host "  ($validCount/$($ps1Files.Count) valid)" -ForegroundColor DarkGray
  }
}

# ══════════════════════════════════════════════════════
# CHECK 6: Cross-references
# ══════════════════════════════════════════════════════
Write-Host "${ESC}[1m[6/6] Cross-references (Quick Reference -> reference files)${ESC}[0m" -ForegroundColor White

$refToFile = [ordered]@{
  "audit-framework"    = "references/audit-framework.md"
  "core-eeat-benchmark" = "references/core-eeat-benchmark.md"
  "geo-optimization"   = "references/geo-optimization.md"
  "content-strategy"   = "references/content-strategy.md"
  "technical-seo"      = "references/technical-seo.md"
  "head-tags"          = "references/head-tags.md"
  "auto-pipeline"      = "references/auto-pipeline.md"
  "schema-templates"   = "references/schema-templates.md"
  "local-seo"          = "references/local-seo.md"
  "link-building"      = "references/link-building.md"
  "serp-targeting"     = "references/serp-targeting.md"
}

$xrMissing = @()
foreach ($kv in $refToFile.GetEnumerator()) {
  $fp = Join-Path $SkillRoot $kv.Value
  if (-not (Test-FileExists $fp)) { $xrMissing += "$($kv.Value) (referenced as '$($kv.Key)')" }
}

if ($xrMissing.Count -eq 0) { Ok "All $($refToFile.Count) Quick Reference entries have matching files" }
else { foreach ($x in $xrMissing) { Fail $x } }

# ─── Summary ──────────────────────────────────────────
Write-Host ""
Write-Host "$("-" * 71)" -ForegroundColor DarkGray
$color = if ($failed -gt 0) { 'Red' } elseif ($warnings -gt 0) { 'Yellow' } else { 'Green' }
Write-Host "Summary: $passed passed, $warnings warnings, $failed failed" -ForegroundColor $color
Write-Host "$("-" * 71)" -ForegroundColor DarkGray
Write-Host ""

if ($failed -eq 0 -and $warnings -eq 0) {
  Write-Host "${ESC}[1mALL CHECKS PASSED${ESC}[0m" -ForegroundColor Green
} elseif ($failed -eq 0) {
  Write-Host "${ESC}[1mALL CHECKS PASSED WITH WARNINGS${ESC}[0m" -ForegroundColor Yellow
} else {
  Write-Host "${ESC}[1m$failed ISSUES FOUND${ESC}[0m" -ForegroundColor Red
}
