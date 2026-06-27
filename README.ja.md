<div align="center">

# SEO Unified Skill

**WaaS rank & rent 静的サイト（Astro/HTML）向け AI 搭載 SEO/GEO/EEAT 統合スキル。設定不要。自己学習。成熟度適応スコアリング。**

![バージョン](https://img.shields.io/badge/バージョン-1.0.0-8B5CF6?style=flat-square)
![ライセンス](https://img.shields.io/badge/ライセンス-CC0-8B5CF6?style=flat-square)
![コマンド](https://img.shields.io/badge/コマンド-25+-8B5CF6?style=flat-square)
![EEAT項目](https://img.shields.io/badge/EEAT%20項目-70-8B5CF6?style=flat-square)
![エージェント](https://img.shields.io/badge/Claude%20Code%20-%20Open%20Code%20-%20Cursor%20-%20Cline%20-%20Aider%20-%20Gemini%20CLI-8B5CF6?style=flat-square)

> **従来のSEO** + **Generative Engine Optimization**（ChatGPT、Perplexity、Claude、Gemini、Google AIO）+ **CORE-EEAT 70次元コンテンツベンチマーク**をカバーする統合スキル。
> 自己学習型進化システム。使用するたびに向上。あらゆるエージェントと互換性あり。

</div>

**言語**: [English](README.md) | [Deutsch](README.de.md) | [Español](README.es.md) | [Português](README.pt.md) | [Русский](README.ru.md) | [العربية](README.ar.md) | 日本語 | [한국어](README.ko.md) | [中文](README.zh.md)

---

## 概要

1つのコマンドで**静的サイト（Astro、HTML、Hugo、11ty）を監査・最適化**し、Google検索とAI搭載検索エンジンの両方に対応します。問題を検出し、70のEEAT基準でコンテンツをスコアリングし、AI引用の準備状態を確認し、実行可能な修正計画を生成します — すべて1つのURLから。

スキルは**サイトの成熟度**（新規 / 成長 / 確立 / 支配的）に適応し、2ページのローカルサイトと100ページの権威ドメインを異なる方法で評価します。

## 主な機能

| 機能 | 意味 |
|------|------|
| **25以上のコマンド** | `auto`で完全パイプライン、または個別に: `head`, `speed`, `schema`, `geo`, `local`, `links`, `keywords`, `brief`, `fresh`, `recover` |
| **6フェーズ自動パイプライン** | Discovery → Content → Local → GEO → Links → レポート。サブエージェントを起動し、エラーを適切に処理。 |
| **70のEEAT基準** | コンテンツ、専門性、評判、オリジナリティ、技術 — 成熟度適応スコアリング |
| **成熟度検出** | 新規（6ヶ月未満/10ページ未満） vs 成長（6-18ヶ月/10-30ページ） vs 確立（18ヶ月以上/30ページ以上） vs 支配的（3年以上/100ページ以上）。スコアが自動調整。 |
| **GEOファースト** | ChatGPT、Perplexity、Claude、Gemini、Google AIOでの引用準備状態を確認 |
| **拒否条件** | スコアリング前に9つのブロッカーをチェック（robots.txtブロック、HTTPSなし、手動対策など） |
| **真実プロトコル** | 目に見える証拠なしに「合格」と判定しない。バックリンクを推測しない。確認なしにスキーマを有効と宣言しない。 |
| **自己学習** | 各セッションで発見事項を記録。パターンは `evolution/pattern-library.md` に蓄積。キャリブレーションは時間とともに調整。 |
| **肥大化防止** | 明白でない発見があった場合のみ学習ファイルを作成。50ファイルでアーカイブ/統合。 |
| **ヘッドタグ監査** | 6カテゴリ40項目（meta、OG、schema、アイコン、geo、ソーシャル）をP0-P3優先度で評価 |
| **構造化出力** | 各コマンドが提供: スコア、エグゼクティブサマリー、発見事項、工数見積もり付きアクションプラン |
| **クロスプラットフォーム** | Claude Code、Open Code、Cursor、Cline、Aider、Codex CLI、Gemini CLIで動作 |

## SEO Unified Skillの違い

| 他のツール | SEO Unified Skill |
|-----------|-------------------|
| 一律のスコアリング | **成熟度適応**: 新しいサイトは権威シグナル不足でペナルティを受けない |
| AI検索を無視 | **GEOファースト** — ChatGPT、Perplexity、Claudeの引用準備を確認 |
| 恣意的な評価 | **エビデンスベース**: 各発見は特定のEEAT基準を引用 |
| 静的 | **自己学習** via evolution/フォルダ |
| 膨大な設定 | **設定不要** — 1コマンド、1URL |
| 複雑なツールチェーン | **エージェントネイティブ** — どんなエージェントでも動作、インストール不要 |
| 漠然としたアドバイス | **実行可能な修正** 工数見積もりと具体的なコード付き |
| 幻覚リスク | **真実プロトコル** — データを捏造せず、不明を明確にマーク |

## コマンド

### 開始
| コマンド | 機能 |
|---------|------|
| `help` | 全コマンドを例付きで表示 |
| `auto <url>` | 完全パイプライン: 6フェーズ、サブエージェント、複合スコア |
| `audit <url>` | 3層監査 + EEATスコアリング + WaaSアクションプラン |
| `head <url>` | 40項目ヘッドタグ監査（meta、OG、schema、アイコン、geo） |

### コンテンツ
| コマンド | 機能 |
|---------|------|
| `keywords <トピック>` | 意図マッピング付き優先キーワード |
| `brief <トピック>` | 編集者準備完了のコンテンツブリーフ + SERP分析 + アウトライン |
| `content <url>` | 完全な70基準EEATベンチマーク + 改善計画 |
| `clusters <トピック>` | トピッククラスターマップ + ピラー/サブトピック + 内部リンク |
| `fresh <url>` | コンテンツ鮮度監査（古い統計、日付、例） |
| `recover <url>` | コンテンツ劣化トリアージ（更新/統合/リダイレクト） |

### 技術
| コマンド | 機能 |
|---------|------|
| `speed <url>` | Core Web Vitals分析（LCP、CLS、INP）+ 根本原因 |
| `technical <url>` | クロール → インデックス → シグナル診断 |
| `schema <url>` | JSON-LDの検出、検証、生成 |

### ローカル
| コマンド | 機能 |
|---------|------|
| `local <ビジネス>` | Google Business Profile監査 + NAP + レビュー |
| `napcheck <ビジネス>` | ディレクトリ間のNAP一貫性 |
| `links <url>` | バックリンクプロファイル分析 + リンクビルディングキャンペーン |
| `gap <ビジネス>` | 競合ギャップ: トップ3が持っていてあなたにないもの |
| `serp <キーワード>` | 注目スニペット + PAA + リッチリザルトターゲティング |

### AI / GEO
| コマンド | 機能 |
|---------|------|
| `geo <url>` | AI検索エンジン可視性監査 + llms.txt確認 |
| `citecheck <url>` | AIエンジンがサイトを引用しているか確認 |

### 進化
| コマンド | 機能 |
|---------|------|
| `memory` | 蓄積されたセッション学習とパターンを表示 |
| `reset` | 現在の学習をアーカイブして新規開始 |

## クイック例

```bash
auto https://配管工-ディジョン.fr
```

スキルは:
1. AIクローラーがサイトにアクセスできるか確認（robots.txt）
2. ヘッドタグ、速度、スキーマを分析
3. 70のEEAT基準でコンテンツを評価（成熟度に適応）
4. Google Business Profileを確認
5. ChatGPT / Perplexityがこのサイトを既に引用しているか確認
6. 上位3競合と比較

→ **優先順位付けされたアクション、工数見積もり、コピー可能なコード付き完全レポート。**

## インストール

### Claude Code
```bash
cp -r seo-unified-skill/ /プロジェクトへのパス/
# その後: 「SEO Unified Skillを使って」
```

### Open Code
```bash
# スキル設定に追加するか、プロジェクトにコピー
# その後: auto https://あなたのサイト.jp
```

### Cursor / Cline / Aider / Gemini CLI
```bash
cp -r seo-unified-skill/ /プロジェクトへのパス/
# エージェントの指示でSKILL.mdを参照
```

### 確認
```bash
ls seo-unified-skill/
# 表示されるもの: SKILL.md, README.md, references/, scripts/, evolution/
```

依存関係なし。データベースなし。設定なし。

## 使用法

```bash
# 完全パイプライン（推奨）
auto https://あなたのサイト.jp

# 個別コマンド
head https://あなたのサイト.jp    # 40ヘッドタグ
speed https://あなたのサイト.jp   # Core Web Vitals
geo https://あなたのサイト.jp     # AI可視性
local "ビジネス名"               # GBP監査
keywords "配管工 東京"           # キーワード調査
brief "電気技師 大阪"            # コンテンツブリーフ
schema https://あなたのサイト.jp  # 構造化データ
```

## 自己進化システム

スキルは時間とともに**設定なしで**向上します:

1. 各コマンド後、発見事項が `evolution/learnings/` に記録される
2. 繰り返しパターンが `evolution/pattern-library.md` に蓄積される
3. スコアリング調整が `evolution/calibrations.md` で追跡される
4. 50ファイルを超えると、古い学習はアーカイブされ統合される
5. 学習ファイルは明白でない発見があった場合のみ作成される

参照ファイルは自動的に変更されることはありません。キャリブレーションはユーザーが決定します。

## 内容

```
seo-unified-skill/
├── SKILL.md                     AIエージェントのコア指示（19 KB）
├── README.md                    このファイル
├── references/                  オンデマンドで読み込み
│   ├── core-eeat-benchmark.md   70基準、成熟度適応スコアリング（22 KB）
│   ├── audit-framework.md       3層監査フレームワーク（9 KB）
│   ├── geo-optimization.md      AI検索可視性（11 KB）
│   ├── content-strategy.md      キーワード、ブリーフ、クラスター、復旧（12 KB）
│   ├── head-tags.md             40項目ヘッドタグ監査（10 KB）
│   ├── auto-pipeline.md         6フェーズパイプラインオーケストレーション（12 KB）
│   ├── technical-seo.md         3層技術診断（7 KB）
│   ├── schema-templates.md      JSON-LDテンプレート（10 KB）
│   ├── local-seo.md             Google Business Profile + NAP（8 KB）
│   ├── link-building.md         バックリンクプロファイル + リンクビルディング（8 KB）
│   └── serp-targeting.md        スニペット、PAA、リッチリザルト（9 KB）
├── scripts/                     PowerShellユーティリティ
│   ├── fetch-url.ps1            URL取得 + 解析
│   ├── psi-audit.ps1            PageSpeed Insights API
│   ├── gen-local-schema.ps1     LocalBusiness JSON-LD生成
│   ├── gen-llmstxt.ps1          llms.txt生成
│   └── entity-audit.ps1         ブランドエンティティチェッカー
├── evolution/                   自己学習システム
│   ├── pattern-library.md       ドメインタイプ別パターン
│   ├── calibrations.md          スコアリング調整
│   ├── quality-gates.md         出力前品質確認
│   ├── checklists/              監査チェックリスト
│   └── templates/               セッションログテンプレート
└── scripts/
    └── check-consistency.ps1    スキル整合性チェッカー（6チェック）
```

## クレジット

[SurDijon](https://github.com/SurDijon) — WaaS rank & rent スタジオ。11の参照ドメイン（技術、コンテンツ、ローカル、GEO、スキーマ、リンク、SERP、EEAT、ヘッドタグ、パイプライン）を5つのPowerShellユーティリティと自己学習進化システムでカバー。

---

このスキルがサイトのランク向上に役立つなら: **[github.com/SurDijon/seo-unified-skill](https://github.com/SurDijon/seo-unified-skill) で ⭐ をお願いします**。
