# PlayerSurface
학습 플레이어의 어두운 표면. 화면 전체가 `dark-ground`이며, 이 컴포넌트 밖에서는 `dark-*` 토큰을 쓰지 않는다(플랫폼 사이드바 제외).

- 비디오 `.wl-player__video`: `media-ground` 검정, 16:9. 모바일은 390×219 풀블리드(모서리 0), PC는 `--rounded`(`radius-12`). 가운데 재생 버튼 `media-control` 디스크 64px(PC `--lg` 80px), 아이콘 `ink`. 스크럽 바 `media-control-faint` 트랙 + `accent` 채움 4px.
- 제목 `.wl-player__title`(`heading-19`), 메타 12px `dark-ink-secondary`(`2/5 · 38:02 · 57%`), 재생 중 배지 `StatusBadge --dark-accent`.
- 패널 `.wl-player__panel`(`dark-surface`, `dark-border`, `radius-14`, `space-16`): 챕터 목록(`.wl-player__chapter`) 또는 트랜스크립트(`.wl-player__prose` 14px/1.6 `dark-ink-prose`). 모바일은 시트로 올라오며 위에 드래그 핸들 `.wl-player__handle`(36×4 `dark-border-strong`).
- 버튼은 `Button --dark`(챕터, 배속) 와 `--primary`(다음 콘텐츠). 텍스트 링크·강조는 `dark-accent-ink`.
- 플레이어는 YouTube/HTML5 `<video>`를 그대로 내장하고 크롬만 이 규격으로 감싼다. 진행 이벤트(progressed 10%, completed)는 이 컴포넌트가 발행한다.
- 구현자가 넘기는 것: `source`, `title`, `chapters`, `transcript`, `progress`, `onProgress`, `layout`(mobile|pc).
