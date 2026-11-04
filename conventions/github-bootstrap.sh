#!/usr/bin/env bash
# 5개 레포에 라벨과 마일스톤을 같게 만든다. 여러 번 실행해도 안전하다.
# 사용: bash conventions/github-bootstrap.sh   (gh auth login 되어 있어야 한다)
set -euo pipefail

ORG=worklearn-hrd
REPOS=(worklearn-api worklearn-batch worklearn-web worklearn-infra worklearn-docs)
MILESTONES=(
  "1 기반 구축"
  "2 학습 이벤트 파이프라인"
  "3 콘텐츠 파이프라인"
  "4 모니터링·AWS 배포"
  "5 Spring Batch·캠페인"
  "6 AI 검색·넛지·추천"
  "7 README·부하 테스트"
)

label() { # repo name color description
  gh label create "$2" --repo "$ORG/$1" --color "$3" --description "$4" --force >/dev/null
  echo "  label  $2"
}

milestone() { # repo title
  local existing
  existing=$(gh api "repos/$ORG/$1/milestones?state=all&per_page=100" --jq ".[] | select(.title == \"$2\") | .number")
  if [ -z "$existing" ]; then
    gh api "repos/$ORG/$1/milestones" -f title="$2" --silent
    echo "  milestone  $2  (created)"
  else
    echo "  milestone  $2  (exists)"
  fi
}

for repo in "${REPOS[@]}"; do
  echo "== $repo"
  label "$repo" "type:task" "0E8A16" "작업 이슈. PR 하나와 1:1"
  label "$repo" "type:bug"  "D73A4A" "버그"
  if [ "$repo" = "worklearn-docs" ]; then
    label "$repo" "type:epic"   "5319E7" "기능·화면 단위 에픽. PR을 달지 않는다"
    label "$repo" "area:api"    "1D76DB" "worklearn-api가 움직인다"
    label "$repo" "area:batch"  "1D76DB" "worklearn-batch가 움직인다"
    label "$repo" "area:web"    "1D76DB" "worklearn-web이 움직인다"
    label "$repo" "area:infra"  "1D76DB" "worklearn-infra가 움직인다"
    label "$repo" "area:docs"   "1D76DB" "문서만 움직인다"
  fi
  for m in "${MILESTONES[@]}"; do milestone "$repo" "$m"; done
done
