# Button
한 화면에 `primary`는 하나, 나머지는 `secondary`. 높이는 PC 40px(`control`), 모바일 44px(`control-lg`), 모바일 로그인·가입 제출만 52px(`control-xl`, `radius-12`, 가로 100%).

| variant | 배경 / 글자 / 테두리 | 굵기 | 쓰는 곳 |
| --- | --- | --- | --- |
| `--primary` | `accent` / `ink-on-accent` / 없음 | 600 | 이어보기, 저장, 캠페인 시작, 로그인 |
| `--secondary` | `surface` / `ink` / `border` | 400 | 취소, 내보내기, 필터 열기 |
| `--danger` | `surface` / `critical` / `border` | 400 | 테넌트 정지, 삭제. 확인 다이얼로그 뒤에만 |
| `--tint` | `accent-tint` / `accent` / `accent-tint-border`, 32px 필 | 400 | 콘텐츠 검토 화면의 '태그 추가' 같은 가벼운 2차 행동 |
| `--pill` (+`is-active`) | `surface` / `ink` / `border`, 36px 필; 활성은 `accent` 채움 | 400 / 600 | 탐색 화면 필터 |
| `--dashed` | `surface` / `ink-secondary` / `border-strong` 점선 | 400 | 커리큘럼 '콘텐츠 추가', 드롭존 대체 |
| `--dark` | `dark-surface` / `dark-ink` / `dark-border` | 400 | 플레이어 컨트롤 |

크기 modifier: `--sm` 28px·`radius-6`·12px(표 안), `--lg` 44px·14px, `--xl` 52px·15px, `--block` 가로 100%, `--icon` 정사각.

- 라벨은 동사로 끝나는 2–5자(이어보기, 저장, 시작하기). 마침표·느낌표 없음.
- 아이콘은 왼쪽, `icon-16`, `space-6` 간격. 아이콘만 있는 버튼은 `aria-label` 필수.
- hover는 `accent-hover` / `ground`, 비활성은 opacity .45. 로딩 중에는 라벨을 "저장 중…"으로 바꾸고 비활성화한다(스피너 없음).
- 구현자가 넘기는 것: `variant`, `size`, `block`, `disabled`, `leadingIcon`, `children`(라벨), 나머지는 `<button>` 속성 그대로.
