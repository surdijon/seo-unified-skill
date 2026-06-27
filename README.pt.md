<div align="center">

# SEO Unified Skill

**Skill unificada de SEO/GEO/EEAT com IA para sites estáticos WaaS rank & rent (Astro/HTML). Configuração zero. Autoaprendizado. Pontuação adaptativa por maturidade.**

![Versão](https://img.shields.io/badge/versão-1.0.0-8B5CF6?style=flat-square)
![Licença](https://img.shields.io/badge/licença-CC0-8B5CF6?style=flat-square)
![Comandos](https://img.shields.io/badge/comandos-25+-8B5CF6?style=flat-square)
![Itens EEAT](https://img.shields.io/badge/EEAT%20itens-70-8B5CF6?style=flat-square)
![Agentes](https://img.shields.io/badge/Claude%20Code%20-%20Open%20Code%20-%20Cursor%20-%20Cline%20-%20Aider%20-%20Gemini%20CLI-8B5CF6?style=flat-square)

> Skill completa que cobre **SEO tradicional** + **Generative Engine Optimization** (ChatGPT, Perplexity, Claude, Gemini, Google AIO) + **CORE-EEAT 70 dimensões de avaliação de conteúdo**.
> Sistema de evolução com autoaprendizado. Melhora a cada uso. Compatível com qualquer agente.

</div>

**Idioma**: [English](README.md) | [Deutsch](README.de.md) | [Español](README.es.md) | Português | [Русский](README.ru.md) | [العربية](README.ar.md) | [日本語](README.ja.md) | [한국어](README.ko.md) | [中文](README.zh.md)

---

## O que faz

Um único comando **audita e otimiza sites estáticos** (Astro, HTML, Hugo, 11ty) tanto para o Google quanto para motores de busca com IA. Detecta problemas, pontua conteúdo contra 70 critérios EEAT, verifica prontidão para citação em IA e gera um plano de ação — tudo a partir de uma URL.

A skill se adapta à **maturidade do site** (Novo / Crescendo / Estabelecido / Dominante), pontuando de forma diferente um site local de 2 páginas vs um domínio de autoridade de 100 páginas.

## Principais recursos

| Recurso | O que significa |
|---------|-----------------|
| **25+ comandos** | `auto` para pipeline completo, ou direcionados: `head`, `speed`, `schema`, `geo`, `local`, `links`, `keywords`, `brief`, `fresh`, `recover` |
| **Pipeline auto de 6 fases** | Discovery → Content → Local → GEO → Links → Relatório. Dispara subagentes, lida com falhas corretamente. |
| **70 critérios EEAT** | Conteúdo, Expertise, Reputação, Originalidade, Técnico — pontuação adaptativa por maturidade |
| **Detecção de maturidade** | Novo (<6m/10p) vs Crescendo (6-18m/10-30p) vs Estabelecido (18m+/30+p) vs Dominante (3a+/100+p). Pontuação ajusta automaticamente. |
| **GEO-first** | Verifica prontidão para citação em ChatGPT, Perplexity, Claude, Gemini, Google AIO |
| **Condições de veto** | 9 bloqueadores verificados antes de pontuar (robots.txt bloqueando, sem HTTPS, ação manual, etc.) |
| **Protocolo de verdade** | Nunca marca "Aprovado" sem evidência visível. Nunca adivinha backlinks. Nunca declara esquema válido sem verificar. |
| **Autoaprendizado** | Cada sessão registra descobertas. Padrões se acumulam em `evolution/pattern-library.md`. Calibrações se ajustam com o tempo. |
| **Controle de inchaço** | Arquivos de aprendizado apenas quando há descobertas não óbvias. Limite de 50 arquivos com arquivamento. |
| **Auditoria de tags head** | 40 itens em 6 categorias (meta, OG, schema, ícones, geo, sociais) com prioridades P0-P3 |
| **Saída estruturada** | Cada comando entrega: pontuação, resumo executivo, descobertas, plano de ação com estimativas de esforço |
| **Multiplataforma** | Funciona com Claude Code, Open Code, Cursor, Cline, Aider, Codex CLI, Gemini CLI |

## Por que SEO Unified Skill é diferente

| Outras ferramentas | SEO Unified Skill |
|-------------------|-------------------|
| Pontuação única para todos | **Adaptativa por maturidade**: Sites novos não são penalizados por falta de autoridade |
| Ignoram busca IA | **GEO-first** — verifica prontidão para citação em ChatGPT, Perplexity, Claude |
| Pontuações arbitrárias | **Baseada em evidência**: cada descoberta cita um critério EEAT específico |
| Estáticas | **Autoaprendizado** via pasta evolution/ |
| Configuração inchada | **Configuração zero** — um comando, uma URL |
| Cadeias de ferramentas complexas | **Nativa de agente** — funciona em qualquer agente, sem instalação |
| Conselhos vagos | **Soluções acionáveis** com estimativa de esforço e código específico |
| Risco de alucinação | **Protocolo de verdade** — nunca inventa dados, marca desconhecido claramente |

## Comandos

### Início
| Comando | O que faz |
|---------|-----------|
| `help` | Mostra todos os comandos com exemplos |
| `auto <url>` | Pipeline completo: 6 fases, subagentes, pontuação composta |
| `audit <url>` | Auditoria 3 camadas + pontuação EEAT + plano de ação WaaS |
| `head <url>` | Auditoria de 40 tags head (meta, OG, schema, ícones, geo) |

### Conteúdo
| Comando | O que faz |
|---------|-----------|
| `keywords <tema>` | Palavras-chave priorizadas com mapeamento de intenção |
| `brief <tema>` | Brief editorial pronto para redigir + análise SERP + esboço |
| `content <url>` | Benchmark EEAT completo de 70 critérios + plano de melhoria |
| `clusters <tema>` | Mapa de cluster temático + pilar/subtemas + interligação |
| `fresh <url>` | Auditoria de frescor do conteúdo (estatísticas, datas, exemplos desatualizados) |
| `recover <url>` | Triagem de decadência de conteúdo (atualizar / consolidar / redirecionar) |

### Técnico
| Comando | O que faz |
|---------|-----------|
| `speed <url>` | Análise de Core Web Vitals (LCP, CLS, INP) + causas raiz |
| `technical <url>` | Diagnóstico Crawl → Índice → Sinais |
| `schema <url>` | Detectar, validar e gerar JSON-LD |

### Local
| Comando | O que faz |
|---------|-----------|
| `local <negócio>` | Auditoria de Google Business Profile + NAP + avaliações |
| `napcheck <negócio>` | Consistência NAP em diretórios |
| `links <url>` | Análise de perfil de backlinks + campanha de link building |
| `gap <negócio>` | Lacuna competitiva: o que os top 3 têm que você não tem |
| `serp <palavra-chave>` | Snippet em destaque + PAA + segmentação de resultados ricos |

### IA / GEO
| Comando | O que faz |
|---------|-----------|
| `geo <url>` | Auditoria de visibilidade em buscadores IA + verificação llms.txt |
| `citecheck <url>` | Verifica se os motores IA citam o site |

### Evolução
| Comando | O que faz |
|---------|-----------|
| `memory` | Mostra aprendizados acumulados e padrões |
| `reset` | Arquiva aprendizados atuais e começa de novo |

## Exemplo rápido

```bash
auto https://encanador-dijon.fr
```

A skill:
1. Verificará se os crawlers IA podem acessar o site (robots.txt)
2. Analisará tags head, velocidade, esquema
3. Pontuará o conteúdo contra 70 critérios EEAT (adaptado à maturidade)
4. Verificará Google Business Profile
5. Verificará se ChatGPT / Perplexity já citam este site
6. Comparará contra os 3 principais concorrentes

→ **Relatório completo com ações priorizadas, estimativa de esforço e código pronto para copiar.**

## Instalação

### Claude Code
```bash
cp -r seo-unified-skill/ /caminho/para/seu/projeto/
# Depois: "Use a skill SEO Unified"
```

### Open Code
```bash
# Adicionar à configuração de skills ou copiar para o projeto
# Depois: auto https://seu-site.pt
```

### Cursor / Cline / Aider / Gemini CLI
```bash
cp -r seo-unified-skill/ /caminho/para/seu/projeto/
# Referencie SKILL.md nas instruções do seu agente
```

### Verificar
```bash
ls seo-unified-skill/
# Deve mostrar: SKILL.md, README.md, references/, scripts/, evolution/
```

Sem dependências. Sem banco de dados. Sem configuração.

## Uso

```bash
# Pipeline completo (recomendado)
auto https://seu-site.pt

# Comandos direcionados
head https://seu-site.pt      # 40 tags head
speed https://seu-site.pt     # Core Web Vitals
geo https://seu-site.pt       # Visibilidade IA
local "Nome do seu negócio"   # Auditoria GBP
keywords "encanador lisboa"   # Pesquisa de palavras-chave
brief "eletricista porto"     # Brief de conteúdo
schema https://seu-site.pt    # Dados estruturados
```

## Sistema de autoevolução

A skill melhora com o tempo **sem configuração**:

1. Após cada comando, as descobertas são registradas em `evolution/learnings/`
2. Padrões recorrentes se acumulam em `evolution/pattern-library.md`
3. Ajustes de pontuação são registrados em `evolution/calibrations.md`
4. Quando há mais de 50 arquivos, os antigos são arquivados e consolidados
5. Arquivos de aprendizado são escritos apenas quando há descobertas não óbvias

Os arquivos de referência NUNCA são modificados automaticamente. O usuário decide as calibrações.

## Conteúdo

```
seo-unified-skill/
├── SKILL.md                     Instrução principal para o agente IA (19 KB)
├── README.md                    Este arquivo
├── references/                  Carregado sob demanda
│   ├── core-eeat-benchmark.md   70 critérios, pontuação adaptativa (22 KB)
│   ├── audit-framework.md       Framework auditoria 3 camadas (9 KB)
│   ├── geo-optimization.md      Visibilidade em buscadores IA (11 KB)
│   ├── content-strategy.md      Keywords, briefs, clusters, recuperação (12 KB)
│   ├── head-tags.md             Auditoria 40 tags head (10 KB)
│   ├── auto-pipeline.md         Orquestração pipeline 6 fases (12 KB)
│   ├── technical-seo.md         Diagnóstico técnico 3 camadas (7 KB)
│   ├── schema-templates.md      Modelos JSON-LD (10 KB)
│   ├── local-seo.md             Google Business Profile + NAP (8 KB)
│   ├── link-building.md         Perfil backlinks + link building (8 KB)
│   └── serp-targeting.md        Snippets, PAA, resultados ricos (9 KB)
├── scripts/                     Utilitários PowerShell
│   ├── fetch-url.ps1            Obter e analisar URL
│   ├── psi-audit.ps1            API PageSpeed Insights
│   ├── gen-local-schema.ps1     Gerador JSON-LD LocalBusiness
│   ├── gen-llmstxt.ps1          Gerador llms.txt
│   └── entity-audit.ps1         Verificador de entidade de marca
├── evolution/                   Sistema de autoaprendizado
│   ├── pattern-library.md       Padrões recorrentes por tipo de domínio
│   ├── calibrations.md          Ajustes de pontuação
│   ├── quality-gates.md         Verificação de qualidade antes da saída
│   ├── checklists/              Listas de verificação de auditoria
│   └── templates/               Modelos de registro de sessão
└── scripts/
    └── check-consistency.ps1    Verificador de integridade (6 verificações)
```

## Créditos

Criado por [SurDijon](https://github.com/SurDijon) — Estúdio WaaS rank & rent. Cobre 11 domínios de referência (técnico, conteúdo, local, GEO, esquema, links, SERP, EEAT, tags head, pipeline) com 5 utilitários PowerShell e um sistema de evolução com autoaprendizado.

---

Se esta skill ajuda você a rankear sites: **deixe uma ⭐ em [github.com/SurDijon/seo-unified-skill](https://github.com/SurDijon/seo-unified-skill)**.
