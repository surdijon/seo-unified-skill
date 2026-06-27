# Auto Pipeline — Orchestrated Multi-Phase Audit

> Runs ALL relevant skills in optimal order, spawning subagents per phase.
> Each phase depends on the previous. Results accumulate into one final report.
> Load this reference for: `auto <url>`.

---

## ═══════════════════════════════════════════════
## WHEN THIS FILE IS LOADED
## ═══════════════════════════════════════════════

You are a **pipeline orchestrator**. Your job: run the full audit pipeline by spawning subagents, collecting results, and producing one unified report. Do NOT run phases yourself — delegate to subagents.

### Process

1. **Detect industry** from homepage signals (SaaS/local/ecommerce)
2. **Run Phase 0** — 4 parallel subagents for foundation data
3. **Run Phase 1** — content analysis (sequential, needs Phase 0 data)
4. **Run Phase 2** — local audit (only if local business detected)
5. **Run Phase 3** — GEO + schema (parallel, needs Phase 0-1 data)
6. **Run Phase 4** — links + competition (sequential)
7. **Aggregate all results** into final report
8. **Write learnings** to `evolution/learnings/`

### Quality Gates
- [ ] Each subagent result was verified (not assumed successful)
- [ ] Failed phases are documented but don't block remaining phases
- [ ] Final report includes ALL findings, not just last phase
- [ ] Duplicate findings across phases are merged (not repeated)
- [ ] Industry detected before Phase 1 (affects content priorities)

### Uncertainty
- If Phase 0 fetch fails → mark as CRITICAL, skip all URL-dependent phases, deliver partial report
- If user hasn't specified business name → ask before Phase 2
- If tool access needed (GSC, Ahrefs) → mark as DATA NEEDED per phase

---

## ═══════════════════════════════════════════════
## PIPELINE OVERVIEW
## ═══════════════════════════════════════════════

```
Phase 0 ──→ Phase 1 ──→ Phase 2 ──→ Phase 3 ──→ Phase 4
Discovery    Content      Local        GEO          Links
─────────    ─────────    ─────────    ─────────    ─────────
fetch-url    core-eeat    GBP audit    geo audit    backlinks
head-audit   keywords     NAP check    citecheck    gap scan
technical    brief        schema       serp         freshness
speed        clusters     citations    llms.txt     competitors
                                                    recover
```

### Dependencies

| Phase | Depends | Parallel | Time |
|-------|-----------|-----------|-----------|
| 0: Discovery | None | ✅ 4 subagents | ~30s |
| 1: Content | Phase 0 | ❌ Sequential | ~2min |
| 2: Local | Phase 0 (if local) | ✅ Parallel | ~1min |
| 3: GEO | Phase 0-1 | ✅ Parallel | ~1min |
| 4: Links | Phase 0-3 | ❌ Sequential | ~2min |

**Total estimated time:** 5-7 minutes for full pipeline.

---

## ═══════════════════════════════════════════════
## PHASE 0 — DISCOVERY (parallel)
## ═══════════════════════════════════════════════

Spawn 4 subagents simultaneously. Each gets the target URL. Collect all results before starting Phase 1.

### Subagent 0a: `fetch-url`

**Input:** `$URL`
**Reference:** `scripts/fetch-url.ps1`
**Task:** Fetch URL, extract title, meta description, H1, H2s (first 10), schema blocks, word count, HTTP status, canonical tag.

### Subagent 0b: `head-audit`

**Input:** `$URL`
**Reference:** `references/head-tags.md`
**Task:** Full 40-item head tag audit. Score each category.

### Subagent 0c: `technical-seo`

**Input:** `$URL`
**Reference:** `references/technical-seo.md`
**Task:** 3-layer diagnostic (crawlability, indexability, signals). Check robots.txt, sitemap, canonicals, noindex, mobile, schema.

### Subagent 0d: `speed`

**Input:** `$URL`
**Reference:** `references/technical-seo.md` (CWV section)
**Task:** Fetch PageSpeed Insights (via script or API), parse LCP/CLS/INP, diagnose root causes.

### Phase 0 Aggregation

After all 4 subagents return, build the foundation context:

```json
{
  "url": "$URL",
  "industry": "local|saas|ecommerce",
  "page": { "title":"...", "desc":"...", "word_count": 1234 },
  "head_score": 85,
  "tech_score": 72,
  "speed_score": 90,
  "blockers": ["AI crawlers blocked in robots.txt"],
  "issues": ["Missing OG image", "Canonical wrong"]
}
```

Pass this context object to Phase 1.

---

## ═══════════════════════════════════════════════
## PHASE 1 — CONTENT (sequential)
## ═══════════════════════════════════════════════

Uses Phase 0 context. Run subagents in order (each may depend on previous).

### Subagent 1a: `core-eeat`

**Input:** `$URL` + Phase 0 context
**Reference:** `references/core-eeat-benchmark.md`
**Task:** Score content against 80-dimension CORE-EEAT benchmark. Prioritize items relevant to detected industry.

### Subagent 1b: `keywords` (optional — topic needed)

**Input:** `$TOPIC` (ask user if not provided) + Phase 0 context
**Reference:** `references/content-strategy.md`
**Task:** Generate keyword list with intent mapping + opportunity assessment. Check cannibalization.

### Subagent 1c: `brief` (optional — topic needed)

**Input:** `$TOPIC` + Phase 0-1 context
**Reference:** `references/content-strategy.md`
**Task:** Generate editor-ready content brief with SERP analysis, outline, EEAT requirements, GEO optimization.

### Phase 1 Aggregation

Append to context:
```json
{
  "eeat_score": 68,
  "critical_eeat_items": ["Exp04: no original photos", "C02: no answer in first 150 words"],
  "keywords": { "immediate": [], "scheduled": [] },
  "content_gaps": ["missing comparison page", "no FAQ section"]
}
```

---

## ═══════════════════════════════════════════════
## PHASE 2 — LOCAL (conditional, parallel)
## ═══════════════════════════════════════════════

**Only runs if industry = local.** If SaaS/ecommerce, skip to Phase 3.

### Subagent 2a: `local`

**Input:** `$BUSINESS_NAME` (ask user) + `$CITY` + Phase 0 context
**Reference:** `references/local-seo.md`
**Task:** GBP audit guide, NAP consistency check across directories, citation audit, review strategy.

### Subagent 2b: `napcheck`

**Input:** `$BUSINESS_NAME` + `$CITY`
**Reference:** `references/local-seo.md`
**Task:** Check NAP across 5+ directories (web search). Report inconsistencies.

### Subagent 2c: `schema-local`

**Input:** Business details + Phase 0 context
**Reference:** `scripts/gen-local-schema.ps1` + `references/schema-templates.md`
**Task:** Generate and validate LocalBusiness JSON-LD. Check for existing schema on page.

### Phase 2 Aggregation

Append:
```json
{
  "local": {
    "gbp_status": "needs setup",
    "nap_status": "inconsistent on Yelp",
    "citations_needed": ["BBB", "Apple Maps"],
    "schema_complete": false
  }
}
```

---

## ═══════════════════════════════════════════════
## PHASE 3 — GEO (parallel with Phase 2)
## ═══════════════════════════════════════════════

### Subagent 3a: `geo`

**Input:** `$URL` + Phase 0-1 context
**Reference:** `references/geo-optimization.md`
**Task:** AI visibility audit — robots.txt AI crawlers, extractability, quotability, entity strength, llms.txt.

### Subagent 3b: `serp`

**Input:** `$TOPIC` (or primary keyword from Phase 1) + Phase 0 context
**Reference:** `references/serp-targeting.md`
**Task:** Analyze current SERP features, identify targetable features, recommend content structure.

### Phase 3 Aggregation

Append:
```json
{
  "geo": {
    "ai_visible": false,
    "extractability_needs": ["TL;DR box", "answer in 150 words"],
    "entity_gaps": ["no Wikipedia", "no Wikidata"],
    "serp_opportunities": ["featured snippet", "FAQ rich result"]
  }
}
```

---

## ═══════════════════════════════════════════════
## PHASE 4 — LINKS + COMPETITION (sequential)
## ═══════════════════════════════════════════════

### Subagent 4a: `links`

**Input:** `$URL` + Phase 0-3 context
**Reference:** `references/link-building.md`
**Task:** Backlink diagnosis (qualitative), linkable asset recommendation, campaign strategy.

### Subagent 4b: `gap`

**Input:** `$URL` or `$BUSINESS_NAME` + Phase 0-3 context
**Reference:** `references/content-strategy.md`
**Task:** Competitive gap scan — compare against top 3 competitors. Identify content, schema, authority gaps.

### Subagent 4c: `fresh`

**Input:** `$URL` + Phase 0-1 context
**Reference:** `references/content-strategy.md` (recovery section)
**Task:** Check content freshness — stale stats, missing dates, broken examples, outdated advice.

### Phase 4 Aggregation

Append:
```json
{
  "links": { "health":"weak", "top_asset":"original survey", "priority":"citations" },
  "gaps": { "top_competitor":"example.com", "quick_wins":["add FAQ schema","write comparison page"] },
  "freshness": { "score":45, "refresh_pages":["/service","/about"] }
}
```

---

## ═══════════════════════════════════════════════
## FINAL AGGREGATION
## ═══════════════════════════════════════════════

After all phases complete, aggregate into ONE structured report:

```
## Auto Audit: [URL]

**Overall Health Score:** [composite 0-100]
**Priority:** [Excellent / Good / Needs Work / Poor / Critical]

### Phase Results
| Phase | Score | Key Finding | Status |
|-------|-------|-------------|--------|
| 0: Discovery | [score] | [top finding] | ✅/⚠️/❌ |
| 1: Content | [score] | [top finding] | ✅/⚠️/❌ |
| 2: Local | [score] | [top finding] | ✅/⚠️/❌/SKIP |
| 3: GEO | [score] | [top finding] | ✅/⚠️/❌ |
| 4: Links | [score] | [top finding] | ✅/⚠️/❌ |

### Critical Issues (fix immediately)
1. [issue] — [phase] — [fix]
2. ...

### Quick Wins (P0-P1, <30 min each)
1. [fix] — [phase] — [effort]

### 7-Day Action Plan
Day 1: [3 quickest fixes]
Day 2-3: [medium effort fixes]
Day 4-7: [content + local optimizations]

### Full Details by Phase
[Collated findings from all phases, deduplicated]

### Learnings Logged
[Brief note for evolution/]
```

Health = Phase0×0.15 + Phase1×0.25 + Phase2×0.20 + Phase3×0.20 + Phase4×0.20 (redistribute if Phase 2 skipped)

---

If a phase fails → log error, continue remaining phases, note incomplete phase in final report.

## ═══════════════════════════════════════════════
## GROWTH
## ═══════════════════════════════════════════════

- After each auto run, log which phases took longest, which failed, which had uncertain data
- If a pattern repeats (e.g., "Phase 2 always fails because no business name") → suggest improvement to SKILL.md
- If pipeline takes >10 min → suggest optimizations

