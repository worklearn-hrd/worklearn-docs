# KpiTile
대시보드 맨 위의 숫자 타일. `Card` 안에 `.wl-kpi`: 라벨(12px `ink-secondary`) → 값(24px 700, 자간 -0.4px; 핵심 지표 하나만 `--lg` 30px) → 증감(12px 600).

- 4열 그리드(`.wl-kpi-grid`, `space-16`). 타일은 4개 또는 3개, 그 이상이면 둘째 줄로 내리지 말고 표로.
- 증감 색: 좋은 방향 `is-up`(`success`), 주의 `is-warning`, 나쁜 방향 `is-down`(`critical`). 방향이 없는 수치(총 학습자)는 `ink-secondary` 그대로. 증감에는 화살표 글자 대신 `+12%` / `-3명`처럼 부호.
- 값은 `tabular-nums`. 단위는 값 뒤 같은 줄(`62.3%`, `1,240명`). 긴 단위는 라벨로.
- 타일은 클릭 대상이 아니다. 상세로 가려면 섹션 제목 옆 `.wl-section__more`.
- 구현자가 넘기는 것: `label`, `value`, `delta`, `deltaTone`, `size`.
