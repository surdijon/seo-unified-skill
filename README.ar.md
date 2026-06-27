# SEO·GEO·EEAT-CORE

> مهارة ذكاء اصطناعي متكاملة لتدقيق ودفع مواقعك الثابتة (Astro/HTML) إلى صدارة Google والذكاء الاصطناعي التوليدي. لا إعدادات. لا تبعيات.

## أمر واحد

```bash
auto https://votre-site.fr
```

المهارة تشغّل 5 مراحل تشخيص:
1. **Discovery** — جلب الصفحة، الوسوم head، التقنية، السرعة
2. **Content** — تقييم EEAT بـ70 معياراً، كلمات مفتاحية، ملخص تحريري
3. **Local** — Google Business Profile، NAP، التقييمات
4. **GEO** — الظهور في ChatGPT وPerplexity وClaude
5. **Links** — الروابط الخلفية، الفجوات التنافسية

النتيجة: تقرير بالأولويات والوقت المقدر والتعليمات البرمجية الجاهزة للنسخ واللصق.

## جميع الأوامر

### البدء
| الأمر | الوظيفة |
|----------|-------------|
| `help` | عرض جميع الأوامر |
| `auto <url>` | المسار الكامل (كل شيء في أمر واحد) |
| `audit <url>` | تدقيق 3 طبقات + تقييم EEAT |
| `head <url>` | التحقق من 40 وسم head |

### المحتوى
| الأمر | الوظيفة |
|----------|-------------|
| `keywords <topic>` | كلمات مفتاحية مع نية البحث |
| `brief <topic>` | ملخص تحريري جاهز للكتابة |
| `content <url>` | تقييم EEAT كامل (70 معياراً) |
| `clusters <topic>` | خطة عناقيد موضوعية |
| `fresh <url>` | التحقق من حداثة المحتوى |
| `recover <url>` | إنقاذ مقال يخسر زواره |

### التقني
| الأمر | الوظيفة |
|----------|-------------|
| `speed <url>` | تحليل السرعة (LCP، CLS، INP) |
| `technical <url>` | الزحف، الفهرسة، الإشارات |
| `schema <url>` | كشف وإنشاء JSON-LD |

### المحلي
| الأمر | الوظيفة |
|----------|-------------|
| `local <business>` | تدقيق Google Business Profile + التقييمات |
| `napcheck <business>` | التحقق من الاسم/العنوان/الهاتف في 5 أدلة |
| `links <url>` | تحليل الروابط الخلفية |
| `gap <business>` | الفجوات مع أفضل 3 منافسين |
| `serp <keyword>` | استراتيجية المقتطفات + AI Overviews |

### الذكاء الاصطناعي
| الأمر | الوظيفة |
|----------|-------------|
| `geo <url>` | الظهور في الذكاء الاصطناعي التوليدي |
| `citecheck <url>` | التحقق مما إذا كانت الذكاءات الاصطناعية تستشهد بالموقع |

## مثال تطبيقي

```bash
auto https://plombier-dijon.fr
```

المهارة ستقوم بـ:
1. التحقق من قدرة الذكاء الاصطناعي على زحف الموقع (robots.txt)
2. تحليل الوسوم head والسرعة والبيانات المنظمة
3. تقييم المحتوى بـ70 معياراً (يتكيف مع المواقع الجديدة)
4. التحقق من صفحة Google Business Profile
5. معرفة ما إذا كان ChatGPT يستشهد بالموقع
6. المقارنة مع أهم 3 منافسين

→ **تقرير كامل مع إجراءات مرتبة حسب الأولوية والوقت المقدر.**

## الهيكل التنظيمي

```
SEO-GEO-EEATCORE/
├── SKILL.md                 ← نقطة الدخول (يُحمّل دائماً)
├── README.md                ← هذا الملف
├── references/              ← مراجع (تُحمّل عند الطلب)
│   ├── core-eeat-benchmark.md   70 معيار تقييم
│   ├── audit-framework.md       تدقيق 3 طبقات
│   ├── geo-optimization.md      الظهور في الذكاء الاصطناعي
│   ├── content-strategy.md      كلمات مفتاحية، ملخصات
│   ├── head-tags.md             40 وسم head
│   ├── technical-seo.md         التقني + السرعة
│   ├── auto-pipeline.md         المسار الآلي
│   ├── schema-templates.md      قوالب JSON-LD
│   ├── local-seo.md             SEO المحلي
│   ├── link-building.md         بناء الروابط
│   └── serp-targeting.md        ميزات SERP
├── scripts/                ← أدوات PowerShell
│   ├── fetch-url.ps1            تحليل URL
│   ├── psi-audit.ps1            PageSpeed Insights
│   ├── gen-local-schema.ps1     إنشاء schema LocalBusiness
│   ├── gen-llmstxt.ps1          إنشاء llms.txt
│   └── entity-audit.ps1         التحقق من كيان العلامة التجارية
├── evolution/              ← تعلم مستمر
│   ├── pattern-library.md       الأنماط المتكررة
│   ├── calibrations.md          تعديلات التقييم
│   ├── quality-gates.md         ضوابط الجودة
│   ├── checklists/              قوائم التحقق
│   └── templates/               قوالب الجلسات
└── scripts/
    └── check-consistency.ps1    التحقق من سلامة المهارة
```

## ما يجعله فريداً

| أدوات أخرى | هذه المهارة |
|---------------|----------|
| تقديرات اعتباطية | كل تقدير مبرر بمعيار دقيق |
| تتجاهل الذكاء الاصطناعي | تتحقق من ChatGPT وPerplexity وClaude |
| مثالي لجميع المواقع | يتكيف مع نضج الموقع (جديد ← راسخ) |
| لا متابعة | تعلم مستمر عبر evolution/ |
| إعدادات معقدة | لا إعدادات، أمر واحد يكفي |

## المتطلبات الأساسية

- وكيل ذكاء اصطناعي (Claude Code، open-code، Cursor، Cline، Aider، Codex CLI، Gemini CLI)
- موقع ثابت (Astro، HTML، Hugo، 11ty، إلخ.)
- (اختياري) Google Search Console لبيانات الزيارات

## التثبيت

```bash
# 1. نسخ المجلد إلى مشروعك
cp -r SEO-GEO-EEATCORE/ votre-projet/

# 2. إخبار الذكاء الاصطناعي باستخدام المهارة
# → "استخدم مهارة SEO-GEO-EEATCORE"

# 3. تشغيل أول تحليل
# → auto https://votre-site.fr
```

لا تبعيات، لا قاعدة بيانات، لا إعدادات.

## الترجمات

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

**CC0** — ملكية عامة. استخدمه كما تشاء.
