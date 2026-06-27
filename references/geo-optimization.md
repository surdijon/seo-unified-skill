# GEO Optimization — AI Search Visibility

> **GEO = Generative Engine Optimization.** Getting cited by AI systems (ChatGPT, Perplexity, Claude, Gemini, Google AI Overviews) rather than just ranked in Google.
> Load this reference for: `geo <url>`, `audit <url>`.

---

## ═══════════════════════════════════════════════
## WHEN THIS FILE IS LOADED
## ═══════════════════════════════════════════════

You are a **Generative Engine Optimization (GEO) specialist**. Your focus is AI citation visibility, not traditional Google ranking.

### Process (for `geo <url>`)
1. **Veto check FIRST** → check robots.txt for AI crawler blocks (GPTBot, ClaudeBot, PerplexityBot, Google-Extended, Applebot-Extended, CCBot). If ANY blocked → AI visibility = 0, mark CRITICAL
2. **Check llms.txt** → fetch `/llms.txt`, score its quality
3. **Extractability audit** → can AI extract useful answers from the content?
4. **Quotability audit** → does content contain quote-worthy statements?
5. **Brand entity audit** → how recognizable is this domain's entity?
6. **Content-type optimization** → does format match AI preferences?
7. **Score** → GEO Score breakdown (see below)
8. **Deliver** → GEO report with AI-specific action items

### Quality Gates
- [ ] robots.txt checked for ALL known AI crawlers (not just GPTBot)
- [ ] Every finding specific to AI visibility, not generic SEO advice
- [ ] llms.txt was fetched and scored (even if absent — score 0)
- [ ] Extractability scored per-content-type, not generic
- [ ] Entity audit based on actual web presence (not assumptions)

### Uncertainty
- **Web search:** Search the brand/entity on ChatGPT, Perplexity to see current AI output
- **Web search:** Check if the brand appears in Wikipedia, Wikidata, Crunchbase
- **Ask user:** "Do you use ChatGPT or other AI tools? Have you tested what they say about your brand?"
- **Mark:** ⚠️ DATA NEEDED: [entity's AI presence — search yourself to verify]

### Growth
- Read `evolution/pattern-library.md` for GEO patterns per industry
- After delivering, write learnings to `evolution/learnings/`
- If you discover a new AI crawler bot → suggest adding it to this file

---

## citecheck &lt;url&gt; — AI Citation Verification

Process to check if a URL is cited by major AI engines:

### Method 1: Direct Query (ask user to verify)
Ask the user to query each AI engine with a relevant prompt and report back:
- **ChatGPT**: "What do you know about [topic/brand]?"
- **Perplexity**: "Summarize [topic]"
- **Claude**: "Tell me about [topic/brand]"
- **Gemini**: "What is [topic/brand]?"

### Method 2: Web Search Evidence
Search for patterns that indicate AI citation:
- Brand name mentioned in AI-generated content
- Content quoted or paraphrased in AI training data discussions
- Third-party articles discussing AI citations of the brand

### Citation Score

| Level | Evidence | Status |
|-------|----------|--------|
| Confirmed | User verified citation in AI output | ✅ CITED |
| Likely | Strong entity signals + extractable content + no blocks | 🟡 LIKELY |
| Weak | Missing entity signals or extractability issues | 🟠 NEEDS WORK |
| Blocked | AI crawlers blocked in robots.txt | 🔴 BLOCKED |
| Unknown | No verification done | ⚪ UNKNOWN |

### Growth
- After checking, note which AI engines cite the site
- Track citation status over time to measure GEO improvement

---

## AI Crawler Access (Check FIRST — Veto)

Check robots.txt for these user-agents:

| Bot | Engine | Blocked = |
|-----|--------|-----------|
| `GPTBot` | ChatGPT | **Zero visibility in ChatGPT** |
| `ClaudeBot` / `Claude-Web` | Claude | **Zero visibility in Claude** |
| `PerplexityBot` | Perplexity | **Zero visibility in Perplexity** |
| `Google-Extended` | Google AI Overviews | **Zero visibility in AI Overviews** |
| `CCBot` | Common Crawl (AI training) | Reduced long-term visibility |
| `Applebot-Extended` | Apple Intelligence | Zero visibility in Apple AI |

**If ANY AI bot is blocked → mark as Critical. AI visibility score capped at 0 regardless of content quality.**

---

## Extractability Audit

Can AI systems pull a useful answer from this content?

| Item | Pass | Fail |
|------|------|------|
| Core answer in first 150 words after heading | Appears immediately | Buried in background |
| Self-contained statements (no context needed) | Key claims stand alone | Require surrounding text |
| Structured data (tables, lists) | Data in tables/lists | Data in prose paragraphs |
| TL;DR or Summary box at top | Present | Missing |
| "X is Y" definitions for key terms | Present | Key terms undefined |

---

## Quotability Audit

Does content contain statements worth citing?

| Item | Pass | Fail |
|------|------|------|
| Specific claims with numbers + units | "Response improved 40% (500ms→300ms)" | "Improved significantly" |
| Named sources on all statistics | Source + date cited | Unsourced numbers |
| Clear "X is Y" structure for definitions | Present for key terms | Vague or absent |

### Quotability Test (10 questions)

Score each section. 8+ = highly quotable, 5-7 = needs work, <5 = major rewrite.

1. Can AI quote this without needing surrounding context?
2. Does it include specific numbers or measurements?
3. Is the source of each claim clearly identified?
4. Is the language precise and unambiguous?
5. Would a subject-matter expert approve this statement?
6. Is it scannable (lists, tables, short paragraphs)?
7. Is the information current (data from last 2 years)?
8. Can the claims be independently verified?
9. Is it specific to a defined use case or audience?
10. Does it answer a complete question without follow-up?

---

## Content-Type Optimization for AI

### Comparison / "Best X"
- Clear verdict or winner in first 100 words
- Summary comparison table near top (AI extracts tables directly)
- Consistent subheadings per option (Pros, Cons, Pricing, Best For)
- Explicit recommendation: "The best X for Y is Z because..."
- **Why AI loves this:** Comparison tables are the #1 most-extracted format by ALL AI engines

### Research / Data Content
- "Key Findings" callout box with most notable statistic
- Data in HTML tables, not inline prose
- Methodology explicit (sample size, timeframe, source)
- Lead each section with conclusion, then supporting data
- **Why AI loves this:** Perplexity and ChatGPT heavily cite data with named sources

### How-To / Tutorial
- Complete step list before explanatory prose
- Ordered lists with concise step descriptions
- Estimated time + difficulty level upfront
- Concrete result statement at end
- **Why AI loves this:** Claude and Gemini extract ordered lists for step-by-step answers

### Definition / Explainer
- Definition in first sentence (not after context)
- "X is Y" format — unambiguous, standalone, extractable
- Concrete example in second paragraph
- Progressive detail: what → why → how → examples
- **Why AI loves this:** Every engine looks for "X is Y" as the gold standard for definitions

### Landing Page / SaaS
- Problem statement in first paragraph (what you solve)
- Clear "What is [product]" definition in first 150 words
- Feature list in structured format (table or grid with icons)
- Pricing in structured format (table preferred)
- Customer logos with relevant names (entity signals for AI)
- **Why AI loves this:** ChatGPT Browse frequently cites SaaS landing pages for comparison answers

### Product Page (E-commerce)
- Product specs in HTML table (not image or prose)
- Price + availability in Product schema AND visible on page
- Customer review count and average rating visible
- Shipping/return policy summarized near product info
- Comparison with similar products when applicable
- **Why AI loves this:** AI Overviews extract product data for shopping queries

---

## Brand Entity Building for AI

AI systems recognize brands as entities. Stronger entity = more citations.

### Priority 1 — Foundation (must-have)

- [ ] Organization schema on homepage: name, url, logo, description
- [ ] `sameAs` links to LinkedIn, Wikipedia, Wikidata, social profiles
- [ ] About page with entity-rich content (founding date, key people, mission)
- [ ] Consistent brand name across all platforms (no abbreviations or variations)
- [ ] Branded search returns your site as #1

### Priority 2 — Authority (should-have)

- [ ] Google Knowledge Panel present with correct info
- [ ] Wikipedia article or 3+ independent reliable source mentions
- [ ] Wikidata entry with 10+ properties and references
- [ ] 3+ authoritative media mentions in recognized publications
- [ ] Author pages with credentials + Person schema

### Priority 3 — AI-Specific

- [ ] ChatGPT recognizes entity correctly when asked
- [ ] Perplexity returns accurate brand information
- [ ] Entity definition is quotable in first paragraph of About page
- [ ] Key pages updated within last 6 months

---

## llms.txt Standard

Generate or audit `llms.txt` — helps AI crawlers understand your site:

```
# llms.txt — domain.com
> [One-paragraph site summary]

## [Domain]
[Description of what the site covers and who it's for.]

## Key Pages
- [URL]: [One-line description]

## About
[Link to about page]
```

> **Note:** llms.txt has limited adoption across AI engines as of 2026. It's a low-effort signal worth having but not a ranking factor for any AI system. Prioritize extractability and structured data over llms.txt.

---

## GEO Score Breakdown

| Category | Weight | Measured By |
|----------|--------|-------------|
| AI Citability & Visibility | 25% | Answer block quality, AI crawler access, extractability |
| Brand Authority Signals | 20% | Entity presence, mentions on Reddit/YouTube/Wikipedia/LinkedIn |
| Content Quality & EEAT | 20% | Expertise signals, original data, author credentials |
| Technical Foundations | 15% | SSR, CWV, crawlability, mobile, security |
| Structured Data | 10% | Schema completeness, JSON-LD validation |
| Platform Optimization | 10% | Readiness for Google AIO, ChatGPT, Perplexity |

---

## Per-Page GEO Optimization (use this checklist for `page <url>`)

### Page Structure for AI Extraction
- [ ] C02: Core answer in first 150 words
- [ ] O02: Key Takeaways/TL;DR box at top
- [ ] R01: Each claim has specific data (numbers, units, dates)
- [ ] O05: JSON-LD schema matching content type
- [ ] O03: HTML tables for comparisons or specs
- [ ] C09: FAQ section with FAQPage schema (if applicable)
- [ ] E01: At least one original data point or insight
- [ ] R02: External citations to authoritative sources
- [ ] A08: Entity consistency (brand name + URL match everywhere)

### AI Citation Score per Page
| Score | Label | Meaning |
|-------|-------|---------|
| 80-100 | Highly citable | Likely cited by multiple AI engines |
| 60-79 | Citable | Could be cited for specific queries |
| 40-59 | Moderate | Needs extractability improvements |
| 20-39 | Low | Major restructuring needed for AI visibility |
| 0-19 | Invisible | AI crawlers blocked or can't extract anything |

> **Note:** These labels are directional guidance, not precise measurements. Actual AI citation depends on engine, query context, and competing content at query time.
