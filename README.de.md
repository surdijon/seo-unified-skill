# SEO·GEO·EEAT-CORE

> KI-All-in-One-Skill zur Prüfung und Optimierung Ihrer statischen Websites (Astro/HTML) für Google und KI-Suchmaschinen. Keine Konfiguration. Keine Abhängigkeiten.

## Mit einem Befehl

```bash
auto https://ihre-seite.de
```

Der Skill führt 5 Diagnosephasen aus:
1. **Discovery** — Seite abrufen, Head-Tags, Technik, Geschwindigkeit
2. **Content** — EEAT-Score (70 Kriterien), Keywords, Briefing
3. **Local** — Google Business Profile, NAP, Bewertungen
4. **GEO** — Sichtbarkeit in ChatGPT, Perplexity, Claude
5. **Links** — Backlinks, Wettbewerbslücken

Ergebnis: Ein Bericht mit Prioritäten, Zeitaufwand und copy-paste-fähigem Code.

## Alle Befehle

### Einstieg
| Befehl | Funktion |
|--------|----------|
| `help` | Zeigt alle Befehle |
| `auto <url>` | Komplett-Pipeline (alles in einem) |
| `audit <url>` | 3-Schichten-Audit + EEAT-Score |
| `head <url>` | Prüft 40 Head-Tags |

### Content
| Befehl | Funktion |
|--------|----------|
| `keywords <topic>` | Keywords mit Suchintention |
| `brief <topic>` | Redaktionsfertiges Content-Briefing |
| `content <url>` | Kompletter EEAT-Score (70 Kriterien) |
| `clusters <topic>` | Themen-Cluster-Planung |
| `fresh <url>` | Prüft Aktualität des Contents |
| `recover <url>` | Rettet Artikel mit Traffic-Verlust |

### Technik
| Befehl | Funktion |
|--------|----------|
| `speed <url>` | Geschwindigkeitsanalyse (LCP, CLS, INP) |
| `technical <url>` | Crawling, Indexierung, Signale |
| `schema <url>` | Erkennt und generiert JSON-LD |

### Lokal
| Befehl | Funktion |
|--------|----------|
| `local <business>` | Google Business Profile + Bewertungen |
| `napcheck <business>` | Prüft Name/Adresse/Tel. in 5 Verzeichnissen |
| `links <url>` | Backlink-Analyse |
| `gap <business>` | Lücken zu Top-3-Wettbewerbern |
| `serp <keyword>` | Snippet-Strategie + AI Overviews |

### KI
| Befehl | Funktion |
|--------|----------|
| `geo <url>` | Sichtbarkeit in generativer KI |
| `citecheck <url>` | Prüft, ob KI die Seite zitiert |

## Praxisbeispiel

```bash
auto https://installateur-dijon.fr
```

Der Skill wird:
1. Prüfen, ob KI-Crawler die Seite erreichen (robots.txt)
2. Head-Tags, Geschwindigkeit und Schema analysieren
3. Content nach 70 Kriterien bewerten (angepasst an die Seiten-Reife)
4. Das Google Business Profile prüfen
5. Prüfen, ob ChatGPT die Seite bereits zitiert
6. Mit den 3 Hauptwettbewerbern vergleichen

→ **Kompletter Bericht mit priorisierten Aktionen und Zeitaufwand.**

## Architektur

```
SEO-GEO-EEATCORE/
├── SKILL.md                 ← Einstiegspunkt (immer geladen)
├── README.md                ← Diese Datei
├── references/              ← Referenzen (bei Bedarf geladen)
│   ├── core-eeat-benchmark.md   70 Bewertungskriterien
│   ├── audit-framework.md       3-Schichten-Audit
│   ├── geo-optimization.md      KI-Sichtbarkeit
│   ├── content-strategy.md      Keywords, Briefings
│   ├── head-tags.md             40 Head-Tags
│   ├── technical-seo.md         Technik + Geschwindigkeit
│   ├── auto-pipeline.md         Automatisierte Pipeline
│   ├── schema-templates.md      JSON-LD-Vorlagen
│   ├── local-seo.md             Lokales SEO
│   ├── link-building.md         Linkaufbau
│   └── serp-targeting.md        SERP-Features
├── scripts/                ← PowerShell-Dienstprogramme
│   ├── fetch-url.ps1            URL-Analyse
│   ├── psi-audit.ps1            PageSpeed Insights
│   ├── gen-local-schema.ps1     LocalBusiness-Schema generieren
│   ├── gen-llmstxt.ps1          llms.txt generieren
│   └── entity-audit.ps1         Marken-Entity prüfen
├── evolution/              ← Kontinuierliches Lernen
│   ├── pattern-library.md       Wiederkehrende Muster
│   ├── calibrations.md          Score-Anpassungen
│   ├── quality-gates.md         Qualitätskontrollen
│   ├── checklists/              Checklisten
│   └── templates/               Sitzungsvorlagen
└── scripts/
    └── check-consistency.ps1    Integritätsprüfung
```

## Was es einzigartig macht

| Andere Tools | Dieses Skill |
|-------------|--------------|
| Willkürliche Bewertungen | Jede Note durch präzises Kriterium belegt |
| Ignorieren KI | Prüft ChatGPT, Perplexity, Claude |
| Einheitsgröße | Passt sich der Seiten-Reife an (neu → etabliert) |
| Keine Nachverfolgung | Kontinuierliches Lernen via evolution/ |
| Komplexe Einrichtung | Null Konfiguration, ein Befehl genügt |

## Voraussetzungen

- Ein KI-Agent (Claude Code, open-code, Cursor, Cline, Aider, Codex CLI, Gemini CLI)
- Eine statische Website (Astro, HTML, Hugo, 11ty, etc.)
- (Optional) Google Search Console für Traffic-Daten

## Installation

```bash
# 1. Ordner in Ihr Projekt kopieren
cp -r SEO-GEO-EEATCORE/ ihr-projekt/

# 2. Der KI sagen, sie soll das Skill verwenden
# → "Verwende das SEO-GEO-EEATCORE-Skill"

# 3. Erste Analyse starten
# → auto https://ihre-seite.de
```

Keine Abhängigkeiten, keine Datenbank, keine Konfiguration.

## Übersetzungen

- [English](./README.md)
- [Français](./README.md)
- [Deutsch](./README.de.md)
- [Español](./README.es.md)
- [Português](./README.pt.md)
- [Русский](./README.ru.md)
- [العربية](./README.ar.md)
- [日本語](./README.ja.md)
- [한국어](./README.ko.md)
- [中文](./README.zh.md)

---

**CC0** — Public Domain. Tun Sie, was Sie wollen.
