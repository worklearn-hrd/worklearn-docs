# CurriculumList
과정 상세의 커리큘럼(콘텐츠 순서)과 플레이어의 챕터 목록. 행마다 상태 디스크 `disc-22` + 제목 + 길이.

- 모바일: 행 패딩 `12px 14px`, 간격 `space-12`, 14px. PC(`--pc`): 패딩 `14px 4px`, 간격 `space-14`.
- 상태: 완료 `is-done`(`success` 디스크 + 체크, 제목 `ink-secondary`), 현재 `is-current`(`accent-tint` 바탕·`radius-10`, `accent` 링 + 8px 점, 제목 600), 미시청(`surface-sunken` 링). PC의 현재 행은 좌우로 `space-8`만큼 튀어나와(음수 마진) 바탕이 글보다 넓다.
- 길이는 `38:02`·`PDF 12쪽`처럼 12px `ink-secondary`, 오른쪽 고정.
- 행은 전체가 링크(플레이어로). 잠긴 콘텐츠(선행 필수)는 opacity .45 + 자물쇠 아이콘, 클릭 시 안내.
- 플레이어 안에서는 `.wl-player__chapter`를 쓴다(같은 구조, 어두운 색: 바탕 `dark-accent-tint`, 글자 `dark-accent-ink`).
- 구현자가 넘기는 것: `items`(title, duration, status: done|current|pending|locked, href), `dense`(pc).
