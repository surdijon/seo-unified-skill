# CORE-EEAT Content Benchmark

> **8 dimensions × 70 items** for optimizing content visibility across AI engines (GEO) and search engines (SEO).
> Load this reference for: `score`, `content`, `audit`, `brief`.

---

## ═══════════════════════════════════════════════
## WHEN THIS FILE IS LOADED
## ═══════════════════════════════════════════════

You are a **CORE-EEAT content scorer**. The calling command determines the depth:

| Command | Scope | Output |
|---------|-------|--------|
| `score <url>` | Quick 70-item snapshot | Score only + top 5 issues |
| `content <url>` | Full benchmark + improvement plan | Score per dimension + action items |
| `audit <url>` | Layer 3 of 3-layer audit | Integrated with tech + local |
| `brief <topic>` | Content brief with EEAT requirements | Brief template + evidence floor |

### Process (for ALL commands)
1. **Veto check first** — check C01 (clickbait), T04 (undisclosed affiliates), R10 (data contradictions). See SKILL.md VETO CONDITIONS.
2. **Detect site maturity** — use Site Maturity Detection below. Affects scoring thresholds.
3. **Detect content type** — use Content Type Decision Tree below.
4. **Score 70 items** — Pass=10, Partial=5, Fail=0. Thresholds depend on maturity.
5. **Apply weights** — use Content Type Weight Table for the detected type.
6. **Apply veto capping** — if veto fired, cap score.
7. **Generate output** — score + key findings + maturity-adapted fix actions.

### Quality Gates
- [ ] Site maturity detected before scoring (new/growing/established/dominant)
- [ ] Scores adapted to maturity (never penalize a new site for lack of backlinks)
- [ ] Every Pass is supported by verifiable evidence from the page
- [ ] Every score of 0 has a specific fix action, not a generic suggestion
- [ ] Top 5 issues prioritized by impact × effort (not just ease)
- [ ] No item marked as Pass unless you can cite the evidence

### Truth Protocol (STRICT — never violate)
- ⚠️ **Never** mark an item as Pass without **visible, verifiable evidence**. Guessing = lying.
- ⚠️ **Never** say "backlink profile is healthy" without seeing backlink data. Say "⚠️ DATA NEEDED: backlink tool access required" instead.
- ⚠️ **Never** claim schema "validates" without checking against schema.org or Rich Results Test.
- ⚠️ **Never** assume content is "comprehensive" without comparing to at least 1 competitor page.
- ⚠️ **Never** invent statistics, examples, or case studies. If the page lacks them, score 0.
- ⚠️ **Never** claim "X is likely missing" when you haven't fetched the resource (robots.txt, sitemap, etc.). Fetch it first.
- ⚠️ **Never** soften a Fail to Partial just to be nice. Fail = no evidence found OR evidence contradicts.
- ⚠️ **Always** prefix unverifiable findings with: `⚠️ UNVERIFIED: [claim] — [why].`
- ⚠️ **Always** mark data-dependent items (A01, A02, A05) as "⚠️ DATA NEEDED" if you lack tool access. Do NOT guess.

### Uncertainty
- **Web search:** Search for the topic to understand competing content quality
- **Ask user:** "What content type does this page target?", "How old is this site?", "Do you have backlink tool access?"
- **Mark:** ⚠️ DATA NEEDED: [specific item, e.g. "A01 backlinks — need Ahrefs/Semrush access"]

### Growth
- Read `evolution/pattern-library.md` before scoring (recurring issues per industry)
- Read `evolution/calibrations.md` for current scoring adjustments
- After delivering, write learnings to `evolution/learnings/`

---

## Overview

| System | Focus | Dimensions | Items | Boundary |
|--------|-------|------------|-------|----------|
| **CORE** | GEO (AI Engine Optimization) | C · O · R · E | 40 | Content body |
| **EEAT** | SEO (Search Engine Optimization) | Exp · Ept · A · T | 30 | Author / Organization / Site |

**Rule:** visible in the article/page → CORE. Requires checking author/org/site → EEAT.

### Priority Tags

| Tag | Meaning |
|-----|---------|
| **GEO🎯** | Critical for AI engine citation |
| **SEO🔍** | Critical for traditional search ranking |
| **Dual⚡** | Important for both |

### Rating Scale

| Score | Rating |
|-------|--------|
| 90-100 | Excellent |
| 75-89 | Good |
| 60-74 | Medium |
| 40-59 | Low |
| 0-39 | Poor |

---

## Site Maturity Detection (CHECK BEFORE SCORING)

Detect site maturity from homepage + user input. This changes how items are scored — a new site should NOT be penalized for missing authority signals.

| Level | Signals | Scoring Adaptation |
|-------|---------|-------------------|
| **New** | <6 months since first indexed, <10 pages visible, 0-5 referring domains (if known), no GBP or just created, no media mentions | **Lenient on authority**: A01-A06 excluded from SEO score. **Strict on content**: C02, C04, O02, O05 required. Exp04: ≥1 photo is Pass. Focus: content foundation + technical basics. |
| **Growing** | 6-18 months, 10-30 pages, 5-20 referring domains, GBP active with <50 reviews, some social presence | **Moderate on authority**: A01-A06 scored but weighted 50%. **Normal on content**. Exp04: ≥3 photos. Focus: content depth + local signals. |
| **Established** | 18+ months, 30+ pages, 20+ referring domains, GBP optimized with 50+ reviews, media mentions exist | **Full scoring**: All items weighed at 100%. Exp04: ≥10 photos. Focus: authority + differentiation + GEO. |
| **Dominant** | 3+ years, 100+ pages, 50+ referring domains, Knowledge Panel present, top 3 rankings for key terms | **Strict scoring**: Higher bars on exclusivity (E01-E10 must be strong). Exp04: ≥20 photos. Focus: moat-building + forward insights. |

### How to determine maturity

1. **Check page count** — `site:domain.com` (rough count)
2. **Check Wayback Machine** — oldest snapshot = approximate age
3. **Check GBP** — number of reviews = activity proxy
4. **Ask user** — "Quel âge a ce site ? Depuis combien de temps est-il actif ?"
5. **Fallback** — if no data, default to **Growing** (middle ground)

### Impact on Scoring

| Item | New | Growing | Established | Dominant |
|------|-----|---------|-------------|----------|
| A01 Backlinks | Excluded from score | Mark as ⚠️ DATA NEEDED | Scored normally | Scored strictly |
| A02 Media Mentions | Excluded | Scored at 50% weight | Scored normally | Scored strictly |
| Exp04 Original Photos | ≥1 = Pass | ≥3 = Pass | ≥10 = Pass | ≥20 = Pass |
| E01 Original Data | Nice-to-have | Expected | Required | Required with depth |
| R06 Freshness | Any date = Pass | <2 years = Pass | <1 year = Pass | <6 months = Pass |
| O05 Schema | Basic schema = Pass | Correct type = Pass | Full validation = Pass | Multiple schemas = Pass |

### When maturity is unknown
Default to **Growing**. Never assume Established or Dominant without evidence. Never penalize a likely-new site for missing authority.

---

## Scoring Calculation

**Per item:** Pass=10, Partial=5, Fail=0

**Standard formula:**
- GEO Score = (C + O + R + E) / 4
- SEO Score = (Exp + Ept + A + T) / 4
- Total = (GEO + SEO) / 2

**Weighted formula** (use for content-type-specific evaluation):
```
Weighted Score = Σ (dimension_score × content_type_weight)
```

### Content Type Weight Table

| Dim | Product Review | How-to | Comparison | Landing Page | Blog Post | FAQ | Alternative | Best-of | Testimonial |
|-----|:-------------:|:------:|:----------:|:------------:|:---------:|:---:|:-----------:|:-------:|:-----------:|
| C | 10% | 20% | 10% | 20% | 25% | 25% | 10% | 10% | 10% |
| O | 10% | 20% | 20% | 10% | 10% | 25% | 15% | 25% | 5% |
| R | 15% | 10% | 25% | 5% | 10% | 15% | 25% | 20% | 15% |
| E | 20% | 5% | 10% | 5% | 20% | 5% | 5% | 15% | 10% |
| Exp | 20% | 5% | 5% | 5% | 10% | 5% | 15% | 5% | 30% |
| Ept | 5% | 20% | 15% | 5% | 10% | 10% | 5% | 10% | 5% |
| A | 5% | 5% | 5% | 25% | 5% | 5% | 5% | 5% | 5% |
| T | 15% | 15% | 10% | 25% | 10% | 10% | 20% | 10% | 20% |

---

## Veto Items

| ID | Trigger | Consequence |
|----|---------|------------|
| **T04** | Affiliate links present without disclosure | Trust dimension = Fail |
| **C01** | Clickbait — content doesn't match title promise | Content credibility destroyed |
| **R10** | Core data contradicts itself | Citation reliability = zero |

**3+ or any Critical veto** → audit returns `PARTIALLY_BLOCKED` (still deliver findings with capped scores).

---

## Quality Fix Rules (for ALL recommendations)

Every fix must pass 3 checks:

| Rule | Bad | Good |
|------|-----|------|
| **Specific** — tell exactly what to add/change/fix | "Add schema" | "Add LocalBusiness JSON-LD with name, address, geo coordinates, and opening hours to the homepage <head>" |
| **Verifiable** — user can check if done | "Improve content" | "Add a 2-3 sentence answer to 'How much does X cost?' within the first 150 words, under an H2 heading" |
| **Effort-estimated** — hours or cost | "Do better SEO" | "Create 5 original photos of your workspace/team (30 min with a smartphone)" |

**Format for every fix:**
```
[Item] → [specific action] → [effort estimate] → [expected impact]
```

**Example:** `C02 → Move core answer to first 150 words (currently at word 312). Restructure intro. → 15 min → High (AI citation + snippet)`

**Maturity-adapted fixes:** For new sites, recommend foundation first (schema, content, basics). For established sites, recommend differentiation and authority building.

---

## CORE — Content Body (40 items)

### C — Contextual Clarity

Does content clearly answer user intent? Can AI quickly grasp core value?

| ID | Item | Prio | Pass | Fail |
|----|------|------|------|------|
| C01 | Intent Alignment | Dual⚡ | Title promise = content delivery | Clickbait; content ≠ title |
| C02 | Direct Answer | GEO🎯 | Core answer in first 150 words | Answer buried mid/end |
| C03 | Query Coverage | Dual⚡ | ≥3 query variants (synonyms, long-tail) | Single exact query only |
| C04 | Definition First | GEO🎯 | All key terms defined on first use | Terms used without definition |
| C05 | Topic Scope | GEO🎯 | States "This covers X, not Y" | Scope unclear; content sprawls |
| C06 | Audience Targeting | Dual⚡ | States "this article is for..." | Audience unclear |
| C07 | Semantic Coherence | GEO🎯 | Logical connectors; no jumps | Frequent logic breaks |
| C08 | Use Case Mapping | GEO🎯 | Decision framework: when A vs B | No use case guidance |
| C09 | FAQ Coverage | GEO🎯 | Structured FAQ with FAQPage Schema | No FAQ or Q&A |
| C10 | Semantic Closure | Dual⚡ | Conclusion answers opening + next steps | No conclusion |

**Maturity adaptation (C items):** C02 + C04 are P0 for new sites. C09 + C10 are P1 for growing+. All C items apply at full weight for established+.

---

### O — Organization

Is content structured for both humans and machines?

| ID | Item | Prio | Pass | Fail |
|----|------|------|------|------|
| O01 | Heading Hierarchy | Dual⚡ | H1→H2→H3 nested; no skipping | Chaotic, multiple H1s |
| O02 | Summary Box | GEO🎯 | Prominent TL;DR / Key Takeaways | No summary |
| O03 | Data Tables | GEO🎯 | HTML tables for comparisons/specs | Prose where tables better |
| O04 | List Formatting | GEO🎯 | Lists for parallel items (~1-2 per 500w) | Absent or overused |
| O05 | Schema Markup | GEO🎯 | Correct JSON-LD matching content type | No schema |
| O06 | Section Chunking | GEO🎯 | Single topic per section; 3-5 sentence paragraphs | Walls of text |
| O07 | Visual Hierarchy | SEO🔍 | Key concepts bolded/highlighted | No visual hierarchy |
| O08 | Anchor Navigation | Dual⚡ | TOC with anchor links + breadcrumbs | Long content w/o nav aids |
| O09 | Information Density | GEO🎯 | No filler; consistent terminology | Significant filler |
| O10 | Multimedia Structure | Dual⚡ | Images/videos with captions, purposeful | Decorative-only images |

**Maturity adaptation (O items):** O02 (summary box) + O05 (schema) are P0 for all sites. O10 (multimedia) is P1 for growing+.

---

### R — Referenceability

Are data, evidence, and logic chains verifiable by AI?

| ID | Item | Prio | Pass | Fail |
|----|------|------|------|------|
| R01 | Data Precision | GEO🎯 | ≥5 precise data points with units | Vague ("many", "a lot") |
| R02 | Citation Density | GEO🎯 | ≥1 external citation per 500 words | Insufficient citations |
| R03 | Source Hierarchy | GEO🎯 | Primary sources first; ≥3 Tier 1-2 | No authoritative sources |
| R04 | Evidence-Claim Mapping | GEO🎯 | Every claim followed by evidence | Empty assertions |
| R05 | Methodology Transparency | GEO🎯 | Sample size, steps, criteria documented | No methodology |
| R06 | Timestamp & Versioning | Dual⚡ | Updated <1 year; date visible; version notes | >3 years or no date |
| R07 | Entity Precision | GEO🎯 | Full names; no "a company" | Frequent vague refs |
| R08 | Internal Link Graph | SEO🔍 | Descriptive anchors forming clusters | "Click here" style |
| R09 | HTML Semantics | GEO🎯 | `<article>`, `<figure>`, `<time>`, `<cite>` | Pure `<div>` markup |
| R10 | Content Consistency | Dual⚡ | Self-consistent; no broken links; corrections log | Data contradicts itself |

**Maturity adaptation (R items):** R06 (freshness) bar varies by maturity (see Maturity table). R02 + R03 are relaxed for new sites (expect internal, not external citations). R01 is P0 for all.

---

### E — Exclusivity

Why would AI cite you over others?

| ID | Item | Prio | Pass | Fail |
|----|------|------|------|------|
| E01 | Original Data | GEO🎯 | First-party data, surveys, experiments | All data from others |
| E02 | Novel Framework | GEO🎯 | Named, citable original framework | No framework innovation |
| E03 | Primary Research | GEO🎯 | Documented research process | No primary research |
| E04 | Contrarian View | GEO🎯 | Challenges consensus with evidence | Follows convention entirely |
| E05 | Proprietary Visuals | Dual⚡ | ≥2 original infographics/charts | No original visuals |
| E06 | Gap Filling | GEO🎯 | Covers niche questions competitors miss | Highly similar to competitors |
| E07 | Practical Tools | Dual⚡ | Downloadable template/checklist/calculator | No practical tools |
| E08 | Depth Advantage | GEO🎯 | Clearly exceeds competing content | Shallower than competitors |
| E09 | Synthesis Value | GEO🎯 | Cross-domain combination (A+B=C) | Single domain only |
| E10 | Forward Insights | GEO🎯 | Data-backed predictions with reasoning | Only past/present |

**Maturity adaptation (E items):** E01 (original data) is "nice-to-have" for new sites, "required" for established+. E02-E10 are P2 for new sites (focus on basics first). For dominant sites, at least 3 E items must score Pass.

---

## EEAT — Source Credibility (30 items)

### Exp — Experience

Proves the creator "was there" with first-hand experience.

| ID | Item | Prio | Pass | Fail |
|----|------|------|------|------|
| Exp01 | First-Person Narrative | SEO🔍 | "I tested" / "We found" + action verbs | Entirely third-person |
| Exp02 | Sensory Details | SEO🔍 | Specific, context-relevant sensory details tied to actual experience | Generic sensory word list or <2 sensory details |
| Exp03 | Process Documentation | Dual⚡ | Steps + timeline + decision points | No process documentation |
| Exp04 | Tangible Proof | SEO🔍 | ≥2 original photos/screenshots with timestamps | No original images |
| Exp05 | Usage Duration | SEO🔍 | "After X months of use..." | No duration stated |
| Exp06 | Quantified Metrics | Dual⚡ | Time, cost, success rate data | Purely subjective |
| Exp07 | Limitations Acknowledged | GEO🎯 | "We only tested X scenario" | No limitations |

### ⚠️ Anti-Gaming: Experience Items

Exp01–Exp07 are designed to detect **genuine** first-hand experience. Content farms can mimic all of them without real experience.

| ID | Risk | What to check |
|----|------|---------------|
| Exp01 | "I tested" without genuine detail | Look for specific, verifiable actions, not just first-person pronouns |
| Exp02 | Sensory words added without substance | Verify sensory claims connect to actual experience (not just a word checklist) |
| Exp05 | Vague duration claims | "After months of use" without specifics = likely fabricated |

**Maturity adaptation (Exp items):** Exp04 threshold varies (1/3/10/20 photos per maturity). Exp01 is P0 for all sites (first-person narrative expected everywhere now).

---

### Ept — Expertise

Proves the creator has the knowledge to get the subject right.

| ID | Item | Prio | Pass | Fail |
|----|------|------|------|------|
| Ept01 | Author Identity | SEO🔍 | Byline + avatar + bio (>30 words) | No author info |
| Ept02 | Credentials Display | SEO🔍 | Degrees, certs, years experience | No credentials |
| Ept03 | Professional Vocabulary | Dual⚡ | Accurate jargon; no misuse | Too simple or misused |
| Ept04 | Technical Depth | Dual⚡ | Actionable parameters, thresholds. Ept07 (Historical Context) merged here — show field development where relevant. | Superficial or errors |
| Ept05 | Methodology Rigor | GEO🎯 | Clear, reproducible analysis | No methodology |
| Ept06 | Reasoning Transparency | GEO🎯 | "We chose A over B because..." | Conclusions without reasoning |
| Ept07 | Editorial Process | SEO🔍 | "Reviewed by" / "Fact-checked by" labels | No editorial process |

### ⚠️ Anti-Gaming: Expertise Items

| ID | Risk | What to check |
|----|------|---------------|
| Ept01 | AI-generated bio | Bio >30 words but vague or generic = likely fake |
| Ept02 | Credentials without verification | Degrees claimed but no verifiable source (LinkedIn, .edu page) = suspect |
| Ept07 | "Reviewed by" label without real process | Check if reviewer name links to actual person with relevant expertise |

**Rule:** Never mark Ept02 as Pass unless credentials can be verified via a third-party source (LinkedIn, university page, professional directory). If unverifiable, mark as Partial with `⚠️ UNVERIFIED`.

### A — Authority

Are third parties recognizing this source?

**⚠️ Truth Protocol for A items:** Never score A01-A06 without data. If no tool access: mark ALL as `⚠️ DATA NEEDED`. Do NOT guess authority from page content alone.

| ID | Item | Prio | Pass | Fail |
|----|------|------|------|------|
| A01 | Backlink Profile | SEO🔍 | Cited by authoritative sites (.edu, .gov) | No notable backlinks |
| A02 | Media Mentions | SEO🔍 | "Featured in" with media logos | No media mentions |
| A03 | Brand Recognition | Dual⚡ | Brand has search volume | Brand unknown |
| A04 | Social Proof | SEO🔍 | Authentic testimonials with real details | Obviously fake or absent |
| A05 | Knowledge Graph Presence | Dual⚡ | Wikipedia or Google Knowledge Panel | Not in any knowledge graph |
| A06 | Entity Consistency | GEO🎯 | Brand/author consistent across web | Contradictions exist |

**Maturity adaptation (A items):** For NEW sites, A01-A06 are EXCLUDED from SEO score (a new site cannot have authority). Score them for reference only. For GROWING, score at 50% weight. Full scoring starts at ESTABLISHED.

---

### T — Trust

Is the site technically, legally, and governance-wise trustworthy?

| ID | Item | Prio | Pass | Fail |
|----|------|------|------|------|
| T01 | Legal Compliance | SEO🔍 | Privacy Policy + ToS + bonus (Cookie, GDPR) | Missing required pages |
| T02 | Contact Transparency | SEO🔍 | Physical address or ≥2 contact methods | No contact info |
| T03 | Security Standards | SEO🔍 | Site-wide HTTPS; no warnings | Uses HTTP |
| T04 | Disclosure Statements | Dual⚡ | Affiliate links disclosed (VETO if missing) | No disclosure → VETO |
| T05 | Editorial Policy | SEO🔍 | Content standards + review process published | No editorial policy |
| T06 | Correction & Update Policy | Dual⚡ | Corrections page + revision history | No correction mechanism |
| T07 | Ad Experience | SEO🔍 | Ads <30% of page; no intrusive popups | Ads >50% or deceptive |
| T08 | Risk Disclaimers | Dual⚡ | YMYL topics have necessary disclaimers | YMYL w/o disclaimers |
| T09 | Review Authenticity | Dual⚡ | Reviews show authenticity signals | Reviews obviously fake |
| T10 | Customer Support | SEO🔍 | Return policy, complaint channels, SLA | No support or policy |

---

## Schema by Content Type

| Content Type | Required Schema | Conditional |
|-------------|----------------|-------------|
| Blog (guides) | Article, BreadcrumbList | FAQ, HowTo |
| Blog (tools) | Article, BreadcrumbList | FAQ, Review |
| Comparison | Comparison*, BreadcrumbList, FAQ | AggregateRating |
| Best-of | ItemList, BreadcrumbList, FAQ | AggregateRating per item |
| How-to | HowTo, BreadcrumbList | FAQ |
| FAQ | FAQPage, BreadcrumbList | — |
| Landing | SoftwareApplication, BreadcrumbList, FAQ | WebPage |
| Product | Product, BreadcrumbList | Review, AggregateRating |
| Local business | LocalBusiness, BreadcrumbList | OpeningHours, Geo |
| Review | Review, BreadcrumbList | FAQ, Person |
| Organization | Organization | Person, sameAs |

---

## Content Type Decision Tree

```
What is the primary goal?
├── Teach users how to do something          → Blog (guides)
├── Your product vs one competitor            → Alternative
├── Objective comparison of 3+ products       → Best-of
├── Show product fits a persona               → Use-case
├── Show verified customer results            → Testimonial
├── Answer common questions                   → FAQ
├── Describe product features                 → Landing
└── Share industry insights or trends         → Blog (insights)
```

---

## Common Errors (Top 15)

| # | Error | Item | Right |
|---|-------|------|-------|
| 1 | Answer buried after preamble | C02 | Core answer in first 150 words |
| 2 | Clickbait title | C01 | Title accurately describes content |
| 3 | Heading level skipped (H1→H3) | O01 | H1→H2→H3 sequential |
| 4 | Wall of text (300-word paragraph) | O06 | 3-5 sentences per paragraph |
| 5 | No TL;DR or summary | O02 | Key Takeaways box at top |
| 6 | Vague numbers ("very fast") | R01 | "120ms response", "$29/mo" |
| 7 | Unsourced statistics | R02 | Include source link and year |
| 8 | Stale pricing (2023 shown) | R06 | "Pricing as of 2026-02" |
| 9 | Broken external links | R10 | Regular link audits |
| 10 | No unique value (restates docs) | E01 | Add original test data |
| 11 | No first-person ("we found") | Exp01 | Add "I tested" statements |
| 12 | No author info | Ept01 | Name + photo + 30-word bio |
| 14 | Undisclosed affiliate links | T04 | Disclosure banner at page top |
| 15 | Missing FAQ Schema | O05 | Add FAQPage JSON-LD |
