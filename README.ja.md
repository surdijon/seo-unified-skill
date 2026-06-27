# SEO·GEO·EEAT-CORE

> 静的サイト（Astro/HTML）をGoogleや生成AIの検索結果で上位に表示するための、オールインワンのAIスキルです。設定は不要、依存関係もありません。

## たった1つのコマンド

```bash
auto https://votre-site.fr
```

スキルが5つの診断フェーズを実行します：
1. **Discovery** — ページの取得、headタグ、技術面、速度
2. **Content** — EEATスコア（70基準）、キーワード、ブリーフ
3. **Local** — Google Business Profile、NAP、レビュー
4. **GEO** — ChatGPT、Perplexity、Claudeでの表示状況
5. **Links** — 被リンク、競合との差

結果：優先順位、推定時間、コピー＆ペースト可能なコードを含むレポートが出力されます。

## 全コマンド一覧

### スタート
| コマンド | 説明 |
|----------|------|
| `help` | 全コマンドを表示します |
| `auto <url>` | 完全パイプライン（オールインワン） |
| `audit <url>` | 3層監査 + EEATスコア |
| `head <url>` | 40個のheadタグをチェックします |

### コンテンツ
| コマンド | 説明 |
|----------|------|
| `keywords <topic>` | 検索意図を含むキーワードを提案します |
| `brief <topic>` | 編集者向けブリーフ（すぐに執筆可能） |
| `content <url>` | 完全なEEATスコア（70基準） |
| `clusters <topic>` | テーマ別クラスタープラン |
| `fresh <url>` | コンテンツの鮮度を確認します |
| `recover <url>` | トラフィックが減少している記事を改善します |

### 技術面
| コマンド | 説明 |
|----------|------|
| `speed <url>` | 速度分析（LCP、CLS、INP） |
| `technical <url>` | クロール、インデックス、シグナル |
| `schema <url>` | JSON-LDを検出・生成します |

### ローカルSEO
| コマンド | 説明 |
|----------|------|
| `local <business>` | Google Business Profile + レビューの監査 |
| `napcheck <business>` | 5つのディレクトリで名前・住所・電話番号を確認 |
| `links <url>` | 被リンク分析 |
| `gap <business>` | 競合トップ3との差分 |
| `serp <keyword>` | スニペット戦略 + AI Overviews |

### AI
| コマンド | 説明 |
|----------|------|
| `geo <url>` | 生成AIでの表示状況 |
| `citecheck <url>` | AIがサイトを引用しているか確認します |

## 具体例

```bash
auto https://plombier-dijon.fr
```

スキルが実行する内容：
1. AIがサイトをクロールできるか確認します（robots.txt）
2. headタグ、速度、スキーマを分析します
3. 70基準でコンテンツを評価します（新しいサイトの場合は自動調整）
4. Google Business Profileの登録情報を確認します
5. ChatGPTがすでにこのサイトを引用しているか調べます
6. 主要な競合3社と比較します

→ **優先順位と推定時間が整理された完全なレポートが出力されます。**

## アーキテクチャ

```
SEO-GEO-EEATCORE/
├── SKILL.md                 ← エントリーポイント（常に読み込まれます）
├── README.md                ← このファイル
├── references/              ← 参照資料（必要に応じて読み込まれます）
│   ├── core-eeat-benchmark.md   70のスコアリング基準
│   ├── audit-framework.md       3層監査
│   ├── geo-optimization.md      AIでの表示最適化
│   ├── content-strategy.md      キーワード、ブリーフ
│   ├── head-tags.md             40個のheadタグ
│   ├── technical-seo.md         技術面 + 速度
│   ├── auto-pipeline.md         自動化パイプライン
│   ├── schema-templates.md      JSON-LDテンプレート
│   ├── local-seo.md             ローカルSEO
│   ├── link-building.md         被リンク構築
│   └── serp-targeting.md        SERP機能
├── scripts/                ← PowerShellユーティリティ
│   ├── fetch-url.ps1            URL分析
│   ├── psi-audit.ps1            PageSpeed Insights
│   ├── gen-local-schema.ps1     LocalBusinessスキーマ生成
│   ├── gen-llmstxt.ps1          llms.txt生成
│   └── entity-audit.ps1         ブランドエンティティ確認
├── evolution/              ← 継続的学習
│   ├── pattern-library.md       反復パターン
│   ├── calibrations.md          スコアリング調整
│   ├── quality-gates.md         品質管理
│   ├── checklists/              チェックリスト
│   └── templates/               セッションテンプレート
└── scripts/
    └── check-consistency.ps1    スキルの整合性チェック
```

## 他のツールとの違い

| 他のツール | このスキル |
|-----------|----------|
| 恣意的な評価 | 各スコアは明確な基準に基づいて正当化されます |
| AIを無視 | ChatGPT、Perplexity、Claudeでの表示を確認します |
| すべてのサイトに万能 | サイトの成熟度に応じて適応します（新規→既存） |
| 継続的な改善がない | evolution/ による継続的学習 |
| 複雑な設定 | 設定不要、1つのコマンドで完了 |

## 前提条件

- AIエージェント（Claude Code、open-code、Cursor、Cline、Aider、Codex CLI、Gemini CLI など）
- 静的サイト（Astro、HTML、Hugo、11ty など）
- （オプション）トラフィックデータ用のGoogle Search Console

## インストール

```bash
# 1. プロジェクトにフォルダをコピーします
cp -r SEO-GEO-EEATCORE/ votre-projet/

# 2. AIにスキルの使用を指示します
# → "SEO-GEO-EEATCORE スキルを使ってください"

# 3. 最初の分析を実行します
# → auto https://votre-site.fr
```

依存関係、データベース、設定は一切不要です。

## 翻訳

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

**CC0** — パブリックドメイン。ご自由にお使いください。
