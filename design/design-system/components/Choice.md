# Choice
체크박스·라디오를 감싸는 선택 가능한 면. 네이티브 input은 안에 그대로 두고(`accent-color: accent`), 선택 상태는 `is-selected`로 면 전체에 표시한다.

| variant | 치수 | 쓰는 곳 |
| --- | --- | --- |
| 기본(선택 행) | 44px · `radius-10` · 14px · 패딩 `0 14px` | 캠페인 대상 부서·직무 선택, 설정 토글 행 |
| `--pill` | 40px · `radius-pill` · 13px | 캠페인 조건 필터, 콘텐츠 검토의 태그 선택 |
| `--card` | 패딩 `space-14` · `radius-12` · 14px/1.5, 제목 + 설명 | 퀴즈 보기, 플랜 선택, 리마인더 규칙 |

- 선택: 테두리 `accent`, 바탕 `accent-tint`, 글자 `accent` 600. `--card`는 글자 `ink`를 유지하고 안쪽 1px 그림자로 2px 테두리처럼 보이게 한다(레이아웃 이동 없음).
- 퀴즈 결과 화면에서 정답은 `--card` + `is-selected`에 `success` 배지, 오답은 `critical-tint` 바탕 — 색만이 아니라 "정답/오답" 글자와 함께.
- 묶음은 `.wl-choice-group`(가로 줄바꿈) 또는 `--stack`(세로). 라디오 묶음은 `<fieldset>` + `<legend>`.
- 구현자가 넘기는 것: `type`(checkbox|radio), `variant`, `checked`, `title`, `description`, `name`, `value`, `onChange`.
