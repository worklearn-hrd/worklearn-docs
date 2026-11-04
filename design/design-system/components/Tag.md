# Tag
주제 태그(`content.keywords`, 과정 주제)와 분류 라벨. 색은 `accent-tint` 바탕에 `accent` 글자 하나뿐이며, 중립 라벨만 `--neutral`(`surface-muted`/`ink-secondary`, 600).

- 기본 12px·`3px 8px`·`radius-6`. 목록 카드 안의 작은 태그는 `--sm`(11px·`2px 6px`). 강조는 `--strong`(600).
- 한 묶음은 `.wl-tag-group`(`space-6` 간격, 줄바꿈). 한 줄에 최대 3개, 넘치면 `+2`를 `--neutral`로.
- 태그는 **클릭 대상이 아니다**. 필터로 쓰려면 `Button --pill`을 쓴다.
- 상태(완료·실패)는 Tag가 아니라 StatusBadge다.
- 구현자가 넘기는 것: `children`(텍스트), `size`, `tone`(`accent`|`neutral`), `strong`.
