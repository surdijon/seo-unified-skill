<div align="center">

# SEO Unified Skill

**Skill unificada de SEO/GEO/EEAT con IA para sitios estáticos WaaS rank & rent (Astro/HTML). Configuración cero. Autoaprendizaje. Puntuación adaptativa por madurez.**

![Versión](https://img.shields.io/badge/versión-1.0.0-8B5CF6?style=flat-square)
![Licencia](https://img.shields.io/badge/licencia-CC0-8B5CF6?style=flat-square)
![Comandos](https://img.shields.io/badge/comandos-25+-8B5CF6?style=flat-square)
![Items EEAT](https://img.shields.io/badge/EEAT%20items-70-8B5CF6?style=flat-square)
![Agentes](https://img.shields.io/badge/Claude%20Code%20-%20Open%20Code%20-%20Cursor%20-%20Cline%20-%20Aider%20-%20Gemini%20CLI-8B5CF6?style=flat-square)

> Skill integral que cubre **SEO tradicional** + **Generative Engine Optimization** (ChatGPT, Perplexity, Claude, Gemini, Google AIO) + **CORE-EEAT 70 dimensiones de evaluación de contenido**.
> Sistema de evolución autoaprendizaje. Mejora con cada uso. Compatible con cualquier agente.

</div>

**Idioma**: [English](README.md) | [Deutsch](README.de.md) | Español | [Português](README.pt.md) | [Русский](README.ru.md) | [العربية](README.ar.md) | [日本語](README.ja.md) | [한국어](README.ko.md) | [中文](README.zh.md)

---

## Qué hace

Un solo comando **audita y optimiza sitios web estáticos** (Astro, HTML, Hugo, 11ty) tanto para Google como para buscadores con IA. Detecta problemas, puntúa el contenido contra 70 criterios EEAT, verifica la preparación para citas en IA y genera un plan de acción — todo desde una URL.

La skill se adapta a la **madurez del sitio** (Nuevo / En Crecimiento / Establecido / Dominante), puntuando de forma diferente un sitio local de 2 páginas vs un dominio de autoridad de 100 páginas.

## Características principales

| Característica | Qué significa |
|---------------|---------------|
| **25+ comandos** | `auto` para pipeline completo, o específicos: `head`, `speed`, `schema`, `geo`, `local`, `links`, `keywords`, `brief`, `fresh`, `recover` |
| **Pipeline auto de 6 fases** | Discovery → Content → Local → GEO → Links → Reporte. Lanza subagentes, maneja errores elegantemente. |
| **70 criterios EEAT** | Contenido, Experiencia, Reputación, Originalidad, Técnico — puntuación adaptativa por madurez |
| **Detección de madurez** | Nuevo (<6m/10p) vs Creciendo (6-18m/10-30p) vs Establecido (18m+/30+p) vs Dominante (3a+/100+p). Puntuación se ajusta automáticamente. |
| **GEO-first** | Verifica preparación para citas en ChatGPT, Perplexity, Claude, Gemini, Google AIO |
| **Condiciones de veto** | 9 bloqueadores verificados antes de puntuar (robots.txt bloqueando, sin HTTPS, acción manual, etc.) |
| **Protocolo de verdad** | Nunca marca "Aprobado" sin evidencia visible. Nunca adivina backlinks. Nunca declara esquema válido sin verificar. |
| **Autoaprendizaje** | Cada sesión registra hallazgos. Los patrones se acumulan en `evolution/pattern-library.md`. Las calibraciones se ajustan con el tiempo. |
| **Control de inflado** | Archivos de aprendizaje solo cuando hay hallazgos no obvios. Límite de 50 archivos con archivado. |
| **Auditoría de etiquetas head** | 40 ítems en 6 categorías (meta, OG, schema, iconos, geo, sociales) con prioridades P0-P3 |
| **Salida estructurada** | Cada comando entrega: puntuación, resumen ejecutivo, hallazgos, plan de acción con estimaciones de esfuerzo |
| **Multiplataforma** | Funciona con Claude Code, Open Code, Cursor, Cline, Aider, Codex CLI, Gemini CLI |

## Por qué SEO Unified Skill es diferente

| Otras herramientas | SEO Unified Skill |
|-------------------|-------------------|
| Puntuación única para todos | **Adaptativa por madurez**: Sitios nuevos no son penalizados por falta de autoridad |
| Ignoran búsqueda IA | **GEO-first** — verifica preparación para citas en ChatGPT, Perplexity, Claude |
| Puntuaciones arbitrarias | **Basada en evidencia**: cada hallazgo cita un criterio EEAT específico |
| Estáticas | **Autoaprendizaje** vía carpeta evolution/ |
| Configuración hinchada | **Configuración cero** — un comando, una URL |
| Cadenas de herramientas complejas | **Nativa de agente** — funciona en cualquier agente, sin instalación |
| Consejos vagos | **Soluciones accionables** con estimación de esfuerzo y código específico |
| Riesgo de alucinación | **Protocolo de verdad** — nunca inventa datos, marca lo desconocido claramente |

## Comandos

### Inicio
| Comando | Qué hace |
|---------|----------|
| `help` | Muestra todos los comandos con ejemplos |
| `auto <url>` | Pipeline completo: 6 fases, subagentes, puntuación compuesta |
| `audit <url>` | Auditoría 3 capas + puntuación EEAT + plan de acción WaaS |
| `head <url>` | Auditoría de 40 etiquetas head (meta, OG, schema, iconos, geo) |

### Contenido
| Comando | Qué hace |
|---------|----------|
| `keywords <tema>` | Palabras clave priorizadas con mapeo de intención |
| `brief <tema>` | Brief editorial listo para redactar + análisis SERP + esquema |
| `content <url>` | Benchmark EEAT completo de 70 criterios + plan de mejora |
| `clusters <tema>` | Mapa de clúster temático + pilar/subtemas + interenlace |
| `fresh <url>` | Auditoría de frescura de contenido (estadísticas, fechas, ejemplos obsoletos) |
| `recover <url>` | Triage de decaimiento de contenido (actualizar / consolidar / redirigir) |

### Técnico
| Comando | Qué hace |
|---------|----------|
| `speed <url>` | Análisis de Core Web Vitals (LCP, CLS, INP) + causas raíz |
| `technical <url>` | Diagnóstico Crawl → Índice → Señales |
| `schema <url>` | Detectar, validar y generar JSON-LD |

### Local
| Comando | Qué hace |
|---------|----------|
| `local <negocio>` | Auditoría de Google Business Profile + NAP + reseñas |
| `napcheck <negocio>` | Consistencia NAP en directorios |
| `links <url>` | Análisis de perfil de backlinks + campaña de link building |
| `gap <negocio>` | Brecha competitiva: qué tienen los top 3 que tú no |
| `serp <keyword>` | Segmento destacado + PAA + targeting de resultados enriquecidos |

### IA / GEO
| Comando | Qué hace |
|---------|----------|
| `geo <url>` | Auditoría de visibilidad en buscadores IA + verificación llms.txt |
| `citecheck <url>` | Verifica si los motores IA citan el sitio |

### Evolución
| Comando | Qué hace |
|---------|----------|
| `memory` | Muestra aprendizajes acumulados y patrones |
| `reset` | Archiva aprendizajes actuales y empieza de nuevo |

## Ejemplo rápido

```bash
auto https://fontanero-dijon.fr
```

La skill:
1. Verificará si los crawlers IA pueden acceder al sitio (robots.txt)
2. Analizará etiquetas head, velocidad, esquema
3. Puntuará el contenido contra 70 criterios EEAT (adaptado a la madurez)
4. Verificará Google Business Profile
5. Comprobará si ChatGPT / Perplexity ya citan este sitio
6. Comparará contra los 3 competidores principales

→ **Informe completo con acciones priorizadas, estimación de esfuerzo y código listo para copiar.**

## Instalación

### Claude Code
```bash
cp -r seo-unified-skill/ /ruta/a/tu/proyecto/
# Luego: "Usa la skill SEO Unified"
```

### Open Code
```bash
# Añadir a tu configuración de skills o copiar al proyecto
# Luego: auto https://tu-sitio.es
```

### Cursor / Cline / Aider / Gemini CLI
```bash
cp -r seo-unified-skill/ /ruta/a/tu/proyecto/
# Referencia SKILL.md en las instrucciones de tu agente
```

### Verificar
```bash
ls seo-unified-skill/
# Debería mostrar: SKILL.md, README.md, references/, scripts/, evolution/
```

Sin dependencias. Sin base de datos. Sin configuración.

## Uso

```bash
# Pipeline completo (recomendado)
auto https://tu-sitio.es

# Comandos específicos
head https://tu-sitio.es       # 40 etiquetas head
speed https://tu-sitio.es      # Core Web Vitals
geo https://tu-sitio.es        # Visibilidad IA
local "Nombre de tu negocio"   # Auditoría GBP
keywords "fontanero madrid"    # Investigación de keywords
brief "electricista barcelona" # Brief de contenido
schema https://tu-sitio.es     # Datos estructurados
```

## Sistema de autoevolución

La skill mejora con el tiempo **sin configuración**:

1. Después de cada comando, los hallazgos se registran en `evolution/learnings/`
2. Los patrones recurrentes se acumulan en `evolution/pattern-library.md`
3. Los ajustes de puntuación se registran en `evolution/calibrations.md`
4. Cuando hay más de 50 archivos, los antiguos se archivan y consolidan
5. Los archivos de aprendizaje solo se escriben cuando hay hallazgos no obvios

Los archivos de referencia NUNCA se modifican automáticamente. El usuario decide las calibraciones.

## Contenido

```
seo-unified-skill/
├── SKILL.md                     Instrucción principal para el agente IA (19 KB)
├── README.md                    Este archivo
├── references/                  Cargado bajo demanda
│   ├── core-eeat-benchmark.md   70 criterios, puntuación adaptativa (22 KB)
│   ├── audit-framework.md       Framework auditoría 3 capas (9 KB)
│   ├── geo-optimization.md      Visibilidad en buscadores IA (11 KB)
│   ├── content-strategy.md      Keywords, briefs, clusters, recuperación (12 KB)
│   ├── head-tags.md             Auditoría 40 etiquetas head (10 KB)
│   ├── auto-pipeline.md         Orquestación pipeline 6 fases (12 KB)
│   ├── technical-seo.md         Diagnóstico técnico 3 capas (7 KB)
│   ├── schema-templates.md      Plantillas JSON-LD (10 KB)
│   ├── local-seo.md             Google Business Profile + NAP (8 KB)
│   ├── link-building.md         Perfil backlinks + link building (8 KB)
│   └── serp-targeting.md        Snippets, PAA, resultados enriquecidos (9 KB)
├── scripts/                     Utilidades PowerShell
│   ├── fetch-url.psn            Obtener y analizar URL
│   ├── psi-audit.ps1            API PageSpeed Insights
│   ├── gen-local-schema.ps1     Generador JSON-LD LocalBusiness
│   ├── gen-llmstxt.ps1          Generador llms.txt
│   └── entity-audit.ps1         Verificador de entidad de marca
├── evolution/                   Sistema de autoaprendizaje
│   ├── pattern-library.md       Patrones recurrentes por tipo de dominio
│   ├── calibrations.md          Ajustes de puntuación
│   ├── quality-gates.md         Verificación de calidad antes de emitir
│   ├── checklists/              Listas de verificación de auditoría
│   └── templates/               Plantillas de registro de sesión
└── scripts/
    └── check-consistency.ps1    Verificador de integridad (6 comprobaciones)
```

## Créditos

Creado por [SurDijon](https://github.com/SurDijon) — Estudio WaaS rank & rent. Cubre 11 dominios de referencia (técnico, contenido, local, GEO, esquema, enlaces, SERP, EEAT, etiquetas head, pipeline) con 5 utilidades PowerShell y un sistema de evolución autoaprendizaje.

---

Si esta skill te ayuda a posicionar sitios: **deja una ⭐ en [github.com/SurDijon/seo-unified-skill](https://github.com/SurDijon/seo-unified-skill)**.
