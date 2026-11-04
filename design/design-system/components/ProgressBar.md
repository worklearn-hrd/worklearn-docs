# ProgressBar
진행률(`progress.percent`, 캠페인 완료율) 한 가지만 그린다. 트랙 `surface-sunken`, 채움 `accent`, `radius-pill`, 채움 전환 300ms.

- 두께: 목록 카드 `--thin` 4px, 틴트 카드·과정 상세 기본 6px, 대시보드·캠페인 `--thick` 8px.
- `accent-tint` 위에 놓일 때는 `--on-tint`(트랙 `accent-tint-border`).
- 채움을 상태색으로 바꾸지 않는다. 기준 미달은 옆 숫자(`.wl-progress-row > b.is-warning`)로 말한다.
- 숫자는 바 오른쪽 36px 고정폭, 13px 600, `tabular-nums`. 숫자 없는 바는 목록 카드에서만.
- `role="progressbar"`, `aria-valuenow/min/max`, `aria-label`에 무엇의 진행률인지.
- 구현자가 넘기는 것: `value`(0–100), `size`, `onTint`, `label`(숫자 표시 여부), `warning`.
