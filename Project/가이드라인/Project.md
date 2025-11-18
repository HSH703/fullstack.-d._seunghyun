■ 전체 컨셉 : MBTI 기반 성향 맞춤 플랫폼(수업예제)
- 단계별 기술확인

🎈 1. 기획의도(자신의 말로 내용바꾸기) : 
MBTI Universe 는 성향기반으로 콘텐츠를 추천하고, 감정을 케어하며, 커뮤니티와 
일정을 연결하는 통합 라이프스타일 플랫폼입니다. 다양한 기술 스택을 활용해 모듈화된 구조로 개발되었으며, 
실무에서 요구되는 보안, UX데이터 분석까지 모두 담았습니다. 

🎈 2. 연결구조 


```
[1. JSP] → [2. SPRING MVC 관리자 시스템]
                ↓ 콘텐츠등록
[3. SPRING BOOT + Thymeleaf]  ← 사용자테스트 / 추천받는 기능
[4. Node + React]      ← 커뮤니티기능 
[5. SPRING BOOT + JWT] ← 중앙서버기능
        ↑
[6. flutter] ← 모바일앱
```

● 주제 : MBTI 테스트 + 결과보기
1. JSP + Oracle 
> 기초CRUD
- 기능 : MBTI 질문 / 보기 등록



아이디어
- MBTI 질문/보기등록 (성향파악)
- 콘텐츠 미리보기 (ENTP) 
- 추천 콘텐츠 통계 ( 음악, 책, ,,,,, )
- 유형별 콘텐츠 통계 (간단한 그래프) 
- 사용자 응답저장



● 주제 : 추천콘텐츠 등록 밋 관리 담당
2. SPRING MVC + Mybatis + Jstl
> 관리자용 (- 전자정부 + 프로젝트/나라 프로젝트 겨냥)
> SPRING MVC 확장 되지전에 초기 관리자 시스템 역할

(1명씩 담당해서 CRUD진행)
- 콘텐츠담당
- 질문보기담당
- 미리 일정알람 예약담당 
- ,,,,



● 주제 : MBTI 성향 기반 콘텐츠 추천 웹앱
3. SPRING boot + Jpa + Thymeleaf(spring)
- 유형별 인기 콘텐츠 랭킹
- 동적필터링 / 검색기능담당
- csv 업로드 질문 일관등록(아이디어/다른데에서 사용해도 됨.) ...


● 주제 : MBTI 커뮤니티 + 취양 공유 플랫폼
4. Node + React  --AI 회사 겨냥 
> SNS


● 주제 : MBTI기반 라이프스타일 통합 앱 + 수익형
5, 6 진행순서 바뀔수도 있음.
5. SPRING boot + Jpa + Jwt + Redis + react  (★MAIN콘텐츠)


● 주제 : 모바일 UX
6. Flutter
> 모바일


(각단계별로 하나씩 프로젝트 진행 / 최소 6개의 프로젝트를 진행하게 될 예정.)
1. JSP + Oracle 
2. SPRING MVC + Mybatis + Jstl
3. SPRING boot + Jpa + Thymeleaf(spring)
4. Node + React  
5. SPRING boot + Jpa + Jwt + Redis + react  (★MAIN콘텐츠)
6. Flutter
