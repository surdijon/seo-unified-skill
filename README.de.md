<div align="center">

# SEO Unified Skill

**KI-gestützte SEO/GEO/EEAT-Universal-Skill für WaaS Rank & Rent Static Sites (Astro/HTML). Null Konfiguration. Selbstlernend. Maturitätsadaptives Scoring.**

![Version](https://img.shields.io/badge/version-1.0.0-8B5CF6?style=flat-square)
![Lizenz](https://img.shields.io/badge/lizenz-CC0-8B5CF6?style=flat-square)
![Befehle](https://img.shields.io/badge/befehle-25+-8B5CF6?style=flat-square)
![EEAT Items](https://img.shields.io/badge/EEAT%20items-70-8B5CF6?style=flat-square)
![Agenten](https://img.shields.io/badge/Claude%20Code%20-%20Open%20Code%20-%20Cursor%20-%20Cline%20-%20Aider%20-%20Gemini%20CLI-8B5CF6?style=flat-square)

> Universelle Skill für **traditionelles SEO** + **Generative Engine Optimization** (ChatGPT, Perplexity, Claude, Gemini, Google AIO) + **CORE-EEAT 70-dimensionale Content-Bewertung**.
> Selbstlernendes Evolutionssystem. Wird mit jeder Nutzung besser. Kompatibel mit jedem Agenten.

</div>

**Sprache**: [English](README.md) | Deutsch | [Español](README.es.md) | [Português](README.pt.md) | [Русский](README.ru.md) | [العربية](README.ar.md) | [日本語](README.ja.md) | [한국어](README.ko.md) | [中文](README.zh.md)

---

## Was es macht

Ein einziger Befehl **auditiert und optimiert statische Websites** (Astro, HTML, Hugo, 11ty) sowohl für Google-Suche als auch für KI-gestützte Suchmaschinen. Er erkennt Probleme, bewertet Inhalte anhand von 70 EEAT-Kriterien, prüft die KI-Zitierfähigkeit und erstellt einen umsetzbaren Aktionsplan — alles aus einer URL.

Die Skill passt sich der **Site-Reife** an (Neu / Wachsend / Etabliert / Dominant) und bewertet eine 2-Seiten-Website anders als eine 100-Seiten-Autoritätsdomain.

## Hauptmerkmale

| Merkmal | Bedeutung |
|---------|-----------|
| **25+ Befehle** | `auto` für Komplettpipeline, oder gezielt: `head`, `speed`, `schema`, `geo`, `local`, `links`, `keywords`, `brief`, `fresh`, `recover` |
| **6-Phasen Auto-Pipeline** | Discovery → Content → Local → GEO → Links → Report. Startet Subagenten, behandelt Fehler sauber. |
| **70 EEAT-Kriterien** | Content, Expertise, Reputation, Originalität, Technik — reifeangepasstes Scoring pro Item |
| **Reifeerkennung** | Neu (<6Mo/10S) vs Wachsend (6-18Mo/10-30S) vs Etabliert (18Mo+/30+S) vs Dominant (3J+/100+S). Scoring passt sich automatisch an. |
| **GEO-first** | Prüft KI-Zitierbereitschaft für ChatGPT, Perplexity, Claude, Gemini, Google AIO |
| **Veto-Bedingungen** | 9 Showstopper vor dem Scoring geprüft (robots.txt-Blockade, kein HTTPS, manuelle Maßnahmen, etc.) |
| **Wahrheitsprotokoll** | Niemals "Bestanden" ohne sichtbaren Beleg. Niemals Backlinks geraten. Niemals Schema als gültig erklärt ohne Prüfung. |
| **Selbstlernend** | Jede Sitzung protokolliert Erkenntnisse. Muster sammeln sich in `evolution/pattern-library.md`. Kalibrierungen passen sich an. |
| **Bloat-Guard** | Lerndateien nur bei nicht offensichtlichen Erkenntnissen. 50-Dateien-Archivierungsgrenze. |
| **Head-Tag-Audit** | 40 Items in 6 Kategorien (Meta, OG, Schema, Icons, Geo, Social) mit Prioritätsstufen P0-P3 |
| **Strukturierte Ausgabe** | Jeder Befehl liefert: Punktzahl, Zusammenfassung, Ergebnisse, Aktionsplan mit Aufwandsschätzung |
| **Plattformübergreifend** | Funktioniert mit Claude Code, Open Code, Cursor, Cline, Aider, Codex CLI, Gemini CLI |

## Warum SEO Unified Skill anders ist

| Andere Tools | SEO Unified Skill |
|-------------|-------------------|
| Einheits-Scoring | **Reifeangepasst**: Neue Sites werden nicht für fehlende Authority-Signale bestraft |
| Ignorieren KI-Suche | **GEO-first** — prüft ChatGPT-, Perplexity-, Claude-Zitierbereitschaft |
| Willkürliche Bewertungen | **Evidenzbasiert**: Jede Erkenntnis zitiert ein spezifisches EEAT-Kriterium |
| Statisch | **Selbstlernend** via evolution/-Ordner |
| Aufgeblähte Konfiguration | **Null Konfiguration** — ein Befehl, eine URL |
| Komplexe Toolchains | **Agent-nativ** — funktioniert in jedem Agenten, keine Installation |
| Vage Ratschläge | **Umsetzbare Lösungen** mit Aufwandsschätzung und spezifischem Code |
| Halluzinationsrisiko | **Wahrheitsprotokoll** — erfindet nie Daten, markiert Unbekanntes klar |

## Befehle

### Start
| Befehl | Funktion |
|--------|----------|
| `help` | Alle Befehle mit Beispielen anzeigen |
| `auto <url>` | Komplettpipeline: 6 Phasen, Subagenten, Gesamtpunktzahl |
| `audit <url>` | 3-Schichten-Audit + EEAT-Scoring + WaaS-Aktionsplan |
| `head <url>` | 40-Item-Head-Tag-Audit (Meta, OG, Schema, Icons, Geo) |

### Inhalt
| Befehl | Funktion |
|--------|----------|
| `keywords <topic>` | Priorisierte Keywords mit Intent-Mapping |
| `brief <topic>` | Redakteurfertiger Content-Brief + SERP-Analyse + Gliederung |
| `content <url>` | Vollständiges 70-Kriterien-EEAT-Benchmark + Verbesserungsplan |
| `clusters <topic>` | Themen-Cluster-Karte + Säule/Unterthemen + Verlinkung |
| `fresh <url>` | Content-Frische-Audit (veraltete Statistiken, Daten, Beispiele) |
| `recover <url>` | Content-Decay-Triage (aktualisieren / konsolidieren / umleiten) |

### Technisch
| Befehl | Funktion |
|--------|----------|
| `speed <url>` | Core Web Vitals-Analyse (LCP, CLS, INP) + Ursachen |
| `technical <url>` | Crawl → Index → Signale-Diagnostik |
| `schema <url>` | JSON-LD erkennen, validieren und generieren |

### Lokal
| Befehl | Funktion |
|--------|----------|
| `local <business>` | Google Business Profile-Audit + NAP + Bewertungen |
| `napcheck <business>` | NAP-Konsistenz über Verzeichnisse hinweg |
| `links <url>` | Backlink-Profil-Analyse + Linkbuilding-Kampagne |
| `gap <business>` | Wettbewerbslücke: Was die Top 3 haben, was Ihnen fehlt |
| `serp <keyword>` | Featured Snippet + PAA + Rich Results-Optimierung |

### KI / GEO
| Befehl | Funktion |
|--------|----------|
| `geo <url>` | KI-Suchmaschinen-Sichtbarkeitsaudit + llms.txt-Prüfung |
| `citecheck <url>` | Prüfen, ob KI-Engines die Site zitieren |

### Evolution
| Befehl | Funktion |
|--------|----------|
| `memory` | Gesammelte Sitzungserkenntnisse und Muster anzeigen |
| `reset` | Aktuelle Erkenntnisse archivieren und neu beginnen |

## Kurzbeispiel

```bash
auto https://klempner-dijon.fr
```

Die Skill wird:
1. Prüfen, ob KI-Crawler auf die Site zugreifen können (robots.txt)
2. Head-Tags, Geschwindigkeit, Schema analysieren
3. Inhalt anhand von 70 EEAT-Kriterien bewerten (reifeangepasst)
4. Google Business Profile prüfen
5. Prüfen, ob ChatGPT / Perplexity diese Site bereits zitieren
6. Vergleich mit den Top-3-Wettbewerbern

→ **Vollständiger Bericht mit priorisierten Aktionen, Aufwandsschätzung und kopierfertigem Code.**

## Installation

### Claude Code
```bash
cp -r seo-unified-skill/ /pfad/zu/ihrem/projekt/
# Dann: "Nutze die SEO Unified Skill"
```

### Open Code
```bash
# Zur Skill-Konfiguration hinzufügen oder ins Projekt kopieren
# Dann: auto https://ihre-site.de
```

### Cursor / Cline / Aider / Gemini CLI
```bash
cp -r seo-unified-skill/ /pfad/zu/ihrem/projekt/
# SKILL.md in den Agent-Instruktionen referenzieren
```

### Überprüfen
```bash
ls seo-unified-skill/
# Sollte zeigen: SKILL.md, README.md, references/, scripts/, evolution/
```

Keine Abhängigkeiten. Keine Datenbank. Keine Konfiguration.

## Nutzung

```bash
# Komplettpipeline (empfohlen)
auto https://ihre-site.de

# Gezielte Befehle
head https://ihre-site.de      # 40 Head-Tags
speed https://ihre-site.de     # Core Web Vitals
geo https://ihre-site.de       # KI-Sichtbarkeit
local "Ihr Firmenname"         # GBP-Audit
keywords "klempner berlin"     # Keyword-Recherche
brief "installateur münchen"   # Content-Brief
schema https://ihre-site.de    # Strukturierte Daten
```

## Auto-Evolution-System

Die Skill verbessert sich im Laufe der Zeit **ohne Einrichtung**:

1. Nach jedem Befehl werden Erkenntnisse in `evolution/learnings/` protokolliert
2. Wiederkehrende Muster sammeln sich in `evolution/pattern-library.md`
3. Scoring-Anpassungen werden in `evolution/calibrations.md` verfolgt
4. Bei über 50 Dateien werden alte Erkenntnisse archiviert und konsolidiert
5. Lerndateien werden nur bei nicht offensichtlichen Erkenntnissen geschrieben

Die Referenzdateien werden NIE automatisch geändert. Der Benutzer entscheidet über Kalibrierungen.

## Inhalt

```
seo-unified-skill/
├── SKILL.md                     Kernanweisung für den KI-Agenten (19 KB)
├── README.md                    Diese Datei
├── references/                  Bei Bedarf geladen
│   ├── core-eeat-benchmark.md   70 Kriterien, reifeangepasstes Scoring (22 KB)
│   ├── audit-framework.md       3-Schichten-Audit-Framework (9 KB)
│   ├── geo-optimization.md      KI-Suchmaschinen-Sichtbarkeit (11 KB)
│   ├── content-strategy.md      Keywords, Briefs, Cluster, Recovery (12 KB)
│   ├── head-tags.md             40-Item-Head-Tag-Audit (10 KB)
│   ├── auto-pipeline.md         6-Phasen-Pipeline-Orchestrierung (12 KB)
│   ├── technical-seo.md         3-Schichten-Technikdiagnostik (7 KB)
│   ├── schema-templates.md      JSON-LD-Vorlagen (10 KB)
│   ├── local-seo.md             Google Business Profile + NAP (8 KB)
│   ├── link-building.md         Backlink-Profil + Linkbuilding (8 KB)
│   └── serp-targeting.md        Snippets, PAA, Rich Results (9 KB)
├── scripts/                     PowerShell-Dienstprogramme
│   ├── fetch-url.ps1            URL abrufen + parsen
│   ├── psi-audit.ps1            PageSpeed Insights API
│   ├── gen-local-schema.ps1     LocalBusiness JSON-LD-Generator
│   ├── gen-llmstxt.ps1          llms.txt-Generator
│   └── entity-audit.ps1         Markenentitätsprüfung
├── evolution/                   Selbstlernsystem
│   ├── pattern-library.md       Wiederkehrende Muster nach Domain-Typ
│   ├── calibrations.md          Scoring-Anpassungen
│   ├── quality-gates.md         Qualitätsprüfung vor Ausgabe
│   ├── checklists/              Audit-Checklisten
│   └── templates/               Sitzungsprotokoll-Vorlagen
└── scripts/
    └── check-consistency.ps1    Skill-Integritätsprüfung (6 Checks)
```

## Credits

Erstellt von [SurDijon](https://github.com/SurDijon) — WaaS Rank & Rent Studio. Deckt 11 Referenzdomänen ab (Technik, Content, Lokal, GEO, Schema, Links, SERP, EEAT, Head-Tags, Pipeline) mit 5 PowerShell-Dienstprogrammen und einem selbstlernenden Evolutionssystem.

---

Wenn diese Skill Ihnen hilft, Sites zu ranken: **hinterlassen Sie ein ⭐ auf [github.com/SurDijon/seo-unified-skill](https://github.com/SurDijon/seo-unified-skill)**.
