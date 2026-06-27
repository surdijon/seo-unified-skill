# SEO·GEO·EEAT-CORE

> 一体化 AI 技能：Audit 并助推您的静态站点（Astro/HTML）登上 Google 与生成式 AI 榜首。零配置。零依赖。

## 一条命令搞定

```bash
auto https://votre-site.fr
```

该技能启动 5 个诊断阶段：
1. **Discovery** — 抓取页面、head 标签、技术指标、速度
2. **Content** — 70 项 EEAT 评分、关键词、Brief
3. **Local** — Google Business Profile、NAP、评价
4. **GEO** — 在 ChatGPT、Perplexity、Claude 中的可见度
5. **Links** — 外链、竞品差距分析

结果：一份包含优先级、预估时间和可直接复制代码的报告。

## 全部命令

### 入门
| 命令 | 功能 |
|------|------|
| `help` | 列出所有命令 |
| `auto <url>` | 完整流水线（一站式） |
| `audit <url>` | 三层审计 + EEAT 评分 |
| `head <url>` | 检查 40 项 head 标签 |

### 内容
| 命令 | 功能 |
|------|------|
| `keywords <topic>` | 关键词 + 搜索意图 |
| `brief <topic>` | 可交付写手的编辑 Brief |
| `content <url>` | 完整 EEAT 评分（70 项标准） |
| `clusters <topic>` | 主题聚类方案 |
| `fresh <url>` | 检查内容时效性 |
| `recover <url>` | 挽救流量下滑的文章 |

### 技术
| 命令 | 功能 |
|------|------|
| `speed <url>` | 速度分析（LCP、CLS、INP） |
| `technical <url>` | 爬取、索引、信号分析 |
| `schema <url>` | 检测并生成 JSON-LD |

### 本地
| 命令 | 功能 |
|------|------|
| `local <business>` | Google Business Profile + 评价审计 |
| `napcheck <business>` | 在 5 个目录中验证名称/地址/电话 |
| `links <url>` | 外链分析 |
| `gap <business>` | 与前 3 名竞品的差距分析 |
| `serp <keyword>` | Snippet 策略 + AI Overviews |

### AI
| 命令 | 功能 |
|------|------|
| `geo <url>` | 在生成式 AI 中的可见度 |
| `citecheck <url>` | 检查 AI 是否引用该网站 |

## 实际示例

```bash
auto https://plombier-dijon.fr
```

该技能将：
1. 确认 AI 能否抓取网站（robots.txt）
2. 分析 head 标签、速度、Schema
3. 对内容进行 70 项评分（根据网站成熟度自适应）
4. 验证 Google Business Profile
5. 检查 ChatGPT 是否已引用该网站
6. 与 3 个主要竞争对手对比

→ **完整报告，按优先级和预估时间排序。**

## 架构

```
SEO-GEO-EEATCORE/
├── SKILL.md                 ← 入口（始终加载）
├── README.md                ← 本文件
├── references/              ← 参考资料（按需加载）
│   ├── core-eeat-benchmark.md    70 项评分标准
│   ├── audit-framework.md        三层审计框架
│   ├── geo-optimization.md       AI 可见度优化
│   ├── content-strategy.md       关键词与 Brief
│   ├── head-tags.md              40 项 head 标签
│   ├── technical-seo.md          技术 SEO + 速度
│   ├── auto-pipeline.md          自动化流水线
│   ├── schema-templates.md       JSON-LD 模板
│   ├── local-seo.md              本地 SEO
│   ├── link-building.md          外链建设
│   └── serp-targeting.md         SERP 特性
├── scripts/                ← PowerShell 实用工具
│   ├── fetch-url.ps1             分析 URL
│   ├── psi-audit.ps1             PageSpeed Insights
│   ├── gen-local-schema.ps1      生成 LocalBusiness Schema
│   ├── gen-llmstxt.ps1           生成 llms.txt
│   └── entity-audit.ps1          验证品牌实体
├── evolution/              ← 持续学习
│   ├── pattern-library.md        常见模式库
│   ├── calibrations.md           评分校准
│   ├── quality-gates.md          质量门禁
│   ├── checklists/               检查清单
│   └── templates/                会话模板
└── scripts/
    └── check-consistency.ps1     验证技能完整性
```

## 独特优势

| 其他工具 | 本技能 |
|----------|--------|
| 评分随意 | 每条评分基于明确标准 |
| 忽略 AI | 验证 ChatGPT、Perplexity、Claude |
| 一刀切 | 按网站成熟度自适应（新站 → 老站） |
| 无后续跟进 | 通过 evolution/ 持续学习 |
| 配置复杂 | 零配置，一条命令足矣 |

## 前置要求

- AI 代理（Claude Code、open-code、Cursor、Cline、Aider、Codex CLI、Gemini CLI）
- 静态网站（Astro、HTML、Hugo、11ty 等）
- （可选）Google Search Console 以获取流量数据

## 安装

```bash
# 1. 将文件夹复制到您的项目
cp -r SEO-GEO-EEATCORE/ votre-projet/

# 2. 告知 AI 使用该技能
# → "使用 SEO-GEO-EEATCORE 技能"

# 3. 启动首次分析
# → auto https://votre-site.fr
```

无依赖、无数据库、无配置。

## 翻译

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

**CC0** — 公有领域。随意使用。
