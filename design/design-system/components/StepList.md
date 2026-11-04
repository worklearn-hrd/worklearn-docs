# StepList
순서가 있는 비동기 작업의 단계 — 테넌트 프로비저닝 4단계(테넌트 레코드 → 기본 설정 시드 → 직무 마스터 시드 → 관리자 초대 메일), 배치 잡 단계, HR 동기화 단계.

- `<ol class="wl-steps">` 가로 그리드(4열, `space-12`). 단계가 5개 이상이면 2열 그리드 대신 세로 목록으로.
- 단계 카드 `.wl-step`: 패딩 `space-14`, `radius-10`. 제목 13px 600 + 디스크 `disc-20`, 메타 12px `ink-secondary`(소요 시간, 대상 수, 대기 사유).
- 상태 네 가지: 대기(`ground`, `border-strong` 링), `is-current`(`accent-tint` + `accent-tint-border`, `accent` 링 + 7px 점, 제목 `accent`), `is-done`(`success-tint`, `success` 디스크 + 흰 체크), `is-failed`(`critical-tint`, `critical` 디스크 + 흰 X, 제목 `critical`).
- 단계 제목에는 번호를 붙인다(`1. 테넌트 레코드`). 실패한 단계 카드 아래에는 재실행 버튼이 아니라 섹션 맨 아래 한 줄 설명 + `Button --secondary`("실패한 단계부터 다시 실행").
- 구현자가 넘기는 것: `steps`(title, meta, status: pending|current|done|failed).
