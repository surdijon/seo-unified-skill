# SEO·GEO·EEAT-CORE

> Skill IA todo-en-uno para auditar y posicionar tus sitios estáticos (Astro/HTML) en Google y buscadores de IA. Cero configuración. Cero dependencias.

## En un solo comando

```bash
auto https://tu-sitio.es
```

El skill ejecuta 5 fases de diagnóstico:
1. **Discovery** — obtiene la página, etiquetas head, técnica, velocidad
2. **Content** — puntuación EEAT (70 criterios), palabras clave, brief
3. **Local** — Google Business Profile, NAP, reseñas
4. **GEO** — visibilidad en ChatGPT, Perplexity, Claude
5. **Links** — backlinks, brechas competitivas

Resultado: un informe con prioridades, tiempo estimado y código listo para copiar y pegar.

## Todos los comandos

### Inicio
| Comando | Función |
|---------|---------|
| `help` | Muestra todos los comandos |
| `auto <url>` | Pipeline completo (todo en uno) |
| `audit <url>` | Auditoría de 3 capas + puntuación EEAT |
| `head <url>` | Verifica 40 etiquetas head |

### Contenido
| Comando | Función |
|---------|---------|
| `keywords <topic>` | Palabras clave con intención de búsqueda |
| `brief <topic>` | Brief editorial listo para redactar |
| `content <url>` | Puntuación EEAT completa (70 criterios) |
| `clusters <topic>` | Planificación de clústeres temáticos |
| `fresh <url>` | Verifica si el contenido está actualizado |
| `recover <url>` | Recupera un artículo que pierde tráfico |

### Técnico
| Comando | Función |
|---------|---------|
| `speed <url>` | Análisis de velocidad (LCP, CLS, INP) |
| `technical <url>` | Rastreo, indexación, señales |
| `schema <url>` | Detecta y genera JSON-LD |

### Local
| Comando | Función |
|---------|---------|
| `local <business>` | Google Business Profile + reseñas |
| `napcheck <business>` | Verifica nombre/dirección/tel. en 5 directorios |
| `links <url>` | Análisis de backlinks |
| `gap <business>` | Brechas frente al top 3 de competidores |
| `serp <keyword>` | Estrategia de snippets + AI Overviews |

### IA
| Comando | Función |
|---------|---------|
| `geo <url>` | Visibilidad en IA generativa |
| `citecheck <url>` | Verifica si las IA citan el sitio |

## Ejemplo práctico

```bash
auto https://fontanero-dijon.fr
```

El skill va a:
1. Verificar que las IA puedan rastrear el sitio (robots.txt)
2. Analizar etiquetas head, velocidad y esquema
3. Puntuar el contenido sobre 70 criterios (se adapta si el sitio es nuevo)
4. Verificar la ficha de Google Business Profile
5. Comprobar si ChatGPT ya cita este sitio
6. Comparar con los 3 competidores principales

→ **Informe completo con acciones priorizadas y tiempo estimado.**

## Arquitectura

```
SEO-GEO-EEATCORE/
├── SKILL.md                 ← Punto de entrada (siempre cargado)
├── README.md                ← Este archivo
├── references/              ← Referencias (cargadas bajo demanda)
│   ├── core-eeat-benchmark.md   70 criterios de puntuación
│   ├── audit-framework.md       Auditoría de 3 capas
│   ├── geo-optimization.md      Visibilidad en IA
│   ├── content-strategy.md      Palabras clave, briefs
│   ├── head-tags.md             40 etiquetas head
│   ├── technical-seo.md         Técnica + velocidad
│   ├── auto-pipeline.md         Pipeline automatizado
│   ├── schema-templates.md      Plantillas JSON-LD
│   ├── local-seo.md             SEO local
│   ├── link-building.md         Construcción de enlaces
│   └── serp-targeting.md        Funciones SERP
├── scripts/                ← Utilidades PowerShell
│   ├── fetch-url.ps1            Analiza una URL
│   ├── psi-audit.ps1            PageSpeed Insights
│   ├── gen-local-schema.ps1     Genera esquema LocalBusiness
│   ├── gen-llmstxt.ps1          Genera llms.txt
│   └── entity-audit.ps1         Verifica la entidad de marca
├── evolution/              ← Aprendizaje continuo
│   ├── pattern-library.md       Patrones recurrentes
│   ├── calibrations.md          Ajustes de puntuación
│   ├── quality-gates.md         Controles de calidad
│   ├── checklists/              Listas de verificación
│   └── templates/               Plantillas de sesión
└── scripts/
    └── check-consistency.ps1    Verifica la integridad del skill
```

## Qué lo hace único

| Otras herramientas | Este skill |
|-------------------|------------|
| Puntuaciones arbitrarias | Cada nota justificada por un criterio preciso |
| Ignoran las IA | Verifica ChatGPT, Perplexity, Claude |
| Talla única | Se adapta a la madurez del sitio (nuevo → consolidado) |
| Sin seguimiento | Aprendizaje continuo vía evolution/ |
| Configuración compleja | Cero configuración, un solo comando basta |

## Requisitos

- Un agente de IA (Claude Code, open-code, Cursor, Cline, Aider, Codex CLI, Gemini CLI)
- Un sitio estático (Astro, HTML, Hugo, 11ty, etc.)
- (Opcional) Google Search Console para datos de tráfico

## Instalación

```bash
# 1. Copiar la carpeta a tu proyecto
cp -r SEO-GEO-EEATCORE/ tu-proyecto/

# 2. Decirle a la IA que use el skill
# → "Usa el skill SEO-GEO-EEATCORE"

# 3. Lanzar el primer análisis
# → auto https://tu-sitio.es
```

Sin dependencias, sin base de datos, sin configuración.

## Traducciones

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

**CC0** — Dominio público. Haz lo que quieras.
