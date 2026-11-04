# Card
`surface` 바탕 + `border` 1px. 그림자 없음(로그인 카드만 `--elevated`).

| variant | 반지름 / 패딩 | 쓰는 곳 |
| --- | --- | --- |
| 기본 | `radius-14` / `space-20` | PC 카드·패널·표 컨테이너 |
| `--row` | `radius-14` / `16px 20px` | 한 줄짜리 설정 행, 목록형 패널 |
| `--compact` | `radius-12` / `space-12` | 모바일 목록 카드(섬네일 96px + 본문) |
| `--tint` | `radius-16` / `space-16`, `accent-tint` + `accent-tint-border` | 학습 이어하기, 지금 집중할 것 하나 |
| `--elevated` | + `shadow-card` | 로그인·가입 카드 |

- 머리: `.wl-card__head`(제목 `heading-16` 왼쪽, 메타·버튼 오른쪽). 틴트 카드는 제목 대신 `.wl-eyebrow`(12px 600 `accent`).
- 카드 안에 카드를 넣지 않는다. 구획이 필요하면 `border` 헤어라인.
- 카드 전체가 링크면 `<a class="wl-card">`, 안에 버튼을 두지 않는다. 버튼이 필요하면 카드는 링크가 아니다.
- 모바일 목록 카드: 섬네일(`.wl-thumb`) → 제목(14px 600, 한 줄 말줄임) → 메타(12px `ink-secondary`) → 진행률 `--thin`.
- 학습 이어하기 카드 = `--tint` + eyebrow + 메타 + 제목 `heading-16-medium` + 설명 13px + `ProgressBar --on-tint` + `Button --primary --lg --block`.
- 구현자가 넘기는 것: `variant`, `as`(div|a|section), `children`. 머리·본문 배치는 자식에게 맡긴다.
