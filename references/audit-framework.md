# Audit Framework

> **3-layer audit** that covers technical, on-page, and content analysis.
> Load this reference for: `audit <url>`, `page <url>`.

---

## ═══════════════════════════════════════════════
## WHEN THIS FILE IS LOADED
## ═══════════════════════════════════════════════

You are a **full-stack SEO auditor**. This is the most comprehensive analysis you perform.

### Process

#### Full Site Audit (`audit <url>`)
1. **Load pattern library** → `evolution/pattern-library.md` — check for industry patterns
2. **Load calibrations** → `evolution/calibrations.md` — check for scoring adjustments
3. **Veto check** → see SKILL.md VETO CONDITIONS. If 3+ or Critical → return PARTIALLY_BLOCKED
4. **Layer 1: Technical Foundation** → crawlability + indexability
5. **Layer 2: On-Page Optimization** → title, meta, headings, internal links, schema, images
6. **Layer 3: Content Quality** → load `references/core-eeat-benchmark.md`, score content
7. **Calculate Health Score** → weighted formula with veto caps
8. **Apply WaaS Action Plan** → static-site-specific actions (see section below)
9. **Run quality gates** → verify before output
10. **Write learnings** → `evolution/learnings/`

#### Single Page Analysis (`page <url>`)
- Load `evolution/checklists/page.md` — follow the checklist
- Focus on: CORE-EEAT scoring + on-page optimization + schema detection

### Quality Gates
- [ ] Veto conditions checked before any scoring
- [ ] Pattern library checked for industry-specific issues
- [ ] Each layer has at least one concrete finding (not "everything looks good")
- [ ] Every finding has a specific fix action
- [ ] Uncertainty is clearly marked (not guessed)

### Critical Anti-Hallucination Rules
- ⚠️ NEVER mark a CORE-EEAT item as "Pass" if you cannot verify it from the visible page content
- ⚠️ If you cannot verify an item → mark as `⚠️ UNVERIFIED: [item] — [reason]` (do NOT assume Pass)
- ⚠️ If you have no access to Search Console, Analytics, or backlink tools → mark those layers as `⚠️ DATA NEEDED` and provide qualitative assessment only

### Uncertainty
- **Web search:** Competitor positioning, current Google updates, industry benchmarks
- **Ask user:** Search Console access, Analytics access, backlink tool access
- **Mark:** ⚠️ DATA NEEDED: [what's missing] — [how to get it]. E.g., "traffic data — need GA access"

### Growth
- After delivering → write learnings to `evolution/learnings/`
- If new pattern detected → update `evolution/pattern-library.md`
- If scoring felt off → update `evolution/calibrations.md`

---

## Architecture

```
Layer 1: Technical Foundation     ← Can Google crawl and index the site?
Layer 2: On-Page Optimization     ← Are pages optimized for target keywords?
Layer 3: Content Quality          ← Is the content worth ranking? (CORE-EEAT)
```

**Work in order.** Problems in earlier layers undermine everything below.

---

## Layer 1: Technical Foundation

### Crawlability

- [ ] `robots.txt` — fetch and review. Critical paths blocked? Sitemap directive present?
- [ ] XML sitemap — valid XML, lists important pages, excludes noindex/redirected pages?
- [ ] Site architecture — important pages within 3 clicks from homepage?
- [ ] Orphan pages — any pages with zero internal links?
- [ ] Redirect chains — any paths with ≥2 redirects?
- [ ] HTTP status — important pages return 200? No unexpected 301s, 404s, soft 404s?

**VETO:** robots.txt blocks Googlebot or blocks `/` → overall capped at 2/10.

### Indexability

- [ ] noindex tags — important pages accidentally noindexed?
- [ ] Canonical tags — self-referencing on all pages? No conflicts?
- [ ] Duplicate content — same content at multiple URLs (www/non-www, HTTP/HTTPS, trailing slash)?
- [ ] Search Console index coverage — submitted vs indexed ratio?

---

## Layer 2: On-Page Optimization

### Title Tags
- [ ] Every page has a unique `<title>` under 60 characters
- [ ] Includes primary keyword (in first half if possible)
- [ ] Descriptive and click-worthy (not keyword-stuffed)

### Meta Descriptions
- [ ] Every important page has a unique description (150-160 chars)
- [ ] Includes keyword + value proposition + CTA

### Heading Structure
- [ ] One H1 per page containing primary keyword
- [ ] Logical hierarchy (H1→H2→H3, no skipping)
- [ ] Headings describe section content accurately

### URL Structure
- [ ] Clean, readable, hyphens not underscores
- [ ] No excessive parameters or session IDs

### Internal Linking
- [ ] Important pages have 3+ incoming internal links
- [ ] Descriptive, varied anchor text
- [ ] Hub-and-spoke structure for topic clusters
- [ ] No broken internal links

### Image Optimization
- [ ] All images have descriptive `alt` attributes
- [ ] Modern formats (WebP/AVIF)
- [ ] Appropriate sizing (responsive images)
- [ ] Decorative images use empty `alt=""`

### Structured Data
- [ ] Relevant schema markup present and validates

### On-Page Scoring Rubric

| Section | Weight | Key Checks |
|---------|--------|------------|
| Title Tag | 15% | Keyword, length 50-60, unique, intent match |
| Meta Description | 5% | Keyword, length 150-160, CTA |
| Header Structure | 10% | Single H1, no skips, subtopic coverage |
| Content Quality | 25% | Length, comprehensive, unique, fresh, E-E-A-T |
| Keyword Optimization | 15% | In title/H1/first 100w/URL, density 0.5-2.5%, semantic terms |
| Internal/External Links | 10% | Sufficient links, descriptive anchors, no broken |
| Image Optimization | 10% | Alt text, modern formats, optimized sizes |
| Page-Level Technical | 10% | Clean URL, canonical, mobile-friendly, LCP≤2.5s, HTTPS, schema |

**Content length benchmarks:**

| Intent | Target |
|--------|--------|
| Informational | 1,500+ words |
| Commercial investigation | 1,200+ words |
| Transactional | 500+ words |
| Local | 400+ words |


---

## Layer 3: Content Quality

Apply the full CORE-EEAT 80-item benchmark from `references/core-eeat-benchmark.md`.

### Key Assessments

- **Content coverage:** each page has clear target keyword and intent?
- **Thin content:** pages <300 words that need expansion or consolidation?
- **Freshness:** stale data, broken examples, outdated advice?
- **Cannibalization:** multiple pages targeting the same keyword?
- **Content gaps:** topics competitors cover that this site doesn't?

---

### WaaS Action Plan (Static Sites)

| Priority | Action | Effort | Impact |
|----------|--------|--------|--------|
| P0 | robots.txt: allow AI crawlers + Googlebot | <5 min | Critical |
| P0 | LocalBusiness schema on homepage | 15 min | Critical |
| P0 | NAP consistent: name/address/phone identical everywhere | 30 min | Critical |
| P1 | CORE-EEAT score >60 on all money pages | 2-4h/page | High |
| P1 | Google Business Profile: photos + posts + reviews | 1h/setup + 15min/week | High |
| P1 | Geo-optimized content: answer in 150 words + TL;DR + tables | 1h/page | High |
| P2 | Backlinks: directory citations + local partners | 5h/campaign | Medium |
| P2 | PageSpeed: LCP <2.5s, CLS <0.1, optimize images | 2h | Medium |
| P3 | FAQPage schema + FAQ section on key pages | 30min/page | Medium |
| P3 | Author pages with Person schema + credentials | 1h | Low |

---

## Health Score Calculation

| Layer | Weight | Score (1-10) | Weighted |
|-------|--------|-------------|----------|
| Technical Foundation | 35% | x | x |
| On-Page Optimization | 30% | x | x |
| Content Quality | 35% | x | x |
| **Total** | **100%** | | **X.X/10** |

**Scoring guide:** 8-10 (strong), 5-7 (needs work), 1-4 (critical).

---

### Veto Conditions
See `SKILL.md` → VETO CONDITIONS section. All vetos from SKILL.md apply here.
