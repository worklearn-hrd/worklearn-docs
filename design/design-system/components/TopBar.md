# TopBar
학습자 화면의 머리. PC와 모바일이 다르다.

- **PC** `.wl-topbar`: `surface` 바탕, 하단 `border`, 높이 64px(`header-height`), 안쪽 `content-max` 1120px·좌우 `space-24`. 왼쪽 `.wl-brand`(마크 28 + 워드마크), 가운데 `.wl-topbar__nav`(홈·탐색·내 학습, 36px 필, 활성 `accent-tint`), 오른쪽 검색 입력(폭 260px) + 아바타 28px. 링크 간격 `space-4`, 그룹 간격 `space-24`.
- **모바일** `.wl-topbar--mobile`: 바탕 없음(`ground` 그대로), 패딩 `56px 20px 12px`(상단 44px 안전 영역 포함). 왼쪽 페이지 제목(`title-22`) 또는 인사말, 오른쪽 아이콘 버튼 하나(알림 또는 검색). 뒤로 가기는 왼쪽 `icon-22` 화살표 + 제목.
- 모바일 헤더는 스크롤해도 고정하지 않는다(하단 탭바만 고정).
- 구현자가 넘기는 것: PC — `activeKey`, `user`; 모바일 — `title`, `back`, `action`.
