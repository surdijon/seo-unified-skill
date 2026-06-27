<div align="center">

# SEO Unified Skill

**AI-powered SEO/GEO/EEAT unified skill for WaaS rank & rent static sites (Astro/HTML). Zero config. Auto-learning. Maturity-adaptive scoring.**

![Version](https://img.shields.io/badge/version-1.0.0-8B5CF6?style=flat-square)
![License](https://img.shields.io/badge/license-CC0-8B5CF6?style=flat-square)
![Commands](https://img.shields.io/badge/commands-25+-8B5CF6?style=flat-square)
![EEAT Items](https://img.shields.io/badge/EEAT%20items-70-8B5CF6?style=flat-square)
![Agents](https://img.shields.io/badge/Claude%20Code%20-%20Open%20Code%20-%20Cursor%20-%20Cline%20-%20Aider%20-%20Gemini%20CLI-8B5CF6?style=flat-square)

> Unified skill covering **traditional SEO** + **Generative Engine Optimization** (ChatGPT, Perplexity, Claude, Gemini, Google AIO) + **CORE-EEAT 70-dimension content benchmarking**.
> Self-learning evolution system. Gets better with every use. Compatible with any agent harness.

</div>

**Language**: English | [Deutsch](README.de.md) | [Español](README.es.md) | [Português](README.pt.md) | [Русский](README.ru.md) | [العربية](README.ar.md) | [日本語](README.ja.md) | [한국어](README.ko.md) | [中文](README.zh.md)

---

## What it does

A single command **audits and optimizes static websites** (Astro, HTML, Hugo, 11ty) for both Google search and AI-powered search engines. It detects issues, scores content against 70 EEAT criteria, checks AI citation readiness, and generates an actionable fix plan — all from one URL.

The skill adapts to **site maturity** (New / Growing / Established / Dominant), scoring differently for a 2-page local site vs a 100-page authority domain. It never gives one-size-fits-all advice.

## Key features

| Feature | What it means |
|---------|---------------|
| **25+ commands** | `auto` for full pipeline, or targeted: `head`, `speed`, `schema`, `geo`, `local`, `links`, `keywords`, `brief`, `fresh`, `recover` |
| **6-phase auto pipeline** | Discovery → Content → Local → GEO → Links → Report. Spawns subagents, handles failures gracefully. |
| **70 EEAT criteria** | Content, Expertise, Reputation, Originality, Technical — maturity-adaptive scoring per item |
| **Maturity detection** | New (<6mo/10p) vs Growing (6-18mo/10-30p) vs Established (18mo+/30+p) vs Dominant (3yr+/100+p). Scoring adjusts automatically. |
| **GEO-first** | Checks AI citation readiness across ChatGPT, Perplexity, Claude, Gemini, Google AIO |
| **Veto conditions** | 9 showstoppers checked before scoring (robots.txt blocking, no HTTPS, manual action, etc.) |
| **Truth protocol** | Never marks Pass without visible evidence. Never guesses backlinks. Never claims schema valid without checking. |
| **Self-evolving** | Every session logs learnings. Patterns accumulate in `evolution/pattern-library.md`. Calibrations adjust over time. |
| **Bloat guard** | Learning files written only when non-obvious findings discovered. 50-file archive/consolidate/delete threshold. |
| **Head tag audit** | 40 items scored across 6 categories (meta, OG, schema, icons, geo, social) with priority tiers P0-P3 |
| **Structured output** | Every command delivers: score, executive summary, findings table, action plan with effort estimates |
| **Cross-platform** | Works with Claude Code, Open Code, Cursor, Cline, Aider, Codex CLI, Gemini CLI |

## Why SEO Unified Skill is different

| Other tools | SEO Unified Skill |
|-------------|-------------------|
| One-size-fits-all scoring | **Maturity-adaptive**: New sites aren't penalized for lacking authority signals |
| Ignore AI search | **GEO-first** — checks ChatGPT, Perplexity, Claude citation readiness |
| Arbitrary scores | **Evidence-based**: every finding cites a specific EEAT criterion |
| Static | **Self-learning** via evolution/ folder |
| Bloated config | **Zero config** — one command, one URL |
| Complex toolchains | **Agent-native** — works in any agent, no install |
| Vague advice | **Actionable fixes** with effort estimates and specific code |
| Hallucination risk | **Truth protocol** — never invents data, marks unknowns clearly |

## Commands

### Start
| Command | What it does |
|---------|-------------|
| `help` | List all commands with examples |
| `auto <url>` | Full pipeline: 6 phases, subagents, composite score |
| `audit <url>` | 3-layer audit + EEAT scoring + WaaS action plan |
| `head <url>` | 40-item head tag audit (meta, OG, schema, icons, geo) |

### Content
| Command | What it does |
|---------|-------------|
| `keywords <topic>` | Prioritized keywords with intent mapping |
| `brief <topic>` | Editor-ready content brief + SERP analysis + outline |
| `content <url>` | Full 70-criterion EEAT benchmark + improvement plan |
| `clusters <topic>` | Topic cluster map + pillar/spoke + interlinking |
| `fresh <url>` | Content freshness audit (stale stats, dates, examples) |
| `recover <url>` | Content decay triage (refresh / consolidate / redirect) |

### Technical
| Command | What it does |
|---------|-------------|
| `speed <url>` | Core Web Vitals analysis (LCP, CLS, INP) + root causes |
| `technical <url>` | Crawl → index → signals diagnostic |
| `schema <url>` | Detect, validate, and generate JSON-LD |

### Local
| Command | What it does |
|---------|-------------|
| `local <business>` | Google Business Profile audit + NAP + reviews |
| `napcheck <business>` | NAP consistency across directories |
| `links <url>` | Backlink profile analysis + link building campaign |
| `gap <business>` | Competitive gap: what top 3 have that you don't |
| `serp <keyword>` | Featured snippet + PAA + rich results targeting |

### AI / GEO
| Command | What it does |
|---------|-------------|
| `geo <url>` | AI search visibility audit + llms.txt check |
| `citecheck <url>` | Check if AI engines cite the site |

### Evolution
| Command | What it does |
|---------|-------------|
| `memory` | Show accumulated session learnings and patterns |
| `reset` | Archive current learnings and start fresh |

NLP auto-detection also works: "audit mon site" routes to `audit`, "tout" → `auto`, "vitesse" → `speed`, "citation ia" → `citecheck`.

## Quick example

```bash
auto https://plombier-dijon.fr
```

The skill will:
1. Check if AI crawlers can access the site (robots.txt)
2. Analyze head tags, speed, schema
3. Score content against 70 EEAT criteria (adapted for site maturity)
4. Check Google Business Profile
5. Verify if ChatGPT / Perplexity already cite this site
6. Compare against top 3 competitors

→ **Full report with prioritized actions, effort estimates, and copy-paste code.**

## Installation

### Claude Code
```bash
cp -r seo-unified-skill/ /path/to/your/project/
# Then: "Use the SEO unified skill"
```

### Open Code
```bash
# Add to your skill config or copy to project
# Then: auto https://votre-site.fr
```

### Cursor / Cline / Aider / Gemini CLI
```bash
cp -r seo-unified-skill/ /path/to/your/project/
# Reference SKILL.md in your agent instructions
```

### Verify
```bash
ls seo-unified-skill/
# Should show: SKILL.md, README.md, references/, scripts/, evolution/
```

No dependencies. No database. No configuration.

## Usage

```bash
# Full pipeline (recommended)
auto https://yoursite.com

# Targeted commands
head https://yoursite.com     # 40 head tags
speed https://yoursite.com    # Core Web Vitals
geo https://yoursite.com      # AI visibility
local "Your Business Name"    # GBP audit
keywords "plombier Dijon"     # Keyword research
brief "serrurier Lyon"        # Content brief
schema https://yoursite.com   # Structured data
```

The skill detects the **business type** automatically (SaaS, Local Service, E-commerce, Publisher, Agency) and adjusts priorities. Local service is default for WaaS rank & rent.

## Auto-evolution system

The skill improves over time **without any setup**:

1. After each command, findings are logged to `evolution/learnings/`
2. Recurring patterns accumulate in `evolution/pattern-library.md`
3. Scoring adjustments are tracked in `evolution/calibrations.md`
4. When files exceed 50, old learnings are archived and consolidated
5. Learning files are only written when non-obvious findings are discovered (bloat guard)

The reference files are NEVER modified automatically. The user decides on calibrations.

## Contents

```
seo-unified-skill/
├── SKILL.md                     Core instruction for the AI agent (19 KB)
├── README.md                    This file
├── references/                  Loaded on demand per command
│   ├── core-eeat-benchmark.md   70 criteria, maturity-adaptive scoring (22 KB)
│   ├── audit-framework.md       3-layer audit framework (9 KB)
│   ├── geo-optimization.md      AI search visibility (11 KB)
│   ├── content-strategy.md      Keywords, briefs, clusters, recovery (12 KB)
│   ├── head-tags.md             40-item head tag audit (10 KB)
│   ├── auto-pipeline.md         6-phase pipeline orchestration (12 KB)
│   ├── technical-seo.md         3-layer technical diagnostic (7 KB)
│   ├── schema-templates.md      JSON-LD templates (10 KB)
│   ├── local-seo.md             Google Business Profile + NAP (8 KB)
│   ├── link-building.md         Backlink profile + link building (8 KB)
│   └── serp-targeting.md        Snippets, PAA, rich results (9 KB)
├── scripts/                     PowerShell utilities
│   ├── fetch-url.ps1            URL fetch + parse
│   ├── psi-audit.ps1            PageSpeed Insights API
│   ├── gen-local-schema.ps1     LocalBusiness JSON-LD generator
│   ├── gen-llmstxt.ps1          llms.txt generator
│   └── entity-audit.ps1         Brand entity checker
├── evolution/                   Self-learning system
│   ├── pattern-library.md       Recurring patterns by domain type
│   ├── calibrations.md          Scoring adjustments
│   ├── quality-gates.md         Pre-output verification
│   ├── checklists/              Audit checklists
│   └── templates/               Session log templates
└── scripts/
    └── check-consistency.ps1    Skill integrity checker (6 checks)
```

## Credits

Built by [SurDijon](https://github.com/SurDijon) — WaaS rank & rent studio. Covers 11 reference domains (technical, content, local, GEO, schema, links, SERP, EEAT, head tags, pipeline) with 5 PowerShell utilities and a self-learning evolution system.

---

If this skill helps you rank sites: **leave a ⭐ on [github.com/SurDijon/seo-unified-skill](https://github.com/SurDijon/seo-unified-skill)**.
