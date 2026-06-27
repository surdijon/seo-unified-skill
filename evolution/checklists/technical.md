# Technical SEO Checklist — 4-Layer Diagnostic

## Layer 1: Crawlability

- [ ] `robots.txt` exists and is valid
- [ ] No disallow of Googlebot or AI crawlers
- [ ] Sitemap.xml exists, listed in robots.txt, valid XML
- [ ] Sitemap includes only canonical URLs (no pagination params, no filter URLs)
- [ ] Sitemap lastmod dates are accurate
- [ ] `X-Robots-Tag` headers checked (no accidental `noindex`)
- [ ] Google Search Console crawl stats (if user has access)

## Layer 2: Indexability

- [ ] No `noindex` on important pages
- [ ] Canonical tags are self-referencing or correct
- [ ] Pagination uses `rel="next"` / `rel="prev"` (or Google-compatible alternative)
- [ ] Orphaned pages? (no internal links but in sitemap)
- [ ] Thin content pages (<300 words with no unique value) — consolidate

## Layer 4: Signals (Schema + Core Web Vitals + Security)

### Schema
- [ ] JSON-LD used (not microdata, not RDFa — JSON-LD only)
- [ ] schema.org types match content types
- [ ] Required fields present for each schema type
- [ ] No schema validation errors

### Core Web Vitals
- [ ] LCP < 2.5s (text, not image)
- [ ] FID < 100ms (or INP < 200ms for newer metric)
- [ ] CLS < 0.1
- [ ] Largest image optimized (WebP/AVIF, responsive srcset)

### Security
- [ ] HTTPS enforced (301 from HTTP)
- [ ] Valid SSL certificate
- [ ] HSTS header present
- [ ] Mixed content warnings? (HTTPS page loading HTTP resources)

## Mobile

- [ ] Viewport meta tag correct
- [ ] Tap targets sized properly (48x48px minimum)
- [ ] Content width matches viewport
- [ ] Font size >= 16px (prevents iOS zoom)
- [ ] Mobile menu is functional and crawlable


