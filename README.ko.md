<div align="center">

# SEO Unified Skill

**WaaS rank & rent 정적 사이트(Astro/HTML)를 위한 AI 기반 SEO/GEO/EEAT 통합 스킬. 설정 불필요. 자가 학습. 성숙도 적응형 점수.**

![버전](https://img.shields.io/badge/버전-1.0.0-8B5CF6?style=flat-square)
![라이선스](https://img.shields.io/badge/라이선스-CC0-8B5CF6?style=flat-square)
![명령어](https://img.shields.io/badge/명령어-25+-8B5CF6?style=flat-square)
![EEAT 항목](https://img.shields.io/badge/EEAT%20항목-70-8B5CF6?style=flat-square)
![에이전트](https://img.shields.io/badge/Claude%20Code%20-%20Open%20Code%20-%20Cursor%20-%20Cline%20-%20Aider%20-%20Gemini%20CLI-8B5CF6?style=flat-square)

> **전통적 SEO** + **Generative Engine Optimization**(ChatGPT, Perplexity, Claude, Gemini, Google AIO) + **CORE-EEAT 70차원 콘텐츠 벤치마킹**을 포괄하는 통합 스킬입니다.
> 자가 학습 진화 시스템. 사용할수록 향상됩니다. 모든 에이전트와 호환됩니다.

</div>

**언어**: [English](README.md) | [Deutsch](README.de.md) | [Español](README.es.md) | [Português](README.pt.md) | [Русский](README.ru.md) | [العربية](README.ar.md) | [日本語](README.ja.md) | 한국어 | [中文](README.zh.md)

---

## 기능

단 하나의 명령어로 **정적 사이트(Astro, HTML, Hugo, 11ty)를 감사 및 최적화**하여 Google 검색과 AI 기반 검색 엔진 모두에 대응합니다. 문제를 감지하고, 70개의 EEAT 기준으로 콘텐츠를 평가하며, AI 인용 준비 상태를 확인하고, 실행 가능한 수정 계획을 생성합니다 — 모두 하나의 URL에서 가능합니다.

스킬은 **사이트 성숙도**(신규 / 성장 / 확립 / 지배적)에 적응하여 2페이지 로컬 사이트와 100페이지 권위 도메인을 다르게 평가합니다.

## 주요 기능

| 기능 | 의미 |
|------|------|
| **25+ 명령어** | `auto`로 전체 파이프라인 또는 개별 명령어: `head`, `speed`, `schema`, `geo`, `local`, `links`, `keywords`, `brief`, `fresh`, `recover` |
| **6단계 자동 파이프라인** | Discovery → Content → Local → GEO → Links → 보고서. 하위 에이전트 실행, 오류 우아하게 처리. |
| **70개 EEAT 기준** | 콘텐츠, 전문성, 평판, 독창성, 기술 — 성숙도 적응형 점수 |
| **성숙도 감지** | 신규(<6개월/10페이지) vs 성장(6-18개월/10-30페이지) vs 확립(18개월+/30+페이지) vs 지배적(3년+/100+페이지). 점수 자동 조정. |
| **GEO 우선** | ChatGPT, Perplexity, Claude, Gemini, Google AIO의 인용 준비 상태 확인 |
| **거부 조건** | 점수 매기기 전 9개 차단 요소 확인(robots.txt 차단, HTTPS 없음, 수동 조치 등) |
| **진실 프로토콜** | 눈에 보이는 증거 없이 "통과" 표시하지 않음. 백링크 추측하지 않음. 확인 없이 스키마 유효하다고 선언하지 않음. |
| **자가 학습** | 각 세션마다 발견 사항 기록. 패턴은 `evolution/pattern-library.md`에 축적. 보정은 시간에 따라 조정. |
| **비대화 방지** | 명백하지 않은 발견 시에만 학습 파일 생성. 50파일 임계값으로 아카이브/통합. |
| **헤드 태그 감사** | 6개 카테고리 40개 항목(meta, OG, schema, 아이콘, geo, 소셜)을 P0-P3 우선순위로 평가 |
| **구조화된 출력** | 각 명령어 제공: 점수, 요약, 발견 사항, 노력 추정치가 포함된 실행 계획 |
| **크로스 플랫폼** | Claude Code, Open Code, Cursor, Cline, Aider, Codex CLI, Gemini CLI에서 작동 |

## SEO Unified Skill의 차별점

| 다른 도구 | SEO Unified Skill |
|-----------|-------------------|
| 일률적인 점수 | **성숙도 적응형**: 새 사이트는 권위 신호 부족으로 불이익 받지 않음 |
| AI 검색 무시 | **GEO 우선** — ChatGPT, Perplexity, Claude 인용 준비 확인 |
| 자의적 평가 | **증거 기반**: 각 발견은 특정 EEAT 기준 인용 |
| 정적 | **자가 학습** via evolution/ 폴더 |
| 복잡한 설정 | **설정 불필요** — 하나의 명령어, 하나의 URL |
| 복잡한 도구 체인 | **에이전트 네이티브** — 모든 에이전트에서 작동, 설치 불필요 |
| 모호한 조언 | **실행 가능한 수정** 노력 추정치와 구체적 코드 포함 |
| 환각 위험 | **진실 프로토콜** — 데이터를 조작하지 않으며, 불명확한 것을 명확히 표시 |

## 명령어

### 시작
| 명령어 | 기능 |
|--------|------|
| `help` | 모든 명령어를 예시와 함께 표시 |
| `auto <url>` | 전체 파이프라인: 6단계, 하위 에이전트, 복합 점수 |
| `audit <url>` | 3계층 감사 + EEAT 점수 + WaaS 실행 계획 |
| `head <url>` | 40개 항목 헤드 태그 감사(meta, OG, schema, 아이콘, geo) |

### 콘텐츠
| 명령어 | 기능 |
|--------|------|
| `keywords <주제>` | 의도 매핑이 포함된 우선 키워드 |
| `brief <주제>` | 편집자 준비 완료 콘텐츠 브리프 + SERP 분석 + 개요 |
| `content <url>` | 전체 70개 기준 EEAT 벤치마크 + 개선 계획 |
| `clusters <주제>` | 주제 클러스터 맵 + 필러/하위 주제 + 내부 링크 |
| `fresh <url>` | 콘텐츠 신선도 감사(오래된 통계, 날짜, 예시) |
| `recover <url>` | 콘텐츠 쇠퇴 트리아주(업데이트/통합/리디렉션) |

### 기술
| 명령어 | 기능 |
|--------|------|
| `speed <url>` | Core Web Vitals 분석(LCP, CLS, INP) + 근본 원인 |
| `technical <url>` | 크롤 → 인덱스 → 신호 진단 |
| `schema <url>` | JSON-LD 감지, 검증 및 생성 |

### 로컬
| 명령어 | 기능 |
|--------|------|
| `local <비즈니스>` | Google Business Profile 감사 + NAP + 리뷰 |
| `napcheck <비즈니스>` | 디렉토리 간 NAP 일관성 |
| `links <url>` | 백링크 프로필 분석 + 링크 빌딩 캠페인 |
| `gap <비즈니스>` | 경쟁 격차: 상위 3개가 가지고 있고 당신에게 없는 것 |
| `serp <키워드>` | 추천 스니펫 + PAA + 리치 결과 타겟팅 |

### AI / GEO
| 명령어 | 기능 |
|--------|------|
| `geo <url>` | AI 검색 엔진 가시성 감사 + llms.txt 확인 |
| `citecheck <url>` | AI 엔진이 사이트를 인용하는지 확인 |

### 진화
| 명령어 | 기능 |
|--------|------|
| `memory` | 축적된 세션 학습 및 패턴 표시 |
| `reset` | 현재 학습 보관 및 새로 시작 |

## 빠른 예시

```bash
auto https://배관공-디종.fr
```

스킬은:
1. AI 크롤러가 사이트에 접근할 수 있는지 확인(robots.txt)
2. 헤드 태그, 속도, 스키마 분석
3. 70개 EEAT 기준으로 콘텐츠 평가(성숙도에 적응)
4. Google Business Profile 확인
5. ChatGPT / Perplexity가 이 사이트를 이미 인용하는지 확인
6. 상위 3개 경쟁사와 비교

→ **우선순위 지정된 작업, 노력 추정치, 복사 가능한 코드가 포함된 전체 보고서.**

## 설치

### Claude Code
```bash
cp -r seo-unified-skill/ /프로젝트/경로/
# 그런 다음: "SEO Unified Skill 사용"
```

### Open Code
```bash
# 스킬 설정에 추가하거나 프로젝트에 복사
# 그런 다음: auto https://당신의사이트.kr
```

### Cursor / Cline / Aider / Gemini CLI
```bash
cp -r seo-unified-skill/ /프로젝트/경로/
# 에이전트 지침에서 SKILL.md 참조
```

### 확인
```bash
ls seo-unified-skill/
# 표시: SKILL.md, README.md, references/, scripts/, evolution/
```

의존성 없음. 데이터베이스 없음. 설정 없음.

## 사용법

```bash
# 전체 파이프라인(권장)
auto https://당신의사이트.kr

# 개별 명령어
head https://당신의사이트.kr    # 40개 헤드 태그
speed https://당신의사이트.kr   # Core Web Vitals
geo https://당신의사이트.kr     # AI 가시성
local "비즈니스 이름"           # GBP 감사
keywords "배관공 서울"         # 키워드 조사
brief "전기기사 부산"          # 콘텐츠 브리프
schema https://당신의사이트.kr  # 구조화된 데이터
```

## 자가 진화 시스템

스킬은 시간이 지남에 따라 **설정 없이** 향상됩니다:

1. 각 명령어 후 발견 사항이 `evolution/learnings/`에 기록됨
2. 반복 패턴이 `evolution/pattern-library.md`에 축적됨
3. 점수 조정이 `evolution/calibrations.md`에서 추적됨
4. 50개 파일 초과 시 오래된 학습이 보관되고 통합됨
5. 학습 파일은 명백하지 않은 발견 시에만 작성됨

참조 파일은 자동으로 수정되지 않습니다. 보정은 사용자가 결정합니다.

## 내용

```
seo-unified-skill/
├── SKILL.md                     AI 에이전트 핵심 지침(19 KB)
├── README.md                    이 파일
├── references/                  필요 시 로드
│   ├── core-eeat-benchmark.md   70개 기준, 성숙도 적응형 점수(22 KB)
│   ├── audit-framework.md       3계층 감사 프레임워크(9 KB)
│   ├── geo-optimization.md      AI 검색 가시성(11 KB)
│   ├── content-strategy.md      키워드, 브리프, 클러스터, 복구(12 KB)
│   ├── head-tags.md             40개 항목 헤드 태그 감사(10 KB)
│   ├── auto-pipeline.md         6단계 파이프라인 오케스트레이션(12 KB)
│   ├── technical-seo.md         3계층 기술 진단(7 KB)
│   ├── schema-templates.md      JSON-LD 템플릿(10 KB)
│   ├── local-seo.md             Google Business Profile + NAP(8 KB)
│   ├── link-building.md         백링크 프로필 + 링크 빌딩(8 KB)
│   └── serp-targeting.md        스니펫, PAA, 리치 결과(9 KB)
├── scripts/                     PowerShell 유틸리티
│   ├── fetch-url.ps1            URL 가져오기 + 파싱
│   ├── psi-audit.ps1            PageSpeed Insights API
│   ├── gen-local-schema.ps1     LocalBusiness JSON-LD 생성기
│   ├── gen-llmstxt.ps1          llms.txt 생성기
│   └── entity-audit.ps1         브랜드 엔터티 확인
├── evolution/                   자가 학습 시스템
│   ├── pattern-library.md       도메인 유형별 반복 패턴
│   ├── calibrations.md          점수 조정
│   ├── quality-gates.md         출력 전 품질 확인
│   ├── checklists/              감사 체크리스트
│   └── templates/               세션 로그 템플릿
└── scripts/
    └── check-consistency.ps1    스킬 무결성 검사기(6개 검사)
```

## 크레딧

[SurDijon](https://github.com/SurDijon) — WaaS rank & rent 스튜디오. 11개 참조 도메인(기술, 콘텐츠, 로컬, GEO, 스키마, 링크, SERP, EEAT, 헤드 태그, 파이프라인)을 5개의 PowerShell 유틸리티와 자가 학습 진화 시스템으로 포괄합니다.

---

이 스킬이 사이트 순위 향상에 도움이 된다면: **[github.com/SurDijon/seo-unified-skill](https://github.com/SurDijon/seo-unified-skill)에서 ⭐를 남겨주세요**.
