# ADR-001: Spring Boot 4.1 채택

- 상태: Accepted
- 날짜: 2026-11-04
- 결정자: 홍예석
- 관련: 기획서 §4 기술 선택 근거, §10 Spring Batch 잡 설계, worklearn-hrd/worklearn-api#1

## 맥락 (Context)

기획서 §4는 "Spring Boot 3 / Java 21"로 적혀 있었다. 2026-11-04에 `worklearn-api` 프로젝트를 만들 때 Spring Initializr는 4.x(4.0.9, 4.1.2)만 제시했고, 3.4.1로 내려 생성한 뒤 설정을 검토하니 두 가지가 드러났다.

- Spring 공식 지원 일정(api.spring.io): 3.4.x OSS 지원 2025-12-31 종료, 3.5.x 2026-06-30 종료, 4.0.x 2026-12-31 종료, 4.1.x 2027-07-31 종료. 착수 시점에 OSS 지원이 남은 라인은 4.1.x뿐이다.
- Initializr가 준 Gradle 9.8.2 래퍼는 Boot 3.x의 지원 범위(7.6.4+ 또는 8.4+) 밖이다. Gradle 9 지원은 Boot 4.0부터다(spring-boot #43573). 3.x로 가려면 래퍼를 8.14로 내려야 한다.

프로젝트는 2027년까지 운영·면접에 쓸 포트폴리오라, 만드는 시점에 이미 지원이 끝난 버전으로 시작하는 것은 설명하기 어렵다.

## 고려한 대안 (Options)

1. **Spring Boot 3.5.16 + Gradle 8.14** — 기획서 그대로이고 예제·블로그가 많다. / OSS 지원이 끝났고(2026-06) 운영 중 보안 패치를 받지 못한다. 래퍼를 바꿔야 한다.
2. **Spring Boot 4.0.9** — 4.x 첫 라인. / 두 달 뒤(2026-12) 지원이 끝난다.
3. **Spring Boot 4.1.2** — 2027-07까지 지원, Initializr 기본값, Gradle 9 래퍼를 그대로 쓴다. / 스타터 분할, Jackson 3, Hibernate 7, Spring Security 7, Spring Batch 6 등 변경이 많고 참고 자료가 적다.

## 결정 (Decision)

Spring Boot 4.1.2를 쓴다. 지원 기간이 유일한 결정 요인이며, 바뀐 스택은 문서를 직접 읽어 흡수한다.

## 결과 (Consequences)

- 좋아지는 것: 운영 기간 내내 OSS 패치를 받는다. Gradle 9 래퍼와 Initializr 기본값을 그대로 쓴다. "최신 스택으로 설계했다"를 면접에서 사실로 말할 수 있다.
- 감수하는 것: 스타터가 모듈별로 나뉜다(`spring-boot-starter-webmvc`, 테스트 스타터 `*-test` 분리). Jackson 3는 패키지가 `tools.jackson`이다. Hibernate 7(Jakarta Persistence 3.2) 때문에 QueryDSL은 openfeign 포크(7.x)를 쓴다. `worklearn-batch`는 Spring Batch 6이 되어 JobRepository 설정 방식을 다시 확인해야 한다. 3.x 기준 예제는 그대로 쓸 수 없다.
- 따라오는 일: 기획서 §4·§10 문구를 4.1·Batch 6으로 고쳤다(원본 반영 필요). 작업 공간 CLAUDE.md 기술 규칙을 고쳤다. api #1 이슈의 의존성 목록을 4.x 스타터 이름으로 바꿨다. batch 프로젝트 생성 시 §10의 `batch_meta`·`initialize-schema=never`가 Batch 6에서도 같은지 확인하고 다르면 ADR을 더한다.
