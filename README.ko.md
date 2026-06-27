# SEO·GEO·EEAT-CORE

> 정적 사이트(Astro/HTML)를 Google 및 생성형 AI 검색 결과 상위에 노출시키기 위한 올인원 AI 스킬입니다. 설정이 필요 없고, 의존성도 없습니다.

## 단 하나의 명령어

```bash
auto https://votre-site.fr
```

스킬이 5가지 진단 단계를 실행합니다：
1. **Discovery** — 페이지 가져오기, head 태그, 기술 진단, 속도
2. **Content** — EEAT 점수(70개 기준), 키워드, 브리프
3. **Local** — Google Business Profile, NAP, 리뷰
4. **GEO** — ChatGPT, Perplexity, Claude 내 가시성
5. **Links** — 백링크, 경쟁사와의 차이

결과：우선순위, 예상 시간, 복사하여 바로 사용할 수 있는 코드가 포함된 보고서가 출력됩니다.

## 전체 명령어

### 시작
| 명령어 | 설명 |
|--------|------|
| `help` | 모든 명령어를 표시합니다 |
| `auto <url>` | 전체 파이프라인 (올인원) |
| `audit <url>` | 3계층 감사 + EEAT 점수 |
| `head <url>` | 40개의 head 태그를 확인합니다 |

### 콘텐츠
| 명령어 | 설명 |
|--------|------|
| `keywords <topic>` | 검색 의도를 포함한 키워드 제안 |
| `brief <topic>` | 에디터용 브리프 (바로 작성 가능) |
| `content <url>` | 전체 EEAT 점수 (70개 기준) |
| `clusters <topic>` | 주제별 클러스터 플랜 |
| `fresh <url>` | 콘텐츠의 최신성을 확인합니다 |
| `recover <url>` | 트래픽이 감소한 글을 개선합니다 |

### 기술
| 명령어 | 설명 |
|--------|------|
| `speed <url>` | 속도 분석 (LCP, CLS, INP) |
| `technical <url>` | 크롤링, 색인, 신호 |
| `schema <url>` | JSON-LD를 감지하고 생성합니다 |

### 로컬 SEO
| 명령어 | 설명 |
|--------|------|
| `local <business>` | Google Business Profile + 리뷰 감사 |
| `napcheck <business>` | 5개 디렉토리에서 이름/주소/전화번호 확인 |
| `links <url>` | 백링크 분석 |
| `gap <business>` | 상위 3개 경쟁사와의 차이 |
| `serp <keyword>` | 스니펫 전략 + AI Overviews |

### AI
| 명령어 | 설명 |
|--------|------|
| `geo <url>` | 생성형 AI 내 가시성 |
| `citecheck <url>` | AI가 사이트를 인용하는지 확인합니다 |

## 구체적인 예시

```bash
auto https://plombier-dijon.fr
```

스킬이 수행하는 작업：
1. AI가 사이트를 크롤링할 수 있는지 확인합니다 (robots.txt)
2. head 태그, 속도, 스키마를 분석합니다
3. 70개 기준으로 콘텐츠를 평가합니다 (새 사이트는 자동 조정)
4. Google Business Profile 등록 정보를 확인합니다
5. ChatGPT가 이미 이 사이트를 인용하고 있는지 확인합니다
6. 주요 경쟁사 3곳과 비교합니다

→ **우선순위와 예상 시간이 정리된 완전한 보고서가 출력됩니다.**

## 구조

```
SEO-GEO-EEATCORE/
├── SKILL.md                 ← 진입점 (항상 로드됨)
├── README.md                ← 이 파일
├── references/              ← 참조 자료 (요청 시 로드됨)
│   ├── core-eeat-benchmark.md   70개 점수 기준
│   ├── audit-framework.md       3계층 감사
│   ├── geo-optimization.md      AI 가시성 최적화
│   ├── content-strategy.md      키워드, 브리프
│   ├── head-tags.md             40개 head 태그
│   ├── technical-seo.md         기술 + 속도
│   ├── auto-pipeline.md         자동화 파이프라인
│   ├── schema-templates.md      JSON-LD 템플릿
│   ├── local-seo.md             로컬 SEO
│   ├── link-building.md         백링크 구축
│   └── serp-targeting.md        SERP 기능
├── scripts/                ← PowerShell 유틸리티
│   ├── fetch-url.ps1            URL 분석
│   ├── psi-audit.ps1            PageSpeed Insights
│   ├── gen-local-schema.ps1     LocalBusiness 스키마 생성
│   ├── gen-llmstxt.ps1          llms.txt 생성
│   └── entity-audit.ps1         브랜드 엔터티 확인
├── evolution/              ← 지속적 학습
│   ├── pattern-library.md       반복 패턴
│   ├── calibrations.md          점수 조정
│   ├── quality-gates.md         품질 관리
│   ├── checklists/              체크리스트
│   └── templates/               세션 템플릿
└── scripts/
    └── check-consistency.ps1    스킬 무결성 확인
```

## 차별점

| 다른 도구 | 이 스킬 |
|-----------|---------|
| 임의적인 점수 | 각 점수가 명확한 기준으로 정당화됨 |
| AI를 무시 | ChatGPT, Perplexity, Claude 가시성 확인 |
| 모든 사이트에 동일하게 적용 | 사이트 성숙도에 따라 적응 (신규 → 기존) |
| 지속적 개선 없음 | evolution/을 통한 지속적 학습 |
| 복잡한 설정 | 설정 불필요, 하나의 명령어로 완료 |

## 사전 요구 사항

- AI 에이전트 (Claude Code, open-code, Cursor, Cline, Aider, Codex CLI, Gemini CLI 등)
- 정적 사이트 (Astro, HTML, Hugo, 11ty 등)
- (선택 사항) 트래픽 데이터용 Google Search Console

## 설치

```bash
# 1. 프로젝트에 폴더를 복사합니다
cp -r SEO-GEO-EEATCORE/ votre-projet/

# 2. AI에게 스킬 사용을 지시합니다
# → "SEO-GEO-EEATCORE 스킬을 사용해주세요"

# 3. 첫 번째 분석을 실행합니다
# → auto https://votre-site.fr
```

의존성, 데이터베이스, 설정이 전혀 필요하지 않습니다.

## 번역

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

**CC0** — 퍼블릭 도메인. 자유롭게 사용하십시오.
