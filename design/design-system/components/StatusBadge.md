# StatusBadge
엔티티의 상태를 한 단어로. 12px 600, `3px 8px`, `radius-6`, `*-tint` 바탕 + 상태색 글자.

| tone | 글자 / 바탕 | 상태 값(기획서 enum) |
| --- | --- | --- |
| `--success` | `success` / `success-tint` | 완료, 활성(ACTIVE), 준비됨(READY), 진행 중(RUNNING), 정상, 통과(PASSED) |
| `--warning` | `warning` / `warning-tint` | 검토 필요(REVIEW), 임박, 기준 미달 |
| `--critical` | `critical` / `critical-tint` | 실패(FAILED), 정지(SUSPENDED), 오답 |
| `--accent` | `accent` / `accent-tint` | 처리 중(PROCESSING), 초대됨(INVITED), 새 항목 |
| `--neutral` | `ink-secondary` / `surface-muted` | 초안(DRAFT), 종료(CLOSED), 보관(ARCHIVED), 퇴직(LEFT) |
| `--dday` | `ink-on-accent` / `warning`, 700, `radius-pill`, `3px 9px` | 마감 D-n (D-7 이내) |
| `--dark-accent` | `dark-accent-ink` / `dark-accent-tint` | 플레이어의 '재생 중' |
| `--overlay` (+`is-accent`) | `ink-on-accent` / `overlay-ink`, 10px, `1px 5px`, `radius-4`, 섬네일 우하단 절대 위치 | 재생시간 38:02, Shorts |

- 색만으로 뜻을 전하지 않는다: 글자는 항상 있고, 목록에서는 같은 상태가 같은 단어다(`실패`를 `오류`로 바꿔 쓰지 않는다).
- 한 셀·한 카드에 배지는 하나. 두 상태가 있으면 더 급한 것(critical > warning > accent > success > neutral).
- 구현자가 넘기는 것: `tone`, `children`. 상태 enum → tone 매핑은 한 곳(`statusTone.ts`)에 둔다.
