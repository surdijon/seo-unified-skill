# SEO·GEO·EEAT-CORE

> Skill de IA completa para auditar e impulsionar seus sites estáticos (Astro/HTML) para o topo do Google e das IAs generativas. Zero configuração. Zero dependências.

## Em um comando

\`\`\`bash
auto https://seu-site.com.br
\`\`\`

O skill executa 5 fases de diagnóstico:
1. **Discovery** — busca a página, tags head, técnica, velocidade
2. **Content** — pontuação EEAT com 70 critérios, palavras-chave, brief
3. **Local** — Google Business Profile, NAP, avaliações
4. **GEO** — visibilidade no ChatGPT, Perplexity, Claude
5. **Links** — backlinks, lacunas competitivas

Resultado: relatório com prioridades, tempo estimado e código para copiar e colar.

## Todos os comandos

### Iniciar
| Comando | O que faz |
|---------|-----------|
| \`help\` | Lista todos os comandos |
| \`auto <url>\` | Pipeline completo (tudo em um) |
| \`audit <url>\` | Auditoria 3 camadas + pontuação EEAT |
| \`head <url>\` | Verifica 40 tags head |

### Conteúdo
| Comando | O que faz |
|---------|-----------|
| \`keywords <topic>\` | Palavras-chave com intenção de busca |
| \`brief <topic>\` | Brief editorial pronto para produção |
| \`content <url>\` | Pontuação EEAT completa (70 critérios) |
| \`clusters <topic>\` | Plano de cluster temático |
| \`fresh <url>\` | Verifica se o conteúdo está atualizado |
| \`recover <url>\` | Recupera artigo que está perdendo tráfego |

### Técnico
| Comando | O que faz |
|---------|-----------|
| \`speed <url>\` | Análise de velocidade (LCP, CLS, INP) |
| \`technical <url>\` | Crawl, indexação, sinais |
| \`schema <url>\` | Detecta e gera os JSON-LD |

### Local
| Comando | O que faz |
|---------|-----------|
| \`local <business>\` | Auditoria Google Business Profile + avaliações |
| \`napcheck <business>\` | Verifica nome/endereço/telefone em 5 diretórios |
| \`links <url>\` | Análise de backlinks |
| \`gap <business>\` | Lacunas em relação ao top 3 concorrentes |
| \`serp <keyword>\` | Estratégia de snippets + AI Overviews |

### IA
| Comando | O que faz |
|---------|-----------|
| \`geo <url>\` | Visibilidade nas IAs generativas |
| \`citecheck <url>\` | Verifica se as IAs citam o site |

## Exemplo prático

\`\`\`bash
auto https://encanador-dijon.fr
\`\`\`

O skill vai:
1. Verificar se as IAs podem rastrear o site (robots.txt)
2. Analisar as tags head, velocidade, schema
3. Pontuar o conteúdo em 70 critérios (se adapta se o site é novo)
4. Verificar a ficha do Google Business Profile
5. Verificar se o ChatGPT já cita o site
6. Comparar com os 3 principais concorrentes

→ **Relatório completo com ações classificadas por prioridade e tempo estimado.**

## Arquitetura

\`\`\`
SEO-GEO-EEATCORE/
├── SKILL.md                 ← Ponto de entrada (sempre carregado)
├── README.md                ← Este arquivo
├── references/              ← Referências (carregadas sob demanda)
│   ├── core-eeat-benchmark.md    70 critérios de pontuação
│   ├── audit-framework.md        Auditoria 3 camadas
│   ├── geo-optimization.md       Visibilidade IA
│   ├── content-strategy.md       Palavras-chave, briefs
│   ├── head-tags.md              40 tags head
│   ├── technical-seo.md          Técnico + velocidade
│   ├── auto-pipeline.md          Pipeline automatizado
│   ├── schema-templates.md       Templates JSON-LD
│   ├── local-seo.md              SEO local
│   ├── link-building.md          Link building
│   └── serp-targeting.md         Recursos SERP
├── scripts/                ← Utilitários PowerShell
│   ├── fetch-url.ps1             Analisa uma URL
│   ├── psi-audit.ps1             PageSpeed Insights
│   ├── gen-local-schema.ps1      Gera schema LocalBusiness
│   ├── gen-llmstxt.ps1           Gera llms.txt
│   └── entity-audit.ps1          Verifica a entidade da marca
├── evolution/              ← Aprendizado contínuo
│   ├── pattern-library.md        Padrões recorrentes
│   ├── calibrations.md           Ajustes de pontuação
│   ├── quality-gates.md          Controles de qualidade
│   ├── checklists/               Listas de verificação
│   └── templates/                Templates de sessão
└── scripts/
    └── check-consistency.ps1     Verifica a integridade do skill
\`\`\`

## O que o torna único

| Outras ferramentas | Este skill |
|-------------------|------------|
| Notas arbitrárias | Cada nota justificada por um critério preciso |
| Ignoram as IAs | Verifica ChatGPT, Perplexity, Claude |
| Perfeito para todos os sites | Se adapta à maturidade (novo → estabelecido) |
| Sem acompanhamento | Aprendizado contínuo via evolution/ |
| Configuração complexa | Zero config, um comando basta |

## Pré-requisitos

- Um agente de IA (Claude Code, open-code, Cursor, Cline, Aider, Codex CLI, Gemini CLI)
- Um site estático (Astro, HTML, Hugo, 11ty, etc.)
- (Opcional) Google Search Console para dados de tráfego

## Instalação

\`\`\`bash
# 1. Copiar a pasta para seu projeto
cp -r SEO-GEO-EEATCORE/ seu-projeto/

# 2. Dizer à IA para usar o skill
# → "Use o skill SEO-GEO-EEATCORE"

# 3. Executar a primeira análise
# → auto https://seu-site.com.br
\`\`\`

Sem dependências, sem banco de dados, sem configuração.

## Traduções

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

**CC0** — Domínio público. Faça o que quiser.
