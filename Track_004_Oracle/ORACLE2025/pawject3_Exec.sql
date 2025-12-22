--3차_프로젝트_운동파트
--** 반려동물 운동스마트 게시판 **
--내용. 
--운동스마트 게시판에 오늘 하루 반려동물과 함께 어떤 날씨에 어느 장소에서 운동을 했는지 자유롭게 글을 작성할 수 있는게시판
--(운동챌린지 게시판에서는 '##운동을 했습니다.'만 작성할 수 있었다면, 
-- 운동스마트게시판에서는 '##장소에서 ##운동을 했었는데, 날씨도 화창해서 운동하기에 좋았다.'
-- 라고 어떠한 환경에서 운동을 했는지까지 작성할 수 있게 기능 구현.)

--주요기능
-- 글을 작성할 때 반려동물과 함께 어떤 날씨에 어느 장소에서 운동을 했는지와 같은 내용들을 입력할 수 있도록
--GPS기반 지도와 날씨를 확인할 수 있는 기능을 구현.
-- 글을 작성할 때(or 게시판글 상세보기할때) 어떤 날씨에 운동을 했는지 날씨에 따라 게시판 배경에 날씨와 관련된 효과를 구현
-- 날씨에 따라 운동 추천 & 추천이유
-- 몇개의 키워드를 이용해서 AI가 자동글쓰기를 할 수 있도록 기능 구현 ( 물론 자동 글쓰기 기능을 사용하지 않아도 글쓰기 가능  )



-- 3차_프로젝트_운동파트 - CRUD
-- 운동정보게시판
desc exerciseinfo;
-- CREATE (create, insert)
-- create table
CREATE TABLE exerciseinfo (
    execid         number          PRIMARY KEY,
    exectype       varchar2(50),
    description    varchar2(255),
    avgkcal30min number,
    exectargetmin  number,
    suitablefor    varchar2(100),
    intensitylevel varchar2(100),
    createdat     date default   sysdate,
    updatedat     date default   sysdate
);

--시퀀스 
create sequence exerciseinfo_seq;

--insert
-- 1.산책
insert into exerciseinfo (execid, exectype, description, avgkcal30min, exectargetmin, suitablefor, intensitylevel ) 
values(exerciseinfo_seq.nextval, '산책', '기본적인 야외활동/스트레스 해소', 80.0, 30, '모든 견종, 노령견 포함', '저강도' );

-- 2.노즈워크
insert into exerciseinfo (execid, exectype, description, avgkcal30min, exectargetmin, suitablefor, intensitylevel ) 
values(exerciseinfo_seq.nextval,
       '노즈워크', 
       '간식을 숨겨두고 냄새로 찾게 하는 놀이로, 정신 자극과 집중력 향상에 좋습니다.', 
       60.0,
       20, 
       '실내 생활견, 고양이도 가능',
       '저강도');

-- 3. 수영
insert into exerciseinfo (execid, exectype, description, avgkcal30min, exectargetmin, suitablefor, intensitylevel ) 
values(exerciseinfo_seq.nextval,
       '수영', 
       '관절에 부담이 적고 전신 근육을 사용하는 고강도 운동', 
       120.0, 
       25, 
       '중형견 이상, 관절 약한 반려동물', 
       '고강도');

-- 4. 터그놀이
insert into exerciseinfo (execid, exectype, description, avgkcal30min, exectargetmin, suitablefor, intensitylevel ) 
values(exerciseinfo_seq.nextval,
        '터그놀이', 
        '줄다리기 형태의 놀이로, 근력과 집중력을 동시에 향상', 
        70.0,
        15, 
        '활동적인 소형견, 고양이도 가능',
        '중강도');

-- 5. 레이저 포인터 추적
insert into exerciseinfo (execid, exectype, description, avgkcal30min, exectargetmin, suitablefor, intensitylevel ) 
values(exerciseinfo_seq.nextval,
        '레이저 포인터 추적', 
        '고양이에게 인기 있는 실내 운동, 사냥 본능을 자극', 
        50.0, 
        10, 
        '고양이 전용, 실내 생활 반려동물', 
        '중강도');


-- READ (select / selectAll )
-- select
select * from exerciseinfo where execid=1;

--selectAll
select * from exerciseinfo order by execid desc;



-- UPDATE
update exerciseinfo set exectype='조깅', description='일반적인 산책보다 강도가 높음.', avgkcal30min=100.0, 
exectargetmin=15, suitablefor='관절이 건강하고, 뛰는 것을 좋아하는 반려동물', intensitylevel='중강도' 
where  execid=1;


-- DELETE
delete from exerciseinfo   where  execid=1;

-- 기본기능
-- spring boot때 알려주신 기능도 넣기 (검색시 3개? 검색결과 출력)
-- PAGING (전체게시글) 
-- 이전  1 2 3 ....9 10 다음
select * 
from ( 
    select row_number() over (order by createdat desc) as rnum,
    execid, exectype, description, avgkcal30min, exectargetmin, suitablefor, 
    intensitylevel, createdat, updatedat
    from exerciseinfo 
) A 
where A.rnum between 1 and 10;

-- 전체게시글을 페이지당 10개씩 볼 수 있음. 
select count(*) from exerciseinfo;

-- search(수정 필요)
select * from exerciseinfo where exectype LIKE '%' || $1 || '%';

-- 페이징 + 검색어
select * from (
    select row_number() over (order by createdat desc) as rnum,
    execid, exectype, description, avgkcal30min, exectargetmin, suitablefor, 
    intensitylevel, createdat, updatedat
    from exerciseinfo 
    where exectype LIKE '%' || search || '%'
) A
where A.rnum between 1 and 10;

-- 페이징 + 검색어_검색어 기준 전체 건수
select count (*) 
from exerciseinfo
where exectype  LIKE '%' || search || '%';




-- 날씨기반 운동추천기능
--(기능을 구현할려고 하는 거니깐 insert는 데이터를 넣어야되서 있어야하지만(그럼 글쓰기 기능도 있어야하나...), update, delete는 어떻게 해야할까...)
-- CREATE( create, insert)
desc execrecommendation;
-- create
create table execrecommendation (
    recid         number           primary key,   -- 기본키
    weather       varchar2(30),                   -- 날씨
    maxtemp       number           not null,      -- 최고기온       
    mintemp       number           not null,      -- 최저기온 
    activityplace varchar2(30)     not null,      -- 실내/실외활동 여부
    reason        varchar2(255)    not null       -- 추천이유
);
-- 시퀀스
create sequence execrecommendation_seq;

-- desc execrecommendation;
-- drop table execrecommendation;

-- insert
-- 맑음
INSERT INTO execrecommendation (recid, weather, maxtemp, mintemp, activityplace, reason)
VALUES 
(execrecommendation_seq.nextval, '맑음', 20, 15, '야외활동', '날씨가 맑고 선선하기 때문에 산책을 추천합니다.');

-- 흐림
INSERT INTO execrecommendation (recid, weather, maxtemp, mintemp,  activityplace, reason)
VALUES 
(execrecommendation_seq.nextval, '흐림', 22, 17, '실내활동', '날씨가 흐려 외부 활동이 적합하지 않으므로 실내 놀이를 추천합니다.');

-- 더운날
INSERT INTO execrecommendation (recid, weather, maxtemp, mintemp, activityplace, reason)
VALUES 
(execrecommendation_seq.nextval, '맑음', 34, 25, '야외활동', '기온이 너무 높아 야외활동은 위험하므로 실내에서 쉬는 것을 추천합니다.');

-- 추운날
INSERT INTO execrecommendation (recid, weather, maxtemp, mintemp, activityplace, reason)
VALUES 
(execrecommendation_seq.nextval, '흐림', 1, 0,  '실내활동', '기온이 낮고 때로는 눈이 내리는 지역이 있기 때문에, 실내놀이를 추천합니다.');


-- READ( select, selectall )
-- selectAll
select * from execrecommendation order by recid desc;

-- select
select * from execrecommendation where recid=1;


-- 사용안하면 지울 예정
-- 사용안하면 지울 예정
-- UPDATE
update execrecommendation set weather='안개', maxtemp='19', mintemp='10',
                     activityplace='실내활동' , reason='안개가 많이 껴있어, 가시거리 확보가 힘들기 때문에 실내활동을 추천합니다.'
where recid='1';

-- DELETE
delete from execrecommendation where recid='1';

-- CRUD_TEST_커밋
commit;

-- 기본기능
-- spring boot때 알려주신 기능도 넣기 (검색시 3개? 검색결과 출력)
-- PAGING 
-- 이전  1 2 3 ....9 10 다음
select *
from (
    select row_number() over (order by recid desc) as rnum,
           recid, weather, maxtemp, mintemp, activityplace, reason
    from execrecommendation
) A
where A.rnum between 1 and 10;

-- 전체게시글을 페이지당 10개씩 볼 수 있음. 
select count(*) from execrecommendation;

-- search(수정 필요)
select * from execrecommendation where weather LIKE '%' || $1 || '%';

-- 페이징 + 검색어
select *
from (
    select row_number() over (order by recid desc) as rnum,
           recid, weather, maxtemp, mintemp, activityplace, reason
    from execrecommendation
    where weather LIKE '%' || search || '%'
) A
where A.rnum between 1 and 10;

-- 페이징 + 검색어_검색어 기준 전체 건수
select count (*) 
from execrecommendation
where weather  LIKE '%' || search || '%';
-- 사용안하면 지울 예정
-- 사용안하면 지울 예정



-- 운동스마트게시판 (운동챌린지 게시판(글관련 내용) + API기반)
-- CREATE (create, insert)
desc execsmart;
drop table execsmart;
-- create table
create table execsmart(
    postid     number            primary key,
    execid     number,
    userid     number,
    recid      number,
    etitle     varchar2(100),
    econtent   clob,
    eimg       varchar2(255),  --이미지경로
    ehit       number            default 0,
    createdat  date              default sysdate,
    updatedat  date              default sysdate,
    
    constraint fk_execsmart_user foreign key (userid)    references USERS(userid),
    constraint fk_execsmart_exec foreign key (execid)    references exerciseinfo(execid),
    constraint fk_execsmart_rec  foreign key (recid)     references execrecommendation(recid)
);  

-- 시퀀스
create sequence execsmart_seq;

-- insert
insert into execsmart  (postid,                execid, userid,recid     ,etitle,                  econtent,                                                         eimg     )
               values  (execsmart_seq.nextval, 6 ,     1,    1       , '반려동물과 함께하는 산책', '반려동물과 함께하는 산책은 주인과 반려동물 모두에게 긍정적인영향을 줍니다.', '산책.png');
-- 이미지 업로드용(insert)
--insert into execboard  (postid,                execid, userid, recid    , etitle,                  econtent,                                                         eimg     )
--               values  (execboard_seq.nextval, 41 ,     1,     1        ,'반려동물과 함께하는 산책', '반려동물과 함께하는 산책은 주인과 반려동물 모두에게 긍정적인영향을 줍니다.', '산책.png');



-- READ (select / select * )
-- selectAll
select * from execsmart order by postid desc;
-- select
select * from execsmart where postid='23';  --상세보기


-- UPDATE
update execsmart set etitle='반려동물과 함께하는 노즈워크', 
                     econtent='노즈워크는 반려동물이 참을성을 길러줍니다.' ,
                execid=6,   eimg = '노즈워크.png'
where postid='23';

-- 이미지업로드용(update)
--update execsmart set etitle='반려동물과 함께하는 노즈워크', 
--                     econtent='노즈워크는 반려동물이 참을성을 길러줍니다.' ,
--                execid=41,   eimg = '노즈워크.png'
--where postid='26';

-- DELETE
delete from execsmart where postid='23'and execid='6';

-- CRUD_TEST_커밋
commit;


-- 기본기능
-- spring boot때 알려주신 기능도 넣기 (검색시 3개? 검색결과 출력)
-- PAGING 
-- 이전  1 2 3 ....9 10 다음
select *
from (
    select row_number() over (order by createdat desc) as rnum,
           postid, execid, userid, recid, etitle, econtent, eimg, ehit,
           createdat, updatedat
    from execsmart
) A
where A.rnum between 1 and 10;


-- 전체게시글을 페이지당 10개씩 볼 수 있음. 
select count(*) from execsmart;

-- search(수정 필요)
select * from execsmart where etitle LIKE '%search%';

-- 페이징 + 검색어
select *
from (
    select row_number() over (order by createdat desc) as rnum,
           postid, execid, userid, recid, etitle, econtent, eimg, ehit,
           createdat, updatedat
    from execsmart
    where etitle LIKE '%' || search || '%'
) A
where A.rnum between 1 and 10;

-- 페이징 + 검색어_검색어 기준 전체 건수
select count (*) 
from execsmart
where etitle  LIKE '%' || search || '%';



-- API기능
-- ★ 키워드 몇개 적어주면 AI가 알아서 글쓰기 (AI를 사용안해도 글 쓰기가능.)
-- ★ 날씨에 따라 운동추천과 추천이유도 적어줘
-- ★ gps 기반산책코스 지도

-- .html에 코드입력
-- ★ 날씨 이용해서 글 쓸때  배경바꾸기 (코드입력 <style/>?)






-- Test
--drop table exerciseinfo;
--drop sequence exerciseinfo_seq;

--desc execrecommendation;

--commit;


-- 사용자정보 (외래키 연동 Test)
CREATE TABLE USERS (
    USERID       NUMBER          PRIMARY KEY,         -- 기본키
    EMAIL        VARCHAR2(200)   NOT NULL UNIQUE,     -- 이메일 (유니크)
    NICKNAME     VARCHAR2(100)   NOT NULL,            -- 별명(이름)
    PASSWORD     VARCHAR2(100)   NOT NULL,            -- 비밀번호
    UFILE        VARCHAR2(255),                       -- 이미지 파일명
    CREATEDAT    DATE            DEFAULT SYSDATE,     -- 등록일
    MOBILE       VARCHAR2(200),                       -- 전화번호
    PROVIDER     VARCHAR2(50),                        -- 인증 제공자(local, google 등)
    PROVIDERID   VARCHAR2(100)                        -- 제공자 id
);
-- 개별 테스트용
insert into USERS (USERID, EMAIL, NICKNAME,        PASSWORD, UFILE,      MOBILE,    PROVIDER,   PROVIDERID)
values            (1,      '1@1', 'test_nickname', '1111',   'test.png', '010123' , 'provider', 'providerid'  );

-- 최종 테스트용
insert into USERS (USERID, EMAIL,          NICKNAME,  PASSWORD, UFILE,  MOBILE,           PROVIDER,  PROVIDERID)
values            (100,    'admin@admin', 'admin',    '123',   '1.png', '010-1234-5678' , 'local',   'local_id'  );

-- 최종테스트 시 사용
-- userid=100, email=admin@admin, nickname=admin, password=123

--// 2차 프로젝트_drop table
drop table USERS;
drop table PET;
drop table REVIEW;

desc execsmart;
desc users;
desc PET;
desc REVIEW;

commit;

SELECT a.table_name,
       a.constraint_name
FROM user_constraints a
WHERE a.constraint_type = 'R'
  AND a.r_constraint_name IN (
    SELECT constraint_name
    FROM user_constraints
    WHERE table_name = 'USERS'
  );

DROP TABLE REVIEW CASCADE CONSTRAINTS;



















