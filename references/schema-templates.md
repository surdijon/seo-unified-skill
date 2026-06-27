# Schema & Structured Data Templates

> JSON-LD templates for every common content type + detection/validation guide.
> Load this reference for: `schema <url>`, `audit <url>`.

---

## ═══════════════════════════════════════════════
## WHEN THIS FILE IS LOADED
## ═══════════════════════════════════════════════

You are a **structured data specialist**. Schema helps both traditional SERP features and AI citation.

### Process (for `schema <url>`)

1. **Fetch page HTML** → extract all `<script type="application/ld+json">` blocks
2. **Validate each schema** → check syntax, required fields, recommended fields
3. **Check coverage** → does the page have the required schema for its content type? (see table below)
4. **Verify accuracy** → does schema data match visible page content? (common mismatch: wrong dates, wrong prices, wrong author)
5. **Detect hidden/misleading schema** → schema for content not visible on page? This can trigger manual action
6. **Fix/Generate** → provide correct JSON-LD for missing schemas
7. **Deliver** → schema audit report + validated JSON-LD templates to add

### Process (for `audit <url>`)
Layer 2 (On-Page) includes schema detection. Just check presence and basic validity.
Full schema audit should reference this file for deeper analysis.

### Quality Gates
- [ ] Schema type matches actual content type (not just guessed)
- [ ] All required fields present for each schema type
- [ ] Schema URLs match actual page URLs (canonical)
- [ ] No hidden schema (data not visible on page)
- [ ] Dates in schema match visible dates on page
- [ ] JSON-LD syntax validates (no trailing commas, valid JSON)

### Uncertainty
- **Web search:** Check Google's Rich Results Test for current requirements
- **Web search:** Check schema.org for latest type definitions
- **Ask user:** "What content types do you have on this page?", "Do you use a CMS that auto-generates schema?"
- **Mark:** ⚠️ DATA NEEDED: [e.g., "can't verify schema vs content parity without full page access"]

### Growth
- Read `evolution/pattern-library.md` for common schema mistakes per industry
- After delivering, write learnings to `evolution/learnings/`
- If you find a new schema validation issue → add to pattern-library.md

---

## Schema by Content Type

| Content Type | Required Schema | Conditional |
|-------------|----------------|-------------|
| Blog (guide) | Article, BreadcrumbList | FAQ, HowTo |
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
| Video | VideoObject | — |
| Dataset | Dataset | — |

---

## Article (blog posts, guides, news)

```json
{
  "@context": "https://schema.org",
  "@type": "Article",
  "headline": "Your SEO Title Here (under 60 chars)",
  "description": "Meta description or short summary",
  "datePublished": "2026-01-15",
  "dateModified": "2026-06-01",
  "author": {
    "@type": "Person",
    "name": "Author Full Name",
    "url": "https://example.com/authors/author-name",
    "description": "Author credentials and bio"
  },
  "publisher": {
    "@type": "Organization",
    "name": "Brand Name",
    "logo": { "@type": "ImageObject", "url": "https://example.com/logo.png" }
  },
  "image": "https://example.com/hero-image.jpg",
  "mainEntityOfPage": { "@type": "WebPage", "@id": "https://example.com/article" }
}
```

## FAQPage

```json
{
  "@context": "https://schema.org",
  "@type": "FAQPage",
  "mainEntity": [
    {
      "@type": "Question",
      "name": "Question 1?",
      "acceptedAnswer": {
        "@type": "Answer",
        "text": "Direct, concise answer here (2-3 sentences max)."
      }
    },
    {
      "@type": "Question",
      "name": "Question 2?",
      "acceptedAnswer": {
        "@type": "Answer",
        "text": "Answer for question 2."
      }
    }
  ]
}
```

## Organization (homepage)

```json
{
  "@context": "https://schema.org",
  "@type": "Organization",
  "name": "Brand Name",
  "url": "https://example.com",
  "logo": "https://example.com/logo.png",
  "description": "One-sentence description of what the organization does.",
  "sameAs": [
    "https://linkedin.com/company/brand",
    "https://twitter.com/brand",
    "https://en.wikipedia.org/wiki/Brand",
    "https://crunchbase.com/organization/brand"
  ],
  "address": {
    "@type": "PostalAddress",
    "streetAddress": "123 Main St",
    "addressLocality": "City",
    "addressRegion": "State",
    "postalCode": "12345"
  },
  "contactPoint": {
    "@type": "ContactPoint",
    "telephone": "+1-555-555-5555",
    "contactType": "customer service",
    "email": "hello@example.com"
  }
}
```

## BreadcrumbList (every page with hierarchy)

```json
{
  "@context": "https://schema.org",
  "@type": "BreadcrumbList",
  "itemListElement": [
    { "@type": "ListItem", "position": 1, "name": "Home", "item": "https://example.com" },
    { "@type": "ListItem", "position": 2, "name": "Category", "item": "https://example.com/category" },
    { "@type": "ListItem", "position": 3, "name": "Current Page", "item": "https://example.com/category/page" }
  ]
}
```

## Product

```json
{
  "@context": "https://schema.org",
  "@type": "Product",
  "name": "Product Name",
  "description": "Product description.",
  "image": "https://example.com/product.jpg",
  "sku": "SKU123",
  "brand": { "@type": "Brand", "name": "Brand" },
  "offers": {
    "@type": "Offer",
    "price": "29.99",
    "priceCurrency": "USD",
    "availability": "https://schema.org/InStock",
    "url": "https://example.com/product"
  },
  "aggregateRating": {
    "@type": "AggregateRating",
    "ratingValue": "4.5",
    "reviewCount": "128"
  }
}
```

## LocalBusiness (use most specific subtype)

```json
{
  "@context": "https://schema.org",
  "@type": "Restaurant",
  "name": "Business Name",
  "description": "Description of the business.",
  "image": "https://example.com/photo.jpg",
  "url": "https://example.com",
  "telephone": "+1-555-555-5555",
  "address": {
    "@type": "PostalAddress",
    "streetAddress": "123 Main St",
    "addressLocality": "City",
    "addressRegion": "State",
    "postalCode": "12345"
  },
  "openingHoursSpecification": [
    { "@type": "OpeningHoursSpecification", "dayOfWeek": "Monday", "opens": "09:00", "closes": "17:00" }
  ],
  "geo": { "@type": "GeoCoordinates", "latitude": "40.7128", "longitude": "-74.0060" }
}
```

**Use the most specific type:** `Restaurant`, `DentalClinic`, `LawFirm`, `AutoRepair`, `RealEstateAgent`, `Store`, etc.

## HowTo

```json
{
  "@context": "https://schema.org",
  "@type": "HowTo",
  "name": "How to Do X",
  "description": "Step-by-step guide to doing X.",
  "totalTime": "PT30M",
  "step": [
    { "@type": "HowToStep", "position": 1, "name": "Step 1", "text": "Description of step 1." },
    { "@type": "HowToStep", "position": 2, "name": "Step 2", "text": "Description of step 2." }
  ]
}
```

## VideoObject

```json
{
  "@context": "https://schema.org",
  "@type": "VideoObject",
  "name": "Video Title",
  "description": "Video description.",
  "thumbnailUrl": "https://example.com/thumb.jpg",
  "uploadDate": "2026-01-15",
  "duration": "PT5M30S",
  "contentUrl": "https://example.com/video.mp4",
  "embedUrl": "https://example.com/embed/video"
}
```

## Dataset (original research)

```json
{
  "@context": "https://schema.org",
  "@type": "Dataset",
  "name": "Dataset Title",
  "description": "What this dataset contains — methodology, sample size, time period.",
  "creator": { "@type": "Organization", "name": "Brand Name" },
  "datePublished": "2026-01-15",
  "license": "https://creativecommons.org/licenses/by/4.0/",
  "spatialCoverage": "Global",
  "temporalCoverage": "2025-01/2025-12"
}
```

## ItemList (for best-of/listicle pages)

```json
{
  "@context": "https://schema.org",
  "@type": "ItemList",
  "itemListElement": [
    { "@type": "ListItem", "position": 1, "item": { "@type": "Product", "name": "Item 1", "url": "https://example.com/item1" } },
    { "@type": "ListItem", "position": 2, "item": { "@type": "Product", "name": "Item 2", "url": "https://example.com/item2" } }
  ]
}
```

---

## HowTo Schema Deprecation Note

Google deprecated HowTo rich results visual display in September 2023. However, HowTo schema still helps AI systems understand tutorial content. Keep it for GEO value but don't expect SERP feature display.

## FAQPage Schema Note

FAQ rich results retired for all sites on May 7, 2026. FAQPage still benefits AI citation (especially Google AI Overviews and Perplexity). Keep existing FAQPage, don't recommend removal, don't recommend new FAQPage for Google SERP benefit. Use QAPage for genuine user Q&A.

---

## Schema Detection & Validation Process

1. **Fetch page HTML** — look for `<script type="application/ld+json">` blocks
2. **Extract all schemas** — identify types, validate structure
3. **Check coverage** — which required schemas are missing (see by-content-type table)?
4. **Validate** — use Google Rich Results Test or Schema.org validator
5. **Verify accuracy** — schema content matches visible page content? No hidden/misleading markup?
