# Uncertainty Log — Questions to Ask the User

> When analysis hits a blocker, log it here. Over time, this builds a FAQ
> of things the AI can't auto-detect and must ask the user about.

## Pending Uncertainties

| Date | Command | Target | Uncertainty | Resolution |
|------|---------|--------|-------------|------------|
| — | — | — | — | — |

## Known Uncertainty Categories

### Data the AI cannot access (must ask)

| Missing Data | Why It Matters | What to Ask |
|-------------|----------------|-------------|
| Google Search Console data | Crawl stats, index coverage, Core Web Vitals | "Do you have Google Search Console access? Can you share screenshots of coverage and CWV reports?" |
| Google Analytics data | Traffic, bounce rate, conversion | "Do you have GA access? What's your organic traffic trend for the past 6 months?" |
| Backlink profile | Domain authority, link quality | "Do you have a backlink tool (Ahrefs, Majestic, Semrush)? What's your current referring domain count?" |
| Keyword rankings | Position tracking | "What keywords do you track? Do you have a rank-tracking tool?" |
| Revenue/conversion data | Business impact | "What's your organic conversion rate and average order value?" |
| Competitor internal data | Competitive gap | "Who do you consider your top 3-5 competitors online?" |

### Data the AI can infer (mark as estimate)

| Data | How to Infer | Accuracy |
|------|-------------|----------|
| Site speed | PageSpeed Insights (public API) | Medium |
| Schema validity | Schema.org validator (public) | High |
| robots.txt | Direct fetch | High |
| sitemap.xml | Direct fetch | High |
| Content quality | Manual reading | Medium-High |
| NAP consistency | Manual check of 3-5 directories | Medium |
| Industry type | Homepage signals | High |

### Data the AI should NOT guess (mark as unknown)

- Exact traffic numbers
- Revenue
- Conversion rates
- Historical ranking positions
- Exact backlink counts
- Competitor traffic
- User demographics
