# Content Strategy

> Keyword research, content briefs, topic clusters, content recovery, and competitive analysis.
> Load this reference for: `keywords`, `brief`, `clusters`, `recover`, `competitors`.

---

## ═══════════════════════════════════════════════
## WHEN THIS FILE IS LOADED
## ═══════════════════════════════════════════════

You are a **content strategy specialist**. Each command loads this file for a different purpose.

### Process by Command

**`keywords <topic>`**
1. Verify topic matches the user's business/industry type
2. Group by intent (informational/commercial/transactional/navigational)
3. Score each using Opportunity Matrix (qualitative — see §1)
4. Check cannibalization screen first
5. Deliver: tiered keyword list ranked by opportunity

**`brief <topic>`**
1. SERP analysis: search the topic, analyze top 5-10 results
2. Intent mapping: match structure to searcher expectation
3. Title options: 2-3 variants using CTR boosters
4. Heading structure: complete outline
5. EEAT requirements per content type
6. Evidence floor: minimum sources by content type
7. Differentiation angle: pick 1-2 angles from the list below
8. Deliver: full editor-ready brief + schema recommendation
9. Append GEO-Optimized Brief requirements if the topic targets AI visibility (see §2 GEO-Optimized Brief)

**`clusters <topic>`**
1. Identify head term (pillar)
2. Find subtopics / spokes (use SERP + PAA + related searches)
3. Assess coverage using Coverage Scoring table (qualitative — see §3)
4. Production sequence: pillar first, then spokes by opportunity
5. Plan interlinking structure

**`recover <url>`**
1. Run Decay Triage Decision Tree
2. Calculate Composite Decay Score
3. Generate recovery action (refresh/consolidate/redirect/retire)
4. If refresh: use Refresh Playbook

**`competitors <domain>`**
1. Identify top 3-5 competitors (web search if needed)
2. Build gap types (battleground/their territory/your territory/white space)
3. Assess each opportunity using Attack Priority matrix (qualitative — see §5)
4. Build battlecard per competitor
5. Production sequence

### Quality Gates
- [ ] Cannibalization checked before new keyword recommendations
- [ ] SERP analysis done (not just assumed)
- [ ] Brief includes EEAT requirements for the specific content type
- [ ] Differentiation angle selected (not just generic)
- [ ] Recovery decision has clear justification
- [ ] Competitor battlecards include honest strengths, not only weaknesses

### Uncertainty
- **Web search:** SERP results for keyword analysis, competitor research, current PAA questions
- **Ask user:** "Who are your top competitors?", "What's your business's unique differentiator?", "Do you have existing content on this topic?"
- **Mark:** ⚠️ DATA NEEDED: [e.g., "competitor traffic data — need tool access"]

### Growth
- Read `evolution/pattern-library.md` for content gaps common in this industry
- After delivering, write learnings to `evolution/learnings/`
- If you find a new content gap pattern → suggest adding to pattern-library.md

---

## 1. Keyword Research (`keywords <topic>`)

### Tier Construction

| Tier | Type | Volume | Difficulty | Timeline |
|------|------|--------|------------|----------|
| 1 | Head terms (1-2 words) | High | High | 6-18 months |
| 2 | Body terms (2-3 words) | Medium | Medium | 3-6 months |
| 3 | Long-tail (3+ words) | Low | Low | 4-12 weeks |

### Intent Classification

| Intent | Signal Words | Content Type |
|--------|-------------|-------------|
| Informational | what, why, how to, guide, definition | Blog, tutorial, guide |
| Commercial investigation | best, vs, review, comparison, pricing | Comparison, listicle, buyer's guide |
| Transactional | buy, price, trial, demo, near me, hire | Landing, product, service page |
| Navigational | [brand name], login, docs, support | Homepage, support |

### Opportunity Assessment (qualitative)

| Level | Signals | Priority |
|-------|---------|----------|
| **High** | Topic matches your business, low competition in SERP, high relevance to conversion | Pursue immediately |
| **Medium** | Topic matches your business, moderate competition gap exists | Schedule within 1 month |
| **Low** | Topic tangential to business or highly competitive without angle | Park for later |

**Intent Multipliers** (use to prioritize within same level): Transactional=1.5, Commercial=1.3, Informational=1.0, Navigational=0.2

> **Note:** These multipliers are approximate prioritization heuristics, not precise ranking signals. Use as relative guidance within the same qualitative level.

### Cannibalization Screen (RUN FIRST)

Before adding new keywords: `site:domain.com [keyword]` — if an existing page already targets this term, update it instead of creating a new page.

### Low-Hanging Fruit Check

- Positions 11-20 → content improvements or better internal linking
- High impressions + low clicks → title/meta description optimization
- Declining positions → content refresh

> **Requires Google Search Console access** for position, impression, and click data. Skip this section if user doesn't have GSC.

---

## 2. Content Brief (`brief <topic>`)

### Structure

1. **SERP analysis** — top 5-10 results, format, word count, gaps
2. **Intent mapping** — match structure to searcher expectation
3. **Title options** — 2-3 variants with CTR boosters

**CTR boosters:** Add number (+15-25%), current year (+10-15%), brackets (+10-38%), power word (+5-12%).

> **Source:** These are historical industry averages (2017-2020 data). Actual CTR impact varies by query, audience, and SERP layout.

### Title Formulas

| Type | Formula | Example |
|------|---------|---------|
| How-to | "How to [Goal] in [Timeframe]" | "How to Fix Crawl Errors in 30 Minutes" |
| Listicle | "[N] [Adjective] [Topic] [Qualifier]" | "9 Proven Link Building Strategies for SaaS" |
| Comparison | "[A] vs [B]: Which Is Better for [Goal]?" | "Ahrefs vs SEMrush: Which Is Better for Keyword Research?" |
| Definition | "What Is [Topic]? [Short Clarifier]" | "What Is Topical Authority? How It Affects Rankings" |
| Ultimate guide | "The [Complete/Definitive] Guide to [Topic]" | "The Complete Guide to Technical SEO" |

**Rules:** Keep under 60 chars (55 for mobile), include primary keyword.

### Meta Description (150-160 chars recommended — Google now varies snippet length; include keyword + CTA in first 120 chars)

### Heading Structure

```
H1: [Title]
  H2: [Section 1] — what to cover, target length
    H3: [Subsection] — specific points
  H2: [Section 2]
  H2: FAQ — 3-5 questions from People Also Ask
```

### E-E-A-T Requirements

| Content Type | Experience | Expertise | Authority | Trust | Top Priority |
|-------------|:----------:|:---------:|:---------:|:----:|:-----------:|
| Product review | Critical | High | Medium | High | Experience |
| How-to guide | High | Critical | Medium | High | Expertise |
| Research/data | Medium | Critical | Critical | Critical | Authority + Trust |
| Opinion | Critical | High | High | Medium | Experience |
| Comparison | High | High | Medium | Critical | Trust |

### Evidence Floor

| Content Type | Min Sources | Tier Requirement |
|-------------|-------------|------------------|
| Research/data-driven | 5+ | ≥2 primary (official docs, studies, .gov/.edu) |
| How-to/tutorial | 2-3 | Official documentation for tools referenced |
| Opinion / thought leadership | 3+ | Data per major claim |
| Comparison / best-of | 1 per item | First-hand testing evidence |

### Differentiation Angle (pick 1-2)

- More current (updated data, recent examples)
- More practical (templates, checklists, screenshots)
- More comprehensive (covers subtopics competitors skip)
- More specific (targets niche broad pieces miss)
- Original data (survey results, internal analysis, expert quotes)

---

### GEO-Optimized Brief

When creating content for AI visibility, add these to the brief:

**GEO Requirements:**
- [ ] Direct answer to target query in first 150 words (C02)
- [ ] Key Takeaways / TL;DR box at top (O02)
- [ ] At least one original data point or insight (E01)
- [ ] HTML data tables for specs/comparisons (O03)
- [ ] External citations to authoritative sources with dates (R02)
- [ ] FAQ section with FAQPage schema (C09)
- [ ] Self-contained statements (quotable without context)
- [ ] "X is Y" definitions for all key terms
- [ ] Conclusion that answers opening question + next steps (C10)

**GEO Differentiation Angle (pick 1):**
- Original data that AI can cite exclusively
- More extractable structure than competitors (tables > prose)
- More quotable claims (specific numbers with named sources)
- More comprehensive (covers subtopics AI engines combine)

---

## 3. Topic Clusters (`clusters <topic>`)

### Structure

- **Pillar page** — comprehensive overview (2,000-4,000 words), targets head term
- **Spoke pages** — focused articles on subtopics (8-20 per cluster typical; adjust based on topic breadth — narrow niches may need fewer)
- **Internal links** — every spoke → pillar, pillar → every spoke, spokes ↔ siblings

### Coverage Scoring
Coverage: does the cluster cover the main subtopics competitors address? (Yes/Partial/No)
Link Health: does each spoke link to the pillar and vice versa?

### Cluster States

| State | Coverage | Link Health | Expected Result |
|-------|----------|-------------|----------------|
| Incomplete | <50% | <70% | Pillar unlikely to rank page 1 |
| Developing | 50-70% | 70-90% | Pillar page 2-3; some long-tail rankings |
| Competitive | 70-90% | 100% | Pillar competes page 1; most spokes rank |
| Dominant | >90% | 100% | Pillar strong page 1; captures most queries |

### Production Sequence

1. Pillar page first (hub)
2. Highest-opportunity spokes (biggest content gap + strongest business relevance)
3. Refresh existing partial-gap spokes
4. Remaining spokes
5. Update pillar with links to new spokes

---

## 4. Content Recovery (`recover <url>`)

### Decay Triage Decision Tree

1. **Topic still relevant?** NO → Retire (301 to closest relevant page)
2. **Another page targeting same topic?** YES → Consolidate (merge + 301 weaker)
3. **Search intent shifted?** YES → Rewrite (match new intent, keep URL)
4. **Content simply outdated?** YES → Refresh (stats, screenshots, dates, new sections)
5. Otherwise → investigate technical or competitive issues

### Decay Triage (qualitative)

| Signal | Assessment | Action |
|--------|-----------|--------|
| **Topic still relevant?** | Check if people still search for this | No → Retire (301 to relevant page) |
| **Competitors overtaking?** | Compare with top 3 current results | Yes → Identify what they cover that you don't |
| **Content outdated?** | Stats, examples, screenshots stale | Yes → Refresh |
| **Another page targets same?** | Check for cannibalization | Yes → Consolidate (merge + 301 weaker) |
| **Otherwise** | — | Investigate technical or competitive issues |

### Refresh Playbook (Blog Post)

1. Update title with current year (10 min)
2. Rewrite intro with fresh angle (20 min)
3. Update all statistics with current sources (30-60 min)
4. Add 1-2 new sections covering gaps competitors address (60-90 min)
5. Update screenshots and images (30 min)
6. Add/refresh FAQ with current PAA questions (20 min)
7. Refresh internal links (15 min)
8. Update meta description (5 min)
9. Add/update schema (dateModified at minimum) (10 min)
10. Re-submit to Search Console (5 min)

---

### Competitor Scan (Local WaaS)
For local business sites: search the primary service + city, examine top 3 results.
Note: content depth, schema presence, review count, backlink profile (qualitative).
Then create content that exceeds all three in at least 2 dimensions.

---
