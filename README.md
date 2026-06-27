# SEO·GEO·EEAT-CORE

> Skill IA tout-en-un pour auditer et propulser vos sites statiques (Astro/HTML) en tête de Google et des IA génératives. Zéro configuration. Zéro dépendance.

## En une commande

```bash
auto https://votre-site.fr
```

Le skill lance 5 phases de diagnostic :
1. **Discovery** — fetch la page, balises head, technique, vitesse
2. **Content** — score EEAT 70 critères, mots-clés, brief
3. **Local** — Google Business Profile, NAP, avis
4. **GEO** — visibilité dans ChatGPT, Perplexity, Claude
5. **Links** — backlinks, écarts concurrentiels

Résultat : un rapport avec priorités, temps estimé, et code à copier-coller.

## Toutes les commandes

### Démarrer
| Commande | Ça fait quoi |
|----------|-------------|
| `help` | Liste toutes les commandes |
| `auto <url>` | Pipeline complet (tout en un) |
| `audit <url>` | Audit 3 couches + score EEAT |
| `head <url>` | Vérifie 40 balises head |

### Contenu
| Commande | Ça fait quoi |
|----------|-------------|
| `keywords <topic>` | Mots-clés avec intention de recherche |
| `brief <topic>` | Brief éditeur prêt à rédiger |
| `content <url>` | Score EEAT complet (70 critères) |
| `clusters <topic>` | Plan de cluster thématique |
| `fresh <url>` | Vérifie si le contenu est à jour |
| `recover <url>` | Sauve un article qui perd du trafic |

### Technique
| Commande | Ça fait quoi |
|----------|-------------|
| `speed <url>` | Analyse vitesse (LCP, CLS, INP) |
| `technical <url>` | Crawl, indexation, signaux |
| `schema <url>` | Détecte et génère les JSON-LD |

### Local
| Commande | Ça fait quoi |
|----------|-------------|
| `local <business>` | Audit Google Business Profile + avis |
| `napcheck <business>` | Vérifie le nom/adresse/tél sur 5 annuaires |
| `links <url>` | Analyse des backlinks |
| `gap <business>` | Écarts avec le top 3 concurrent |
| `serp <keyword>` | Stratégie snippets + AI Overviews |

### IA
| Commande | Ça fait quoi |
|----------|-------------|
| `geo <url>` | Visibilité dans les IA génératives |
| `citecheck <url>` | Vérifie si les IA citent le site |

## Exemple concret

```bash
auto https://plombier-dijon.fr
```

Le skill va :
1. Vérifier que les IA peuvent crawler le site (robots.txt)
2. Analyser les balises head, la vitesse, le schéma
3. Noter le contenu sur 70 critères (s'adapte si le site est nouveau)
4. Vérifier la fiche Google Business Profile
5. Regarder si ChatGPT cite déjà ce site
6. Comparer avec les 3 concurrents principaux

→ **Rapport complet avec actions classées par priorité et temps estimé.**

## Architecture

```
SEO-GEO-EEATCORE/
├── SKILL.md                 ← Point d'entrée (toujours chargé)
├── README.md                ← Ce fichier
├── references/              ← Références (chargées à la demande)
│   ├── core-eeat-benchmark.md   70 critères de scoring
│   ├── audit-framework.md       Audit 3 couches
│   ├── geo-optimization.md      Visibilité IA
│   ├── content-strategy.md      Mots-clés, briefs
│   ├── head-tags.md             40 balises head
│   ├── technical-seo.md         Technique + vitesse
│   ├── auto-pipeline.md         Pipeline automatisé
│   ├── schema-templates.md      Templates JSON-LD
│   ├── local-seo.md             SEO local
│   ├── link-building.md         Netlinking
│   └── serp-targeting.md        SERP features
├── scripts/                ← Utilitaires PowerShell
│   ├── fetch-url.ps1            Analyse une URL
│   ├── psi-audit.ps1            PageSpeed Insights
│   ├── gen-local-schema.ps1     Génère schema LocalBusiness
│   ├── gen-llmstxt.ps1          Génère llms.txt
│   └── entity-audit.ps1         Vérifie l'entité marque
├── evolution/              ← Apprentissage continu
│   ├── pattern-library.md       Patterns récurrents
│   ├── calibrations.md          Ajustements de scoring
│   ├── quality-gates.md         Contrôles qualité
│   ├── checklists/              Listes de vérification
│   └── templates/               Templates de session
└── scripts/
    └── check-consistency.ps1    Vérifie l'intégrité du skill
```

## Ce qui le rend unique

| Autres outils | Ce skill |
|---------------|----------|
| Notes arbitraires | Chaque note justifiée par un critère précis |
| Ignorent les IA | Vérifie ChatGPT, Perplexity, Claude |
| Parfait pour tous les sites | S'adapte à la maturité (nouveau → établi) |
| Pas de suivi | Apprentissage continu via evolution/ |
| Configuration complexe | Zéro config, une commande suffit |

## Prérequis

- Un agent IA (Claude Code, open-code, Cursor, Cline, Aider, Codex CLI, Gemini CLI)
- Un site statique (Astro, HTML, Hugo, 11ty, etc.)
- (Optionnel) Google Search Console pour des données de trafic

## Installation

```bash
# 1. Copier le dossier dans votre projet
cp -r SEO-GEO-EEATCORE/ votre-projet/

# 2. Dire à l'IA d'utiliser le skill
# → "Utilise le skill SEO-GEO-EEATCORE"

# 3. Lancer la première analyse
# → auto https://votre-site.fr
```

Pas de dépendances, pas de base de données, pas de configuration.

## Traductions

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

**CC0** — Domaine public. Faites-en ce que vous voulez.
