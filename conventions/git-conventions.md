# Git 컨벤션

널리 쓰이는 표준을 그대로 쓴다: 브랜치는 **GitHub Flow**, 커밋은 **Conventional Commits 1.0.0**, 머지는 **Squash merge**, 이슈·PR은 **GitHub 템플릿**. 레포 5개 모두 같은 규칙이다.

## 브랜치

- `main` 하나만 영구 브랜치. 코드 레포 4개(api·batch·web·infra)는 직접 푸시하지 않고 PR로만 바뀐다(브랜치 보호: PR 필수, CI 통과 필수).
- `worklearn-docs`는 브랜치 보호를 걸지 않는다. 사용자가 직접 하는 변경(기획서·브리프 스냅샷 갱신, PRD·컨벤션 수정, 오타)은 `main`에 바로 커밋한다. 단 **ADR·트러블슈팅**과 **에이전트가 만든 변경**은 PR로 연다(아래 "코드 PR과 문서 PR").
- 작업 브랜치 이름: `<type>/<이슈번호>-<짧은-설명>` — 예 `feat/12-xapi-ingest-api`, `fix/31-progress-max-merge`, `docs/7-adr-outbox`. 이슈번호는 그 레포의 작업 이슈 번호다(에픽 번호가 아니다).
- 작업 브랜치는 머지 후 삭제한다. 오래 사는 브랜치(develop, release)는 두지 않는다.

## 커밋 — Conventional Commits

```
<type>(<scope>): <제목>

<본문 — 무엇을, 왜. 어떻게는 코드가 말한다>

<푸터 — Closes #12 / BREAKING CHANGE: …>
```

- `type`: `feat` 기능 · `fix` 버그 · `docs` 문서 · `refactor` 동작 변화 없는 구조 변경 · `test` 테스트 · `perf` 성능 · `build` 빌드·의존성 · `ci` 워크플로 · `chore` 그 외 잡일 · `revert` 되돌림
- `scope`(선택): 레포 안의 모듈 — api 예 `auth`, `xapi`, `progress`, `content`, `course`, `campaign`, `tenant`; batch 예 `campaign-launch`, `hr-sync`; web 예 `learner`, `admin`, `platform`, `ds`; infra 예 `compose`, `terraform`, `actions`
- 제목: 50자 이내, 마침표 없음, 명령형. 한국어로 쓴다(리뷰어가 한국어 사용자). 예 `feat(xapi): statement 수신 API와 Outbox 저장 추가`
- 본문: 72자에서 줄바꿈. "왜"를 쓴다. 선택이 있었으면 ADR 번호를 적는다.
- 푸터: 이슈 닫기 `Closes #12`, 호환성 깨짐 `BREAKING CHANGE: …`(제목 type 뒤 `!`도 함께: `feat(api)!: …`)
- 한 커밋은 한 가지 변경. "그리고"가 들어가면 쪼갠다.

## 이슈 — 세 층

| 층 | 어디에 만드나 | 무엇인가 | 템플릿 | 닫는 방법 |
| --- | --- | --- | --- | --- |
| **마일스톤** | 5개 레포 모두 | 기획서 §14의 단계. 이름은 `1 기반 구축` … `7 README·부하 테스트` | 없음 | 단계 완료 시 수동 |
| **에픽** | `worklearn-docs`에만 | 기획서 §2의 기능 하나 또는 브리프의 화면 하나. 동시성 이슈 1~6도 각각 에픽 | 에픽 | 하위 작업이 모두 닫히고 "원본 반영 필요"가 정리되면 수동 |
| **작업 · 버그** | 구현이 일어나는 코드 레포 | 반나절~이틀 크기. PR 하나와 1:1 | 작업, 버그 리포트 | 그 레포 PR의 `Closes #N` |

- 에픽과 작업은 GitHub **sub-issue**로 연결한다. 부모는 docs의 에픽, 자식은 코드 레포의 작업이다. 같은 organization 안이면 레포가 달라도 연결된다. 에픽 화면의 "Add sub-issue → Add existing issue"로 붙인다.
- 에픽에는 PR을 달지 않는다. 에픽은 하위 작업의 진행률을 보여 주는 부모일 뿐이다.
- 작업 이슈의 "상위 에픽" 칸에는 `worklearn-hrd/worklearn-docs#N`처럼 **전체 경로**를 쓴다. 레포를 넘는 참조는 항상 `owner/repo#N`이다.
- 작업이 더 잘게 나뉠 것 같으면 이슈를 또 만들지 말고 본문 체크리스트로 처리한다. 반대로 PR이 둘 이상 필요해 보이면 이슈를 먼저 쪼갠다.
- 에픽 없는 작업도 있다(설정, 리팩터링, 조사). 그때는 "상위 에픽"을 비운다.
- 제목은 커밋 제목처럼 짧게. 본문에는 완료 조건(acceptance)을 반드시 쓴다.
- organization Project `WorkLearn` 하나에 5개 레포를 모두 넣고 "Parent issue"로 묶어 본다. 레포 경계를 넘어 진행 상황을 보는 용도다.

## 라벨과 마일스톤

- `type:epic` · `type:task` · `type:bug` — 템플릿이 자동으로 붙인다. 이슈·PR 공용이며, PR 라벨은 연결된 이슈의 것을 따른다.
- `area:api` · `area:batch` · `area:web` · `area:infra` · `area:docs` — **docs 레포의 에픽에만** 붙인다(어느 레포가 움직이는지). 코드 레포에서는 레포 자체가 영역이므로 붙이지 않는다.
- 단계는 **마일스톤만** 쓴다. `phase:*` 라벨은 두지 않는다. 같은 뜻이 둘이면 반드시 어긋난다.
- 라벨과 마일스톤은 5개 레포에 같게 있어야 한다. `conventions/github-bootstrap.sh`가 만든다.

## Pull Request

- PR 하나 = 작업 이슈 하나. 이슈 없이 PR을 열지 않는다(사소한 오타 수정과 docs 레포의 문서 PR은 예외, 아래 참고). docs 레포에서 PR 없이 바로 커밋하는 경우는 "브랜치" 절을 따른다.
- 제목은 커밋 제목 규칙과 같다(`feat(xapi): …`). Squash merge 시 이 제목이 `main`의 커밋 제목이 된다.
- 본문은 PR 템플릿을 채운다. 체크리스트는 실제로 확인한 것만 체크하고, 해당 없는 항목은 줄을 지운다(체크 안 한 채 남기지 않는다).
- 작업 중이면 **Draft PR**로 열어 둔다. 리뷰 요청은 Ready for review 전환으로.
- 머지 방식은 **Squash and merge**. 머지 후 브랜치 삭제.
- 머지 조건: CI(빌드·테스트) 통과, 셀프 리뷰 완료, 설계가 바뀌었으면 문서 PR(ADR 또는 기획서 반영)이 열려 있음.
- 한 이슈에 PR이 둘 이상 필요한 경우는 예외다. 기본은 이슈를 쪼개는 것이고, 정말 예외일 때만 앞의 PR은 `Refs #N`, 마지막 PR만 `Closes #N`으로 쓴다.

## 코드 PR과 문서 PR

ADR과 트러블슈팅은 `worklearn-docs`에 있고 코드는 다른 레포에 있으므로 "같은 PR"이 될 수 없다. 대신 다음 규칙으로 묶는다. docs 레포는 브랜치 보호가 없지만 이 둘은 코드 PR에서 링크할 대상이자 사용자가 확인하는 관문이므로 **반드시 PR**로 연다. 에이전트가 만든 docs 변경도 같은 이유로 PR이다.

- 코드 PR에서 ADR이나 트러블슈팅이 필요해지면, **코드 PR을 머지하기 전에** docs 레포에 문서 PR을 연다.
- 두 PR은 서로를 링크한다. 코드 PR 본문의 "관련 문서 PR"에 `worklearn-hrd/worklearn-docs#N`, 문서 PR 본문의 "관련"에 코드 PR과 에픽을 적는다.
- 문서 PR은 별도 이슈 없이 열 수 있다. 대신 에픽이나 코드 이슈를 `Refs`로 참조한다. 브랜치 이름은 `docs/<에픽번호>-<설명>`.
- 문서 PR은 코드 PR이 머지된 **같은 날** 머지한다. 나중에 몰아 쓰지 않는다.
- 기획서·브리프 스냅샷(`.md`)을 고쳤다면 문서 PR의 "원본 반영 필요"에 적고, 사용자가 Claude Docs 원본에 반영한다.

## 템플릿 — 원본과 적용

- 템플릿의 **원본은 `worklearn-hrd/.github` 레포**다. 이슈 템플릿은 `.github/ISSUE_TEMPLATE/`에, PR 템플릿은 루트 `PULL_REQUEST_TEMPLATE.md`에 두면 코드 레포 4개에 기본 적용된다(이슈 템플릿을 루트 `ISSUE_TEMPLATE/`에 두면 GitHub이 무시한다). 고칠 때는 여기서 고친다.
- `worklearn-docs`는 에픽 템플릿이 필요하므로 자기 `.github/`를 가진다. 레포에 이슈 템플릿이 하나라도 있으면 그 레포에는 organization 기본 템플릿이 보이지 않으므로, docs에는 필요한 양식을 전부 둔다.
- docs 레포 안에 템플릿 사본 폴더를 두지 않는다. 사본이 둘이면 어긋난다.

| 레포 | 이슈 템플릿 | PR 템플릿 |
| --- | --- | --- |
| api · batch · web · infra | organization 기본: 작업, 버그 리포트 | organization 기본 |
| worklearn-docs | 자체: 에픽, 작업 | 자체(문서 PR용) |

## 태그와 릴리스

- 단계가 끝나면 `v0.<단계>.0` 태그 + GitHub Release(단계 완료 기준을 본문에). 예 `v0.4.0` = 공개 배포.
- 동시성 이슈는 기획서 §9 규칙대로 단계별 태그를 남긴다: `issue1-step0`(재현 실패) → `issue1-step1` … → `issue1-final`.
