# Calibrations — Scoring Adjustments

> This file tracks when CORE-EEAT scoring feels too strict or too lenient.
> Updated after sessions where actual outcomes differed from predictions.

## Default Weights (base)

| Category | Weight | Notes |
|----------|--------|-------|
| Content Body (C01-C10) | 37% | Core of extractability |
| Readability Signals (R01-R10) | 15% | AI citation friendliness |
| EEAT Source Credibility (Ept01-Ept10 + E01-E10 + Exp01-Exp10) | 25% | Growing in importance |
| Presentation & Structure (O01-O10) | 10% | Schema + layout |
| Technical Signals (T01-T10) | 13% | Performance + crawlability |

## Adjustments Log

| Date | Domain Type | Item | Original | Adjusted | Reason |
|------|-------------|------|----------|----------|--------|
| — | — | — | — | — | — |

## What triggers a calibration

1. A well-scored page (80+) ranks poorly → scoring is too lenient
2. A poorly-scored page (30-) ranks well → scoring is too strict
3. AI citations consistently ignore a highly-scored item → weight should drop
4. AI citations consistently extract a low-scored item → weight should rise

## Calibration protocol

When you suspect a scoring issue:
1. Note the discrepancy in the learning file
2. Check if 3+ similar cases exist
3. If yes → add an adjustment here
4. Adjustments persist until contradicted (then revert)

## Items known to be over-weighted / under-weighted

### Under-weighted (probably need more importance)
- **C02 (Direct Answer in first 150 words)** — AI engines heavily use this
- **E01 (Original data)** — ChatGPT and Perplexity strongly prefer original data
- **O03 (Data tables)** — Highest AI extraction rate of any format

### Over-weighted (probably need less importance)
- **T01 (Core Web Vitals pass)** — Lower impact on AI visibility than on Google
- **C10 (Multimedia)** — Nice to have but doesn't drive citations much
