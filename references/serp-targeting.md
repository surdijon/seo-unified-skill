# SERP Feature Targeting

> Featured snippets, People Also Ask, rich results, knowledge panels, and AI Overviews.
> Load this reference for: `serp <keyword>`.

---

## ═══════════════════════════════════════════════
## WHEN THIS FILE IS LOADED
## ═══════════════════════════════════════════════

You are a **SERP feature specialist**. Your focus is winning SERP real estate — featured snippets, PAA, AI Overviews, rich results.

### Process (for `serp <keyword>`)

1. **Search the keyword** — analyze current SERP features present
2. **Identify targetable features** — use Prioritization Matrix
3. **Choose primary feature** — highest traffic + most winnable
4. **Design content structure** — match format to feature requirement
5. **Schema requirement** — identify which schema triggers the feature
6. **Deliver** → SERP feature targeting plan with content format + schema + optimization checklist

### Quality Gates
- [ ] Live SERP analyzed (not assumed from memory)
- [ ] Feature chosen based on actual SERP presence
- [ ] Content format matches what Google currently shows for that feature
- [ ] Schema requirement included for each feature
- [ ] AI Overview strategy separate from traditional snippet strategy
- [ ] PAA questions collected from actual SERP

### Uncertainty
- **Web search:** Search the keyword to see current SERP features
- **Web search:** Check Google's documentation for current rich result requirements
- **Ask user:** "Do you currently rank on page 1 for this keyword?", "What SERP features do you see when you search this?"
- **Mark:** ⚠️ DATA NEEDED: [e.g., "current SERP features not verified without live search"]

### Growth
- Read `evolution/pattern-library.md` for feature patterns per industry
- After delivering, write learnings to `evolution/learnings/`
- If you discover a new SERP feature trend → suggest adding to this file

---

## SERP Feature Types

| Feature | Trigger | Content Format Needed |
|---------|---------|----------------------|
| Featured Snippet (paragraph) | "What is", "how does", definitions | 40-60 word direct answer under H2/H3 matching query |
| Featured Snippet (list) | "How to", "steps to", "best", "top" | Ordered/unordered list, 5-8 items |
| Featured Snippet (table) | Comparison, pricing, specs | HTML `<table>` with clear headers |
| People Also Ask | Most informational queries | 2-3 sentence answer under H2 matching PAA question |
| Knowledge Panel | Brand/entity queries | Organization schema, Wikipedia |
| AI Overview | Authority + structure signals | Clear answers, tables, citations, schema |
| Rich Sitelinks | Brand queries | Clear site structure, descriptive nav |
| Video Carousel | Tutorial/how-to content | VideoObject schema, YouTube presence |
| Local Pack | Local queries | GBP, LocalBusiness schema, reviews |

---

## Prioritization Matrix

| Feature | Traffic Impact | Effort to Win | Best For |
|---------|:-------------:|:-------------:|----------|
| Featured Snippet | Very High | Medium | Informational content |
| AI Overview citation | High (growing) | Medium-High | Authority/expertise sites |
| People Also Ask | Medium-High | Low-Medium | FAQ-rich content |
| Video Carousel | High | High | Tutorial content |
| Local Pack | Very High (local) | Medium | Local businesses |
| Rich Results (Review) | Medium-High | Low-Medium | Product reviews |
| Knowledge Panel | Medium (brand) | High (long-term) | Established brands |

---

## Winning Featured Snippets

### Paragraph Snippets
- Place a concise answer (40-60 words) directly under H2/H3 matching the query
- Start with a definition or direct statement: "[Topic] is..."
- Follow with expanded detail (Google wants depth beyond just the snippet)

### List Snippets
- Proper HTML ordered (steps) or unordered (features) list
- H2 heading matches query: "How to [do thing]" or "Best [category]"
- 5-8 list items (Google rarely shows more)
- Each item = concise, scannable phrase

### Table Snippets
- Semantic HTML `<table>` with `<thead>` and `<tbody>`
- 3-5 columns, 4-8 rows
- Include query keyword in table caption or preceding heading

### Checklist
- [ ] H2/H3 heading matches target query exactly or closely
- [ ] Answer appears in first paragraph after heading
- [ ] Answer self-contained (makes sense without surrounding context)
- [ ] Page already ranks on page 1 (snippets almost always from page 1 results)
- [ ] Content format matches what Google currently shows

---

## People Also Ask Optimization

1. **Collect PAA questions** for your target keywords (search the keyword, note the PAA box)
2. **Add FAQ section** to relevant pages using exact PAA question as H2 or H3
3. **Answer in 2-3 sentences** directly under heading
4. **Mark up with FAQPage schema** for AI extraction value

PAA answers should be: direct (no "great question!" preamble), factually accurate, self-contained.

---

## PAA Question Collection Process

When researching a keyword, collect PAA questions:

1. Search the keyword
2. Note all PAA questions that appear
3. Click through PAA items to see sub-questions (2-3 levels deep)
4. Group questions by topic/subtopic
5. Map each question to a specific H2/H3 in your content

**Why this matters:** Each PAA question = a potential AI Overview citation trigger.

---

## AI Overview Optimization (Google AIO)

### What AI Overviews Cite
1. **Clear definitions** (C02 — answer in first 150 words)
2. **Structured data tables** (O03 — HTML tables with headers)
3. **Citations with named sources** (R02 — link + source name + date)
4. **Authoritative original data** (E01 — first-party research)
5. **FAQ with FAQPage schema** (C09 + O05)
6. **Comparison tables with clear verdicts** (comparison/best-of content)

### What AI Overviews IGNORE
- Content behind login walls
- Content blocked by robots.txt from Google-Extended
- Opinion without evidence
- Purely promotional content
- Vague language ("industry-leading", "cutting-edge")

### AI Overview Checklist
- [ ] Google-Extended allowed in robots.txt
- [ ] Direct answer in first 150 words
- [ ] Data tables in HTML (not images)
- [ ] External citations with named sources
- [ ] FAQ section with FAQPage schema (if applicable)
- [ ] Original data or unique insight on page
- [ ] TL;DR or Key Takeaways box near top

---

## AI Overview vs Traditional SERP Strategy

| Query Type | Traditional Strategy | AI-Era Strategy |
|-----------|---------------------|-----------------|
| Informational | Win featured snippet | Win AI Overview citation AND featured snippet |
| Comparison | Create comparison content | Structured comparison tables with clear verdicts |
| Definition | Write clear definition for snippet | Authoritative, citable definition with evidence |
| How-to | Create step-by-step list | Steps with unique insights AI can synthesize |

Traditional features reward **format optimization**. AI Overviews reward **authority and uniqueness**.

### Feature Combination Patterns

| Combination | Opportunity |
|------------|------------|
| AI Overview + Featured Snippet | Structured content with clear answers wins both |
| Video + PAA + Featured Snippet | Comprehensive guide with video and FAQ |
| PAA only (no snippet) | Snippet opportunity — create snippet-optimized content |
| AI Overview only (no snippet) | Structured, authoritative content with cited data |

---

## SERP Feature Strategy by Intent

| Intent | Top Features | Strategy |
|--------|-------------|----------|
| Informational | Featured snippet, PAA, AI Overview | Create definitive guide with clear answers + structured data |
| Commercial | PAA, AI Overview, Shopping | Comparison tables + clear verdicts + FAQ section |
| Transactional | Local Pack, Shopping, Sitelinks | Local schema + GBP optimization + product markup |
| Navigational | Knowledge Panel, Sitelinks | Organization schema + Wikipedia presence + site structure |

### When Multiple Features Appear

| Feature Combination | How to Capture |
|--------------------|----------------|
| AI Overview + PAA + Snippet | One comprehensive page with FAQ section + direct answer blocks |
| Video + Snippet | Add video to existing snippet-optimized page + VideoObject schema |
| Shopping + Reviews | Product schema + AggregateRating + merchant feed |

---

## Schema for SERP Features

| Feature | Schema Type |
|---------|------------|
| FAQ rich result / AI FAQ | FAQPage (still helps AI even if no visual SERP result) |
| Review stars | Review + AggregateRating |
| Breadcrumb | BreadcrumbList |
| Video | VideoObject |
| Product info | Product |
| How-to steps | HowTo (no visual SERP but AI extraction value) |
| Sitelinks | No schema — requires clear site structure + strong brand |

**Validation:** Always validate schema with Google's Rich Results Test before deploying.
