# Audit Checklist — Full Site Audit Walkthrough

Follow this order. Do NOT skip steps.

## Phase 1: Preparation (5 min)

- [ ] Confirm target URL with user
- [ ] Note domain type (SaaS/local/ecommerce/publisher/agency)
- [ ] Load `SKILL.md` → identify audit command → load references
- [ ] Load `evolution/pattern-library.md` — check for relevant industry patterns
- [ ] Load `evolution/calibrations.md` — note any current adjustments

## Phase 2: Veto Check (3 min)

- [ ] Fetch `robots.txt` — check for: `Disallow: /`, `GPTBot`, `ClaudeBot`, `PerplexityBot`, `Google-Extended`
- [ ] Check HTTP → HTTPS redirect
- [ ] Scan homepage for: affiliate links without disclosure
- [ ] Scan homepage title: truth vs content match
- [ ] Quick-check a subpage: any major data contradictions?
- [ ] **If 2+ vetos fire → return BLOCKED**

## Phase 3: Quick Scan (10 min)

- [ ] View source / devtools: check `robots` meta tag
- [ ] Check for `llms.txt` existence and quality
- [ ] Check `llms.txt` references all key service pages
- [ ] Check for GEO-optimized markdown files (`llms-*.txt`)
- [ ] Check sitemap.xml existence and validity
- [ ] Scan title tags (3-5 pages): format, length, uniqueness
- [ ] Scan meta descriptions (3-5 pages): presence, quality
- [ ] Scan heading structure (1-2 pages): H1→H2→H3 logical?
- [ ] Check generic page for heading cascade
- [ ] Check image alt texts on front page
- [ ] Check internal linking in an article: related posts?
- [ ] Note page load feel (can't measure exactly, note impressions)

## Phase 4: Technology & Structure (5 min)

- [ ] Detect CMS/tech stack (HTML class names, script patterns)
- [ ] Check page rendering: is content in HTML source or JS-rendered?
- [ ] Check schema detection: right-click > View Page Source, search `application/ld+json`
- [ ] Check Google Search Console alerts (user may have data)
- [ ] Check PageSpeed Insights user may share report

## Phase 5: Content Sampling (10 min)

- [ ] Read landing page: is C02 (direct answer) in first 150 words?
- [ ] Read 2-3 blog posts: average word count, depth, EEAT signals
- [ ] Check one blog: author bio? date? citations?
- [ ] Check About page: does it convey entity authority?
- [ ] Check Contact page: address, phone, email consistent?
- [ ] Check comparison page (if applicable)

## Phase 6: CORE-EEAT Scoring (15 min)

- [ ] Score Content Body (C01-C10) — 35%
- [ ] Score Readability Signals (R01-R10) — 15%
- [ ] Score EEAT Credibility (Ept01-Ept10, E01-E10, Exp01-Exp10) — 25%
- [ ] Score Presentation & Structure (O01-O10) — 10%
- [ ] Score Technical Signals (T01-T10) — 10%
- [ ] Score Local Signals (L01-L10) — 5% (only if local)
- [ ] Apply calibrations from `evolution/calibrations.md`
- [ ] Apply veto capping

## Phase 7: Action Plan (10 min)

- [ ] List critical issues (blocks indexing or causes penalty)
- [ ] List high-impact fixable issues
- [ ] List quick wins (<1 hour)
- [ ] Order by impact
- [ ] Add effort estimates and timeline for each
- [ ] Create 30-day, 60-day, 90-day phases

## Phase 8: Deliver (5 min)

- [ ] Run quality gates (`evolution/quality-gates.md`)
- [ ] Write learning file to `evolution/learnings/`
- [ ] Update `evolution/pattern-library.md` if new pattern found
- [ ] Deliver structured output

---

## Estimated time: ~60 min for full audit
## Quick audit (veto + quick scan + scoring): ~20 min
