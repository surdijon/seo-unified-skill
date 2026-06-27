<div align="center">

# SEO Unified Skill

**适用于 WaaS rank & rent 静态网站（Astro/HTML）的 AI 驱动 SEO/GEO/EEAT 统一技能。零配置。自学习。成熟度自适应评分。**

![版本](https://img.shields.io/badge/版本-1.0.0-8B5CF6?style=flat-square)
![许可证](https://img.shields.io/badge/许可证-CC0-8B5CF6?style=flat-square)
![命令](https://img.shields.io/badge/命令-25+-8B5CF6?style=flat-square)
![EEAT 项目](https://img.shields.io/badge/EEAT%20项目-70-8B5CF6?style=flat-square)
![代理](https://img.shields.io/badge/Claude%20Code%20-%20Open%20Code%20-%20Cursor%20-%20Cline%20-%20Aider%20-%20Gemini%20CLI-8B5CF6?style=flat-square)

> 覆盖**传统 SEO** + **生成式引擎优化**（ChatGPT、Perplexity、Claude、Gemini、Google AIO）+ **CORE-EEAT 70 维度内容基准测试**的统一技能。
> 自学习进化系统。每次使用都会变得更好。与任何代理兼容。

</div>

**语言**: [English](README.md) | [Deutsch](README.de.md) | [Español](README.es.md) | [Português](README.pt.md) | [Русский](README.ru.md) | [العربية](README.ar.md) | [日本語](README.ja.md) | [한국어](README.ko.md) | 中文

---

## 功能

一个命令即可**审计和优化静态网站**（Astro、HTML、Hugo、11ty），同时面向 Google 搜索和 AI 驱动的搜索引擎。它检测问题，根据 70 个 EEAT 标准对内容进行评分，检查 AI 引用准备情况，并生成可执行的修复计划 — 全部来自一个 URL。

该技能会适应**网站的成熟度**（新站 / 成长 / 成熟 / 主导），对 2 页本地网站和 100 页权威域名的评分方式不同。

## 主要特点

| 特点 | 含义 |
|------|------|
| **25+ 命令** | `auto` 全流水线，或针对性命令：`head`、`speed`、`schema`、`geo`、`local`、`links`、`keywords`、`brief`、`fresh`、`recover` |
| **6 阶段自动流水线** | Discovery → Content → Local → GEO → Links → 报告。生成子代理，优雅处理错误。 |
| **70 个 EEAT 标准** | 内容、专业度、声誉、原创性、技术 — 成熟度自适应评分 |
| **成熟度检测** | 新站（<6个月/<10页）vs 成长（6-18个月/10-30页）vs 成熟（18个月+/30+页）vs 主导（3年+/100+页）。评分自动调整。 |
| **GEO 优先** | 检查 ChatGPT、Perplexity、Claude、Gemini、Google AIO 的引用准备情况 |
| **否决条件** | 评分前检查 9 个阻止因素（robots.txt 屏蔽、无 HTTPS、人工操作等） |
| **真实协议** | 没有可见证据绝不标记"通过"。绝不猜测反向链接。绝不未经检查就声明架构有效。 |
| **自学习** | 每次会话记录发现。模式积累在 `evolution/pattern-library.md`。校准随时间调整。 |
| **膨胀防护** | 仅在发现非显而易见内容时写入学习文件。50 个文件阈值进行归档/合并。 |
| **头部标签审计** | 6 个类别 40 个项目（meta、OG、schema、图标、geo、社交），P0-P3 优先级 |
| **结构化输出** | 每个命令提供：评分、执行摘要、发现、含工作量估算的行动计划 |
| **跨平台** | 兼容 Claude Code、Open Code、Cursor、Cline、Aider、Codex CLI、Gemini CLI |

## SEO Unified Skill 的不同之处

| 其他工具 | SEO Unified Skill |
|---------|-------------------|
| 统一评分 | **成熟度自适应**：新站不会因缺乏权威信号而受到惩罚 |
| 忽略 AI 搜索 | **GEO 优先** — 检查 ChatGPT、Perplexity、Claude 引用准备 |
| 随意评分 | **基于证据**：每个发现引用特定的 EEAT 标准 |
| 静态 | **自学习** via evolution/ 文件夹 |
| 臃肿配置 | **零配置** — 一个命令，一个 URL |
| 复杂工具链 | **代理原生** — 在任何代理中工作，无需安装 |
| 模糊建议 | **可执行修复** 附带工作量估算和具体代码 |
| 幻觉风险 | **真实协议** — 从不编造数据，清晰标记未知信息 |

## 命令

### 开始
| 命令 | 功能 |
|------|------|
| `help` | 显示所有命令及示例 |
| `auto <url>` | 全流水线：6 阶段、子代理、综合评分 |
| `audit <url>` | 3 层审计 + EEAT 评分 + WaaS 行动计划 |
| `head <url>` | 40 项头部标签审计（meta、OG、schema、图标、geo） |

### 内容
| 命令 | 功能 |
|------|------|
| `keywords <主题>` | 带意图映射的优先关键词 |
| `brief <主题>` | 编辑就绪的内容简报 + SERP 分析 + 大纲 |
| `content <url>` | 完整的 70 标准 EEAT 基准 + 改进计划 |
| `clusters <主题>` | 主题集群图 + 支柱/子主题 + 内部链接 |
| `fresh <url>` | 内容新鲜度审计（过时统计数据、日期、示例） |
| `recover <url>` | 内容衰退分类（更新 / 合并 / 重定向） |

### 技术
| 命令 | 功能 |
|------|------|
| `speed <url>` | Core Web Vitals 分析（LCP、CLS、INP）+ 根本原因 |
| `technical <url>` | 爬取 → 索引 → 信号诊断 |
| `schema <url>` | 检测、验证和生成 JSON-LD |

### 本地
| 命令 | 功能 |
|------|------|
| `local <商家>` | Google Business Profile 审计 + NAP + 评论 |
| `napcheck <商家>` | 跨目录的 NAP 一致性 |
| `links <url>` | 反向链接档案分析 + 链接建设活动 |
| `gap <商家>` | 竞争差距：前三名有你没有的东西 |
| `serp <关键词>` | 精选摘要 + PAA + 丰富结果定位 |

### AI / GEO
| 命令 | 功能 |
|------|------|
| `geo <url>` | AI 搜索引擎可见性审计 + llms.txt 检查 |
| `citecheck <url>` | 检查 AI 引擎是否引用该网站 |

### 进化
| 命令 | 功能 |
|------|------|
| `memory` | 显示累积的会话学习和模式 |
| `reset` | 归档当前学习并重新开始 |

## 快速示例

```bash
auto https://水管工-第戎.fr
```

该技能将：
1. 检查 AI 爬虫是否可以访问网站（robots.txt）
2. 分析头部标签、速度、架构
3. 根据 70 个 EEAT 标准评分内容（适应成熟度）
4. 检查 Google Business Profile
5. 检查 ChatGPT / Perplexity 是否已引用此网站
6. 与前 3 名竞争对手进行比较

→ **完整报告，包含优先级操作、工作量估算和可复制代码。**

## 安装

### Claude Code
```bash
cp -r seo-unified-skill/ /您的项目路径/
# 然后："使用 SEO Unified Skill"
```

### Open Code
```bash
# 添加到技能配置或复制到项目
# 然后：auto https://您的网站.cn
```

### Cursor / Cline / Aider / Gemini CLI
```bash
cp -r seo-unified-skill/ /您的项目路径/
# 在代理指令中引用 SKILL.md
```

### 验证
```bash
ls seo-unified-skill/
# 应显示：SKILL.md, README.md, references/, scripts/, evolution/
```

无依赖。无数据库。无配置。

## 使用方法

```bash
# 全流水线（推荐）
auto https://您的网站.cn

# 针对性命令
head https://您的网站.cn     # 40 个头部标签
speed https://您的网站.cn    # Core Web Vitals
geo https://您的网站.cn      # AI 可见性
local "您的商家名称"         # GBP 审计
keywords "水管工 北京"      # 关键词研究
brief "电工 上海"           # 内容简报
schema https://您的网站.cn   # 结构化数据
```

## 自进化系统

该技能随时间**无需任何设置**即可提升：

1. 每次命令后，发现记录到 `evolution/learnings/`
2. 重复模式积累到 `evolution/pattern-library.md`
3. 评分调整跟踪在 `evolution/calibrations.md`
4. 超过 50 个文件时，旧学习被归档和合并
5. 只有在发现非显而易见内容时才写入学习文件

参考文件永远不会自动修改。校准由用户决定。

## 内容

```
seo-unified-skill/
├── SKILL.md                     AI 代理核心指令（19 KB）
├── README.md                    本文件
├── references/                  按需加载
│   ├── core-eeat-benchmark.md   70 标准，成熟度自适应评分（22 KB）
│   ├── audit-framework.md       3 层审计框架（9 KB）
│   ├── geo-optimization.md      AI 搜索可见性（11 KB）
│   ├── content-strategy.md      关键词、简报、集群、恢复（12 KB）
│   ├── head-tags.md             40 项头部标签审计（10 KB）
│   ├── auto-pipeline.md         6 阶段流水线编排（12 KB）
│   ├── technical-seo.md         3 层技术诊断（7 KB）
│   ├── schema-templates.md      JSON-LD 模板（10 KB）
│   ├── local-seo.md             Google Business Profile + NAP（8 KB）
│   ├── link-building.md         反向链接档案 + 链接建设（8 KB）
│   └── serp-targeting.md        摘要、PAA、丰富结果（9 KB）
├── scripts/                     PowerShell 工具
│   ├── fetch-url.ps1            URL 获取 + 解析
│   ├── psi-audit.ps1            PageSpeed Insights API
│   ├── gen-local-schema.ps1     LocalBusiness JSON-LD 生成器
│   ├── gen-llmstxt.ps1          llms.txt 生成器
│   └── entity-audit.ps1         品牌实体检查器
├── evolution/                   自学习系统
│   ├── pattern-library.md       按域名类型的重复模式
│   ├── calibrations.md          评分调整
│   ├── quality-gates.md         输出前质量检查
│   ├── checklists/              审计清单
│   └── templates/               会话日志模板
└── scripts/
    └── check-consistency.ps1    技能完整性检查器（6 项检查）
```

## 致谢

由 [SurDijon](https://github.com/SurDijon) — WaaS rank & rent 工作室构建。覆盖 11 个参考领域（技术、内容、本地、GEO、架构、链接、SERP、EEAT、头部标签、流水线），包含 5 个 PowerShell 工具和自学习进化系统。

---

如果这个技能帮助您提升网站排名：请在 **[github.com/SurDijon/seo-unified-skill](https://github.com/SurDijon/seo-unified-skill) 留下 ⭐**。
