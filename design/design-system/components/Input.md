# Input
텍스트·숫자·셀렉트·텍스트에어리어·드롭존. 높이 40px(`control`), `radius-10`, `border` 1px, 13px, 가로 패딩 `space-12`.

- 필드 = `.wl-field`(라벨 → 컨트롤 → 도움말, `space-6` 간격). 라벨은 13px 600, 도움말 12px `ink-secondary`, 오류는 `.wl-help--error`(`critical`) + 컨트롤 `is-invalid`.
- 플레이스홀더는 `ink-secondary`(흐린 회색 금지). 예시는 형식만(`hr@company.com`), 지시문은 라벨에.
- 포커스: 테두리 `accent` + 2px `accent` 아웃라인(오프셋 0).
- 셀렉트는 네이티브 `<select>` + 오른쪽 셰브론(`ink-secondary`). 커스텀 드롭다운은 만들지 않는다.
- 텍스트에어리어 최소 96px, 세로만 리사이즈.
- 드롭존 `.wl-dropzone`: 2px 점선 `border-strong`, `radius-14`, `space-20` 패딩, 안내 13px `ink-secondary`, 강조어만 `ink` 600. 허용 형식과 크기를 한 줄로.
- 가로 배치는 폼 컨테이너가 정한다(`grid-template-columns`), 입력은 항상 100%.
- 구현자가 넘기는 것: `label`, `help`, `error`, `required`, 나머지는 네이티브 속성. 필드 id/`aria-describedby` 연결은 컴포넌트가 한다.
