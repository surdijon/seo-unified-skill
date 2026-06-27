# Technical SEO & Core Web Vitals

> **3-layer diagnostic** for crawlability, indexability, and signals + CWV root-cause trees.
> Load this reference for: `technical <url>`, `speed <url>`, `diagnose`.

---

## ═══════════════════════════════════════════════
## WHEN THIS FILE IS LOADED
## ═══════════════════════════════════════════════

You are a **technical SEO engineer**. Your work is the foundation — if layers 1-2 fail, nothing else matters.

### Process by Command

**`technical <url>`**
1. Load `evolution/checklists/technical.md` — follow the 3-layer diagnostic
2. Layer 1: Crawlability (robots.txt, sitemap, architecture, server response)
3. Layer 2: Indexability (noindex, canonical, duplicate content)
4. Layer 3: Signals (titles, meta, headings, schema, mobile)
5. Score each layer 1-10 with justification
6. Deliver: diagnostic report with fix actions per layer

**`speed <url>`**
1. If user has PageSpeed Insights report → analyze it
2. If not → fetch PSI report from public API
3. Check LCP root-cause tree
4. Check CLS root-cause tree
5. Check INP root-cause tree
6. Check resource analysis (HTML, CSS, JS, images, fonts, third-party)
7. Deliver: CWV report with root-cause diagnosis + fix actions

### Quality Gates
- [ ] robots.txt checked before everything else
- [ ] Each layer diagnosed independently (don't skip if previous layer is clean)
- [ ] Every finding has a specific fix (not just "improve load time")
- [ ] CWV root-cause traces to specific resource/behavior (not just "LCP is slow")
- [ ] Mobile SEO checked separately (not assumed from desktop)

### Uncertainty
- **Web search:** Current PageSpeed Insights thresholds, Google's latest rendering guidelines
- **Ask user:** "Do you have Search Console access?", "Can you share a PageSpeed Insights report?", "What's your hosting provider?", "Do you use a CDN?"
- **Mark:** ⚠️ DATA NEEDED: [e.g., "hosting performance data — run a server response time test"]

### Growth
- Read `evolution/pattern-library.md` for technical patterns per tech stack
- After delivering, write learnings to `evolution/learnings/`
- If you discover a new tech-stack-specific issue → add to pattern-library.md

---

## 3-Layer Diagnostic (Sequential — each depends on previous)

### Layer 1: Crawlability

**robots.txt:**
- Fetch `[domain]/robots.txt` — overly broad `Disallow` blocking important paths?
- `Sitemap:` directive points to correct sitemap URL?
- Different rules per user-agent (Googlebot vs others)?
- Staging robots.txt accidentally deployed to production?

**Common mistakes:** `Disallow: /` left from staging, blocking CSS/JS needed for rendering, blocking API endpoints that load dynamic content.

**XML Sitemap:**
- Valid XML? Returns 200?
- Lists all important pages? Excludes noindex/redirected pages?
- `<lastmod>` dates accurate and recent?
- For large sites: sitemap index present?

**Site Architecture:**
- Pages reachable within 3 clicks from homepage?
- Orphan pages (zero internal links)?
- Redirect chains (A→B→C should be A→C)?
- Redirect loops?

**Server Response:**
- Important pages return HTTP 200?
- Unexpected 301/302 redirects?
- Soft 404s (page returns 200 but shows "not found")?
- HTTPS enforced (HTTP → 301 → HTTPS)?

### Layer 2: Indexability

**Meta Robots / X-Robots-Tag:**
- `<meta name="robots" content="noindex">` on pages that should be indexed?
- `X-Robots-Tag: noindex` in HTTP headers?
- Common cause: CMS applies noindex to pagination, tags, or new pages

**Canonical Tags:**
- Every page has self-referencing `<link rel="canonical">`?
- Canonical points to wrong page? (common in paginated/filtered URLs)
- Conflicting signals: canonical says A but noindex set, or page redirects?

**Canonical checklist:**
- Canonical URL matches actual URL?
- Canonical URL returns 200 and has same content?
- Only one canonical tag on page?

### Layer 3: Signals

- **Title tags:** unique, 50-60 chars, includes keyword
- **Meta descriptions:** unique, 150-160 chars, includes CTA
- **Headings:** single H1, logical hierarchy (H1→H2→H3), no skipping
- **Structured data:** JSON-LD appropriate to page type, validates with Rich Results Test
- **Mobile:** passes Google's mobile usability tests

---

## Core Web Vitals

### Thresholds

| Metric | Good | Needs Improvement | Poor |
|--------|------|-------------------|------|
| LCP (Largest Contentful Paint) | <2.5s | 2.5-4.0s | >4.0s |
| CLS (Cumulative Layout Shift) | <0.1 | 0.1-0.25 | >0.25 |
| INP (Interaction to Next Paint) | <200ms | 200-500ms | >500ms |
| FCP (First Contentful Paint) | <1.8s | 1.8-3.0s | >3.0s |
| TTFB (Time to First Byte) | <800ms | 800-1800ms | >1800ms |

### LCP Root-Cause Tree

1. **Slow TTFB (>800ms)?** → hosting, CDN, database queries, server-side rendering
2. **LCP element is an image?** → use WebP/AVIF, responsive sizes, `fetchpriority="high"`, NOT lazy-loaded, preload LCP image
3. **LCP element is text?** → `font-display: swap`, preload critical fonts, subset fonts to used characters
4. **Render-blocking CSS/JS?** → inline critical CSS, defer non-critical CSS, async/defer JS

### CLS Root-Cause Tree

1. **Images/video lack dimensions?** → add `width` + `height` attributes, use CSS `aspect-ratio`
2. **Ads/embeds inject content?** → reserve space with `min-height`, use `contain-intrinsic-size`
3. **Fonts cause text reflow (FOUT)?** → `font-display: optional` (no swap = no shift)
4. **Dynamic content inserts above fold?** → use overlays not inline insertion, or fixed-height containers

### INP Root-Cause Tree

1. **Main thread blocked by long tasks?** → break with `requestIdleCallback` or `setTimeout`, code-split heavy modules
2. **Event handlers do heavy sync work?** → debounce inputs, use `requestAnimationFrame` for visual updates, offload to web workers
3. **Third-party scripts competing?** → defer loading until after interaction, `loading="lazy"` for embeds, remove unused scripts

### Resource Analysis

| Type | Good | Action if Large |
|------|------|----------------|
| HTML | Compressed | Reduce inline styles/scripts |
| CSS | <100 KB compressed | Remove unused CSS, minify, critical CSS extraction |
| JavaScript | <300 KB compressed | Code-split, tree-shake, defer non-critical |
| Images | Modern formats | WebP/AVIF, responsive sizes, lazy load below fold |
| Fonts | <100 KB | Subset, limit families/weights, preload critical |
| Third-party | Minimal | Audit necessity, defer, self-host if possible |

**Benchmarks:** Total page weight <1.5 MB good. JavaScript <300 KB compressed.


