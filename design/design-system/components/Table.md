# Table
운영자·플랫폼 화면의 목록. 13px, 행 구분 `border` 1px, 세로 줄·줄무늬 없음. 표는 `Card` 안에 넣고 카드 패딩을 0으로(`.wl-table--flush`로 마지막 행 선 제거).

- 헤더: 13px 500 `ink-secondary`, 패딩 `12px 16px`, 줄바꿈 없음. 조밀한 표(`--dense`)는 `10px 14px`.
- 셀: 패딩 `12px 14px`, 세로 가운데. 이름 열 `is-strong`(600), 보조 열 `is-secondary`, 숫자 열 `is-num`(오른쪽, `tabular-nums`).
- 상태 열은 StatusBadge, 행동 열은 `Button --secondary --sm` 또는 텍스트 링크 `accent`.
- 행 hover `ground`. 행 전체 클릭은 이름 열의 링크로(행 onClick 금지).
- 넓은 표는 `.wl-table-wrap`으로 가로 스크롤(`min-width` 600–900px). 모바일에서 표를 카드로 바꾸지 않는다 — 운영자 화면은 PC 전용.
- 빈 표: 헤더 아래 한 행에 `ink-secondary` 안내문 + 보조 버튼.
- 구현자가 넘기는 것: `columns`(key, label, align, width, render), `rows`, `rowKey`, `dense`, `empty`.
