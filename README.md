# worklearn-docs

워크런(WorkLearn) 프로젝트의 문서 저장소. 기획·디자인·결정·트러블슈팅이 여기에 모인다. 코드는 `worklearn-api`, `worklearn-batch`, `worklearn-web`, `worklearn-infra`에 있다.

## 구성

| 경로 | 내용 |
| --- | --- |
| `기획서.md` | 전체 기획서(개요, 기능, 아키텍처, 테이블, xAPI, Kafka, API, 동시성 이슈, 배치, 모니터링, 교육학 매핑, 인프라, 마일스톤, 리스크). 원본은 Claude Docs이며 이 파일은 스냅샷 |
| `diagrams/` | 기획서에 들어가는 다이어그램 PNG(아키텍처, 도메인 모델, 로드맵) |
| `design/디자인 브리프.md` | 역할 4개, 화면 16개와 구현 단계, 핵심 흐름, 시각 방향 |
| `design/<역할> 화면/*.png` | 화면 목업 20장(학습자 모바일 8, 학습자 PC 3, 운영자 4, 테넌트 관리자 2, 플랫폼 운영자 3) |
| `design/design-system/` | 디자인 시스템: `tokens.json`(색·타입·간격·반지름), `README.md`(브랜드 북·사용 규칙), `bundle.css`(컴포넌트 치수 사양), `components/*.md`(컴포넌트별 가이드), 로고 SVG |
| `conventions/git-conventions.md` | 브랜치·커밋·이슈 위계(마일스톤 > 에픽 > 작업)·PR·라벨·템플릿·태그 규칙 |
| `.github/` | 이 레포 자체의 이슈 템플릿(에픽·작업)과 문서 PR 템플릿. 코드 레포용 템플릿의 원본은 `worklearn-hrd/.github` 레포 |
| `conventions/github-bootstrap.sh` | 5개 레포에 라벨·마일스톤을 같게 만드는 스크립트 |
| `adr/` | Architecture Decision Record. `ADR-NNN-제목.md` |
| `troubleshooting/` | 문제 → 측정 → 해결 기록. `YYYY-MM-DD-제목.md` |

## 읽는 순서

처음이면 `기획서.md` §1·§2 → `design/디자인 브리프.md` → `adr/`. 구현에 들어가면 §5(테이블)·§8(API)·§9(동시성)·§14(마일스톤과 1차 지침)를 옆에 두고, 착수 단위와 순서는 GitHub 이슈(마일스톤 > 에픽 > 작업)를 따른다. 기획서 순서대로 하나씩 만들며 어긋나는 곳은 그때 고치고 ADR로 남긴다.
