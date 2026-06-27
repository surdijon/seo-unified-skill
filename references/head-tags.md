# Head Tags — Complete Audit Reference

> Comprehensive `<head>` audit for static HTML/Astro sites. Covers every tag that matters for SEO, social sharing, AI citation, and browser行为.
> Load this reference for: `head <url>`.

---

## ═══════════════════════════════════════════════
## WHEN THIS FILE IS LOADED
## ═══════════════════════════════════════════════

You are a **head tag specialist**. Your job: audit every `<head>` element, score completeness, flag missing or malformed tags.

### Process (for `head <url>`)

1. **Fetch page HTML** — extract full `<head>` content
2. **Run priority audit** — check P0 tags first (blockers if missing)
3. **Score each category** — technical, SEO, social, icons, GEO
4. **Calculate Head Score** — weighted by priority
5. **Generate fix list** — ordered by impact, with exact HTML to add
6. **Deliver** — structured report with copy-paste fixes

### Quality Gates
- [ ] Page HTML was fetched and parsed (not assumed)
- [ ] P0 items checked before any scoring
- [ ] Every missing tag has exact HTML to insert
- [ ] Schema.org JSON-LD validated (not just presence-checked)
- [ ] OG tags checked for ALL required fields (title, description, image, url, type)
- [ ] Social preview rendered in output (title/desc/image as they'd appear)

### Uncertainty
- **Web search:** Current OG image requirements, favicon format support
- **Ask user:** "What's your brand's primary color for theme-color?", "Do you have a 1200x630px OG image?"
- **Mark:** ⚠️ DATA NEEDED: [e.g., "OG image URL — need to confirm"]

---

## ═══════════════════════════════════════════════
## PRIORITY LEVELS
## ═══════════════════════════════════════════════

| Level | Meaning | Score Weight |
|-------|---------|-------------|
| **P0** | Blocks rendering, SEO, or sharing | 3x |
| **P1** | Strongly recommended for all sites | 2x |
| **P2** | Enhances specific platforms | 1x |
| **P3** | Niche/optional | 0.5x |

---

## P0 — REQUIRED (blocks SEO or rendering)

| # | Tag | Why | Pass | Fail |
|---|-----|-----|------|------|
| 1 | `<meta charset="utf-8">` | Must be within first 1024 bytes | Present in first 1024 bytes | Missing or after 1024 bytes |
| 2 | `<meta name="viewport" content="width=device-width, initial-scale=1">` | Mobile rendering | Correct value | Missing or wrong value |
| 3 | `<title>` | SEO #1 on-page signal | 30-60 chars, unique, includes keyword | Missing, duplicate, or wrong length |
| 4 | `<meta name="description">` | CTR in SERP | 120-160 chars, includes keyword + CTA | Missing, auto-generated, or too short/long |
| 5 | `<link rel="canonical">` | Prevents duplicate content | Self-referencing, matches page URL | Missing or wrong URL |
| 6 | `<meta property="og:title">` | Social sharing title | Present, matches page title | Missing or mismatched |
| 7 | `<meta property="og:description">` | Social sharing description | Present, 2-4 sentences | Missing |
| 8 | `<meta property="og:image">` | Social sharing image | ≥1200x630px, valid URL, loads | Missing or broken |
| 9 | `<meta property="og:url">` | Social canonical URL | Matches page canonical | Missing or wrong |
| 10 | `<meta property="og:type">` | Content type for social | "website" or specific type | Missing |

## P1 — STRONGLY RECOMMENDED

| # | Tag | Why | Pass | Fail |
|---|-----|-----|------|------|
| 11 | `<meta name="robots" content="index,follow">` | Crawl directive | Explicitly set | Missing (defaults OK but explicit is better) |
| 12 | `<link rel="icon">` | Browser tab icon | Present, loads correctly | Missing or broken |
| 13 | `<link rel="apple-touch-icon">` | iOS home screen icon | Present (180x180px+) | Missing |
| 14 | `<link rel="manifest">` | PWA manifest | Present, valid JSON | Missing |
| 15 | `<meta name="theme-color">` | Browser chrome color | Present, matches brand | Missing |
| 16 | `<meta property="og:site_name">` | Social context | Present | Missing |
| 17 | `<meta property="og:locale">` | Language for social | "fr_FR" for French sites | Missing or wrong |
| 18 | `<script type="application/ld+json">` Organization schema | Knowledge Graph + AI entity | JSON-LD present, valid, accurate | Missing or invalid |
| 19 | `<script type="application/ld+json">` LocalBusiness schema | Local SEO | Present with correct subtype | Missing |
| 20 | `<link rel="preconnect">` to key origins | Performance (LCP) | For Google Fonts, CDN, analytics | Missing when needed |
| 21 | `<meta property="og:image:alt">` | Accessibility + social | Describes image content | Missing |

## P2 — ENHANCES SPECIFIC PLATFORMS

| # | Tag | Why | Pass | Fail |
|---|-----|-----|------|------|
| 22 | `<meta name="geo.region">` | Local SEO geo signal | ISO code present | Missing |
| 23 | `<meta name="geo.placename">` | Local SEO geo signal | City name present | Missing |
| 24 | `<meta name="geo.position">` | Local SEO geo signal | Lat;lng present | Missing |
| 25 | `<meta name="ICBM">` | Local SEO geo signal | Lat, lng present | Missing |
| 26 | `<meta name="google-site-verification">` | GSC verification | Present | Missing |
| 27 | `<meta name="format-detection" content="telephone=no">` | Prevents phone auto-linking | Present on non-phone pages | Missing when needed |
| 28 | `<link rel="author" href="humans.txt">` | Author transparency | Present with valid file | Missing |
| 29 | `<meta name="fediverse:creator">` | Mastodon/Fediverse attribution | Present with valid handle | Missing |
| 30 | `<link rel="alternate" type="application/rss+xml">` | RSS feed discovery | Present if blog exists | Missing |
| 31 | `<link rel="sitemap">` | Sitemap discovery | Present | Missing |
| 32 | `<meta name="color-scheme">` | Dark mode support | "light dark" or appropriate value | Missing |

## P3 — NICHE / OPTIONAL

| # | Tag | Why | Pass | Fail |
|---|-----|-----|------|------|
| 33 | `<meta name="application-name">` | PWA app name | Present | Missing |
| 34 | `<meta name="google" content="nositelinkssearchbox">` | SERP control | Present if needed | Missing |
| 35 | `<meta name="referrer">` | Referrer policy | Explicitly set | Missing |
| 36 | `<meta name="dcterms.*">` / Dublin Core | Academic/library metadata | Present | Missing |
| 37 | `<link rel="license">` | Copyright/license | Present | Missing |
| 38 | `<script type="application/ld+json">` FAQPage schema | AI citation boost | Present on FAQ pages | Missing |
| 39 | `<script type="application/ld+json">` BreadcrumbList | SERP breadcrumbs | Present | Missing |
| 40 | `<link rel="preload">` for critical resources | LCP optimization | For hero image or fonts | Missing when needed |

---

## ═══════════════════════════════════════════════
## SCORING
## ═══════════════════════════════════════════════

### Category Scores

| Category | Items | Weight |
|----------|-------|--------|
| **Technical Foundation** | #1-5, #11, #15, #20, #31, #35 | 30% |
| **Social Sharing** | #6-10, #16-17, #21 | 25% |
| **Schema / GEO** | #18-19, #38-39 | 20% |
| **Icons / Platform** | #12-14 | 10% |
| **Local Geo Signals** | #22-25 | 10% |
| **Extras** | #26-37, #40 | 5% |

Each item: Pass = 100, Partial = 50, Fail = 0.
Category score = (sum of weighted item scores / max possible) × 100.
Total Head Score = weighted average of categories.

### Ratings

| Score | Rating | Meaning |
|-------|--------|---------|
| 90-100 | 🟢 Excellent | Ready for production |
| 75-89 | 🟡 Good | Minor gaps to fill |
| 50-74 | 🟠 Needs Work | Missing key P0/P1 tags |
| 25-49 | 🔴 Poor | Missing essential tags |
| 0-24 | ⚫ Critical | Barely any head tags present |

### P0 Blockers

If any P0 item (#1-10) is missing, output:
```
⚠️ BLOCKER: Missing [tag] — fix before launch. [exact HTML]
```

---

## ═══════════════════════════════════════════════
## OUTPUT FORMAT
## ═══════════════════════════════════════════════

```
## Head Audit: [URL]

**Head Score:** XX/100 — [Rating]

**P0 Blockers:** [count]
[If any, list each with exact fix HTML]

**Category Scores:**
- Technical Foundation: XX/100
- Social Sharing: XX/100
- Schema / GEO: XX/100
- Icons / Platform: XX/100
- Local Geo Signals: XX/100
- Extras: XX/100

**Missing Tags (by priority):**
| # | Tag | Priority | Fix |
|---|-----|----------|-----|

**Social Preview:**
Would render as:
  Title: [og:title]
  Description: [og:description]
  Image: [og:image]

**Quick Wins (P0-P1, <5 min each):**
1. [fix] — [effort]
2. ...

**Full Head HTML (current):**
```html
[...]
```
```

---

See scripts/gen-local-schema.ps1 for auto-generated schema JSON-LD.

---

## ═══════════════════════════════════════════════
## GROWTH
## ═══════════════════════════════════════════════

- Read `evolution/pattern-library.md` for common head tag issues per industry
- After delivering, write learnings to `evolution/learnings/`
- If you discover a new head tag pattern → suggest adding to this file
