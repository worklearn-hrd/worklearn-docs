워크런(WorkLearn)은 기업 학습 플랫폼이다. 이 시스템은 `worklearn-design` 캔버스의 20개 화면(모바일 학습자 8, PC 학습자 3, 운영자 4, 테넌트 관리자 2, 플랫폼 운영자 3)에서 뽑아낸 값과 규칙이며, 화면 이미지와 함께 코드 에이전트에게 건넨다. **이미지는 배치와 분위기의 기준, 이 문서와 `tokens.json`·`components/bundle.css`는 값의 기준이다.** 둘이 다르면 토큰을 따른다.

## 세 가지 얼굴, 하나의 시스템

- **학습자(모바일·PC)** — 밝고 여백이 넉넉하다. `ground` 위에 `surface` 카드, 한 화면에 액센트 색 CTA는 하나.
- **운영자·테넌트 관리자(PC)** — 같은 팔레트, 더 조밀하다. 왼쪽 `surface` 사이드바 240px, 오른쪽 `ground` 콘텐츠. 표와 KPI 타일이 주인공.
- **플랫폼 운영자(PC)** — 사이드바만 `nav-dark`로 어둡다. 다른 테넌트 화면과 섞이지 않도록 이 레이어에서만 쓴다.
- **플레이어** — 유일하게 화면 전체가 어둡다(`dark-ground`). 집중을 위한 예외이며 다크 모드가 아니다.

다크 모드는 없다. `dark-*` 토큰은 플레이어와 플랫폼 사이드바 전용이다.

## 말투와 표기

- 학습자 화면은 **해요체**로, 짧게 쓴다. 예: "10분만 더 보면 끝나요", "3일 전에 멈췄어요". 운영자·플랫폼 화면은 **명사형 또는 합니다체**다. 예: "부서·직무가 마스터에 없으면 건너뜁니다", "저장 직후 · 약 2분".
- 메타 정보는 가운뎃점(` · `)으로 잇는다: `잡 실행 ID 4,812 · 시작 16:48:10 · 3단계 진행 중`.
- 숫자는 천 단위 구분(`10,312`), 비율은 소수 한 자리(`62.3%`), 마감은 `D-3`, 시간은 `38:02`. 숫자는 `font-variant-numeric: tabular-nums`로 세로 정렬한다.
- 사용자는 `서연 님`처럼 이름 + 님. 테넌트는 회사명 그대로(`한빛모빌리티`).
- 이모지를 쓰지 않는다. 느낌표는 학습자 화면의 축하 한 곳(퀴즈 통과)에서만.
- 제품명은 한글 `워크런`, 영문 병기가 필요할 때만 `WorkLearn`. 영문 소문자(worklearn)는 저장소·도메인 이름에만.

## 로고

로고 파일은 `assets/Logo/worklearn-mark.svg` 하나다: `accent` 바탕 `radius-8` 타일 위에 흰 W 스트로크(선 2.5, 둥근 끝). 헤더·사이드바에서는 28px 타일 + 워드마크 `워크런`(`heading-18`, 자간 -0.3px)을 `space-8` 간격으로 나란히 둔다(`.wl-brand`). 로그인 화면은 워드마크를 `title-22`로 키운다. 별도 워드마크 글꼴이나 로고타입은 없다 — 워드마크는 항상 본문 글꼴의 플레인 타입이다. 타일 안의 마크를 단독으로 쓸 때는 `accent` 바탕 없이 쓰지 않는다.

## 색

팔레트는 **중립 회색 + 파랑 하나 + 상태 셋**이다.

- 면은 `ground`(페이지) → `surface`(카드) 두 단으로 끝낸다. 세 번째 단이 필요하면 `surface-muted`(태그·비활성)이고, 그 이상은 헤어라인 `border`로 나눈다. 그림자는 `shadow-card` 하나, 로그인 카드에서만.
- 텍스트는 `ink`와 `ink-secondary` 둘뿐이다. 더 흐린 회색 텍스트를 만들지 않는다(`placeholder-deep`은 텍스트 금지).
- `accent`는 한 화면에 한 번 크게(주요 버튼 또는 진행률), 나머지는 작게(활성 탭, 링크, 태그). 액센트 면 위의 텍스트는 항상 `ink-on-accent`.
- 틴트는 `accent-tint` 위에 `accent-tint-border` 테두리 — "지금 집중할 것"(학습 이어하기, 현재 챕터, 선택된 항목, 활성 메뉴)에만 쓴다. 장식으로 쓰지 않는다.
- 상태색은 **글자나 아이콘과 함께**만 쓴다. `success`(완료·활성·정상), `warning`(검토 필요·임박·기준 미달), `critical`(실패·정지·오답). 배지는 `*-tint` 바탕 + 상태색 글자, 디스크는 상태색 바탕 + 흰 아이콘. 진행률 채움은 항상 `accent`이며 상태색으로 바꾸지 않는다 — 기준 미달은 옆의 숫자를 `warning`으로 칠한다.
- 어두운 표면에서는 `accent`를 **텍스트로 쓰지 않는다**(2.6:1). `dark-accent-ink`를 쓴다. 채움(버튼, 스크럽 바)은 `accent` 그대로.
- `accent-alt-*` 셋은 캔버스 탐색용 후보다. 제품은 `accent` 하나로 간다.
- 그라데이션, 반투명 색 카드, 왼쪽 색 띠가 있는 카드는 없다.

## 타이포그래피

글꼴은 **IBM Plex Sans KR** 400·500·600·700, Google Fonts에서 불러온다. 폴백은 `system-ui, 'Apple SD Gothic Neo', 'Noto Sans KR'`. 영문·숫자도 같은 글꼴이다(별도 라틴 글꼴 없음). 모노스페이스는 쓰지 않는다 — 잡 ID나 시각도 본문 글꼴에 `tabular-nums`.

- 스케일은 Display(44·30·26·24·22) → Heading(20·19·18·17·16) → Body(15·14·13) → Caption(12·11·10)이다. 가장 많이 쓰는 크기는 **13px**(버튼·입력·표·메타)이고, 모바일 본문은 15px, PC 본문은 14px.
- 22px 이상은 700에 **음수 자간**(-0.4 ~ -0.6px, 44px는 -1px). 20px 이하는 자간 0. 양수 자간은 쓰지 않는다.
- 굵기 규칙: 제목 700, 라벨·버튼·강조 600, 메뉴 항목 500, 본문 400. 네 단계 밖의 굵기(300, 800)는 없다.
- 행간: 제목 1.25–1.35, 본문 1.5, 긴 글(트랜스크립트) 1.6, 큰 숫자 1.0–1.2.
- 한 줄 말줄임은 제목·목록 행에서만, 본문은 줄바꿈.

## 간격·레이아웃

- 4px 단위. 카드 안은 `space-12`(모바일 목록) / `space-16`(틴트 카드) / `space-20`(PC 카드). 섹션 사이는 모바일 `space-16`, PC `space-20`–`space-28`.
- **모바일**: 폭 390, 좌우 `space-20`, 상단 안전 영역 44px(헤더 패딩 56px = 44 + 12), 하단 탭바 `tabbar-safe-bottom` 28px. 리스트 카드는 섬네일 96px + 본문, 터치 대상 44px 이상.
- **PC 학습자**: 헤더 `header-height` 64px, 안쪽 `content-max` 1120px, 좌우 `space-24`. 본문도 같은 1120px 컬럼.
- **운영자·플랫폼**: 사이드바 `sidebar-width` 240px(패딩 20px 16px), 콘텐츠 패딩 `space-28` `space-32`, 카드 그리드 간격 `space-16`, KPI 4열.
- 모바일 화면은 PC에서 가운데 390px로 띄우지 않는다 — PC 학습자 화면(HomeDesktop·CourseDesktop·PlayerDesktop)이 따로 있다. 분기점은 768px.

## 모서리·선

- `radius-6` 태그·배지, `radius-8` 타일·섬네일, `radius-10` 버튼·입력·메뉴 항목, `radius-12` 모바일 카드·라디오 카드·비디오, `radius-14` PC 카드·패널, `radius-16` 틴트 피처 카드, `radius-pill` 필·바·디스크.
- 같은 화면에서 카드와 그 안의 컨트롤은 반지름이 4px 차이 난다(카드 14 → 버튼 10 → 태그 6).
- 선은 1px `border`. 강조 선(선택된 카드, 상태 링, 포커스)만 2px. 점선은 드롭존·추가 버튼에만, `border-strong`.

## 상태와 상호작용

- 포커스: `2px solid accent`, 바깥 2px 오프셋(입력은 오프셋 0 + 테두리 `accent`). 키보드 포커스에만(`:focus-visible`).
- hover: 주요 버튼 `accent-hover`, 보조 버튼·메뉴 항목·표 행 `ground`. 150ms ease. 그 밖의 애니메이션은 진행률 바 width 300ms뿐이다. 페이지 전환·스켈레톤 애니메이션은 넣지 않는다.
- 비활성: opacity .45, 커서 not-allowed. 색을 따로 만들지 않는다.
- 빈 상태: `ink-secondary` 13px 한 문장 + 보조 버튼 하나. 일러스트 없음.
- 로딩: 섬네일·아바타 자리는 `surface-sunken` 단색. 반짝이는 스켈레톤 없음.
- 선택(라디오 카드·필): 테두리 `accent` + 바탕 `accent-tint` + 글자 `accent` 600. 네이티브 체크박스·라디오는 `accent-color: accent`.

## 아이콘

목업의 아이콘은 모두 24 viewBox, 선 2, 둥근 끝·이음, `currentColor` 인라인 SVG다. 구현은 **lucide-react**를 쓴다(같은 규격; 이 선택은 시스템의 제안이며 목업은 손으로 그린 동형 아이콘이다). 크기는 `icon-16`(버튼 안), `icon-20`(메뉴·표), `icon-22`(하단 탭). 로고 타일 안 마크만 선 2.5. 상태 디스크 안의 체크는 11–12px에 선 3. 채운(filled) 아이콘, 이모지, 아이콘 글꼴은 쓰지 않는다.

## 데이터 표현

- 진행률은 바 + 퍼센트(`57%`). 바 두께는 목록 4px, 카드 6px, 대시보드 8px.
- KPI 타일은 라벨(12px `ink-secondary`) → 값(24px/700, 큰 것은 30px) → 증감(12px 600, `success`/`warning`/`critical`).
- 표는 헤더 13px 500 `ink-secondary`, 셀 13px, 행 구분 `border`, 숫자 열 오른쪽 정렬. 세로 줄 없음, 줄무늬 없음.
- 차트가 필요하면 `accent` 단색 + `surface-sunken` 트랙, 다중 시리즈는 `accent`·`success`·`warning` 순. 범례는 글자로.

## 코드 에이전트가 쓰는 법

1. `tokens.json`을 CSS 변수(`tokens.css`)로 쓰거나 Tailwind `theme.extend`에 같은 이름으로 옮긴다(`colors.accent`, `spacing[16]`→`space-16`, `borderRadius[10]`…). 숫자를 직접 쓰지 않는다.
2. `components/bundle.css`의 `.wl-*` 클래스는 **각 컴포넌트의 치수 사양**이다. React 컴포넌트(`Button`, `Tag`, `StatusBadge`, `ProgressBar`, `Card`, `Input`, `Choice`, `Table`, `KpiTile`, `SidebarNav`, `TopBar`, `BottomTabBar`, `StepList`, `CurriculumList`, `PlayerSurface`)를 이 클래스 하나당 하나로 만든다. variant 이름은 modifier(`--primary`, `--pill`, `is-active`)를 그대로 prop으로 옮긴다.
3. 화면은 `worklearn-docs/design/*.png`의 배치를 따르되, 값은 여기서 가져온다. 이미지에만 있고 토큰에 없는 값이 보이면 가장 가까운 토큰으로 맞추고 PR 설명에 적는다.
4. 새 컴포넌트가 필요하면 먼저 기존 클래스의 조합으로 해결한다(학습 이어하기 카드 = `card--tint` + `eyebrow` + `progress--on-tint` + `btn--primary btn--lg btn--block`). 그래도 필요하면 이 시스템에 README와 preview를 추가한 뒤 구현한다.
