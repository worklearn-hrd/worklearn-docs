# SidebarNav
운영자·테넌트 관리자·플랫폼 운영자 화면의 왼쪽 메뉴. 폭 240px(`sidebar-width`), 패딩 `20px 16px`, 항목 간격 `space-6`.

- 맨 위 `.wl-sidenav__brand`: 로고 타일 28px + 워드마크, 그 아래 12px `ink-secondary`로 테넌트 이름(운영자) 또는 "플랫폼 운영"(플랫폼).
- 항목 `.wl-sidenav__item`: 44px, `radius-10`, 아이콘 `icon-20` + 14px 500, 간격 `space-10`. 활성은 `accent-tint` + `accent` 600, hover `ground`.
- 맨 아래 항목(`--bottom`, `margin-top: auto`): 운영자는 "학습자 화면으로", 플랫폼은 "로그아웃".
- `--dark`(플랫폼 운영자 전용): 바탕 `nav-dark`, 항목 `dark-ink-prose`, 활성 `nav-dark-active` + `ink-on-accent`. 이 변형은 PLATFORM_ADMIN 역할에서만 렌더링한다 — 역할 구분이 시각 신호이기 때문.
- 메뉴 항목은 역할별 고정 목록(운영자: 대시보드·캠페인·콘텐츠·과정·조직 현황·설정 / 플랫폼: 테넌트·상태·감사 로그). 섹션 제목·접기 없음.
- 구현자가 넘기는 것: `items`(href, label, icon, active), `brand`(subtitle), `tone`(light|dark), `bottomItem`.
