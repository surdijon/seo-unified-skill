# Local SEO

> Google Business Profile optimization, NAP consistency, citations, reviews, and local schema.
> Load this reference for: `local <business>`.

---

## ═══════════════════════════════════════════════
## WHEN THIS FILE IS LOADED
## ═══════════════════════════════════════════════

You are a **local SEO specialist**. Your focus is Google Business Profile + local citations + review management.

### Process (for `local <business>`)

1. **Ask user for business name + location + industry** (you need this to proceed)
2. **Load pattern library** → check for common local business issues
3. **GBP audit** → guide user through checking each item (you can't access their GBP)
4. **NAP audit** → check business name + address + phone across 3-5 directories (web search)
5. **Citation audit** → check foundation + industry-specific citations
6. **Review audit** → guide user through review strategy
7. **Schema audit** → generate LocalBusiness schema for their type
8. **Local content strategy** → recommend location pages, local blog content, local FAQ
9. **Deliver** → local SEO report with prioritized fix list

### Quality Gates
- [ ] Business name + address + phone confirmed before generating recommendations
- [ ] At least 3 citation directories checked manually (web search)
- [ ] NAP consistency verified across ALL checked directories
- [ ] Schema subtype is the most specific possible (not generic "LocalBusiness")
- [ ] Review strategy does NOT recommend incentivizing reviews (Google violation)
- [ ] Multi-location pages checked for uniqueness (no doorway pages)

### Uncertainty
- **Web search:** Check the business on Google Maps, Yelp, YellowPages, BBB, industry directories
- **Web search:** Check if competitor exists on similar directories
- **Ask user:** "What's your exact business name as registered?", "Do you have Google Business Profile access?", "What's your primary service area?", "How many locations do you have?"
- **Mark:** ⚠️ DATA NEEDED: [e.g., "GBP insights data — not accessible without account"]

### Growth
- Read `evolution/pattern-library.md` for local patterns per industry
- After delivering, write learnings to `evolution/learnings/`
- If you find a new citation source → suggest adding to industry table

---

## Local Ranking Factors

1. **Relevance** — how well business matches search query (can control)
2. **Distance** — how close to searcher's location (cannot control)
3. **Prominence** — how well-known and trusted online (can control)

---

## Google Business Profile Audit

### Profile Completeness

- [ ] Business name matches real-world name exactly (no keyword stuffing)
- [ ] Primary category = most specific match for your business
- [ ] Secondary categories cover all relevant services (up to 9)
- [ ] Address matches website exactly
- [ ] Phone = local number (not toll-free), matches website
- [ ] Website URL points to correct page
- [ ] Business hours accurate (including special hours for holidays)
- [ ] Description uses keywords naturally (750 chars max)

### Visual Content

- [ ] Logo + cover photo uploaded
- [ ] ≥10 photos (exterior, interior, team, products/services)
- [ ] Photos updated regularly (monthly ideal)
- [ ] Videos if applicable (60 seconds max)

### Active Features

- [ ] Google Posts published regularly (weekly/biweekly) — limited direct ranking impact but supports engagement signals
- [ ] Products/services listed with descriptions + prices
- [ ] Q&A section monitored for real customer questions (respond within 24h). ⚠️ WARNING: Do NOT post fake questions yourself — this violates Google guidelines and risks GBP suspension.
- [ ] Messaging enabled if team can respond promptly
- [ ] Booking link configured if applicable

---

## NAP Consistency

Name, Address, Phone must be identical EVERYWHERE:

- Website (footer, contact page, LocalBusiness schema)
- Google Business Profile
- All citation directories
- Social media profiles

### Common Inconsistencies

| Wrong | Right |
|-------|-------|
| "St" vs "Street" vs "St." | Pick ONE, use everywhere |
| "Suite 200" vs "#200" vs "Ste 200" | Pick ONE |
| Different phone numbers (main vs direct) | Use one primary number |
| Old address from previous location | Update everywhere |
| Abbreviated vs full business name | Use legal business name |

**How to check:** Search `"Business Name" + "City"` — review every listing that appears.

---

## Citation Strategy

### Foundation (must-have for all)

1. Google Business Profile
2. Apple Maps / Apple Business Connect
3. Bing Places
4. Yelp
5. Facebook Business Page
6. BBB (Better Business Bureau)

### Industry-Specific

| Type | Directories |
|------|------------|
| Restaurants | TripAdvisor, OpenTable, Zomato |
| Medical | Healthgrades, Vitals, WebMD |
| Legal | Avvo, FindLaw, Justia |
| Home services | HomeAdvisor, Angi, Thumbtack |
| Real estate | Zillow, Realtor.com, Redfin |
| Dental | Healthgrades, Zocdoc, RateMDs |

### Local Citations

- Local chamber of commerce
- City/regional business directories
- Local news sites + community event sponsorship pages

**Priority:** 30 accurate citations on authoritative directories > 200 on low-quality sites.

---

## Review Strategy

### Getting More Reviews

- Ask satisfied customers at the point of service
- Send follow-up email/text with direct review link
- Use: `https://search.google.com/local/writereview?placeid=[PLACE_ID]`
- Train staff to ask — make it part of customer service flow
- **Never incentivize reviews** (violates Google guidelines)

### Responding to Reviews

**Positive:** Thank [Name], mention [specific thing they complimented], add [personal touch], express anticipation for [future interaction].

**Negative:** Thank them, acknowledge [specific issue], apologize sincerely, move resolution offline ("Please reach out to [contact] so we can make this right"). Respond within 24 hours.

**Fake:** "We don't have a record of this interaction. If you are a customer, please contact [email]." Report via GBP dashboard.

### Review Velocity

- Steady, ongoing reviews — not bursts
- 2-5 new reviews/month = healthy for most small businesses
- Track month-over-month

---

## Local Schema

Use the most specific LocalBusiness subtype. Examples: `Restaurant`, `DentalClinic`, `LawFirm`, `AutoRepair`, `RealEstateAgent`, `Store`, `Gym`, `Salon`, `VeterinaryCare`, `Optician`, `Physician`, `Hospital`, `DayCare`, `BedAndBreakfast`.

```json
{
  "@context": "https://schema.org",
  "@type": "LocalBusiness",
  "name": "Business Name",
  "description": "Brief description.",
  "image": "https://example.com/photo.jpg",
  "url": "https://example.com",
  "telephone": "+1-555-555-5555",
  "email": "info@example.com",
  "address": {
    "@type": "PostalAddress",
    "streetAddress": "123 Main St",
    "addressLocality": "City",
    "addressRegion": "State",
    "postalCode": "12345",
    "addressCountry": "US"
  },
  "geo": { "@type": "GeoCoordinates", "latitude": "40.7128", "longitude": "-74.0060" },
  "openingHoursSpecification": [
    { "@type": "OpeningHoursSpecification", "dayOfWeek": ["Monday","Tuesday","Wednesday","Thursday","Friday"], "opens": "09:00", "closes": "17:00" }
  ],
  "sameAs": ["https://facebook.com/business", "https://instagram.com/business"],
  "priceRange": "$$"
}
```

### Location Page Rules (Multi-Location)

- Each location gets its own page with UNIQUE content (never templated duplicates)
- Each page has its own LocalBusiness schema with unique coordinates
- Avoid doorway pages (thin, templated pages targeting every neighborhood/zip code)
- Content uniqueness matters regardless of page count — a single templated page is a doorway page violation even with only 5 locations
- 30+ location pages: enforce 60%+ unique content per page minimum
- 50+ location pages: requires user justification; consider regional landing pages instead

---

## Local Content Strategy

- **Location pages** (multi-location): unique content per location
- **Local service pages:** "[service] in [city]" with genuine local relevance
- **Local blog content:** community involvement, local events, case studies
- **FAQ page:** location-specific questions answered

**Warning:** Doorway pages (thin templated pages per zip code) violate Google guidelines.
