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
drop table exerciseinfo;
drop sequence exerciseinfo_seq;
commit;
-- CREATE (create, insert)
-- create table
desc exerciseinfo;
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

-- 글쓰기
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
-- 전체게시글보기
--selectAll
select * from exerciseinfo order by execid desc;

-- 게시글상세보기
-- select
select * from exerciseinfo where execid=1;


-- 게시글수정
-- UPDATE
update exerciseinfo set exectype='조깅', description='일반적인 산책보다 강도가 높음.', avgkcal30min=100.0, 
exectargetmin=15, suitablefor='관절이 건강하고, 뛰는 것을 좋아하는 반려동물', intensitylevel='중강도' 
where  execid=1;

-- 게시글삭제
-- DELETE
delete from exerciseinfo   where  execid=1 and exectype='조깅';



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



-- 날씨정보저장필드
-- 날씨정보저장
-- create
commit;
drop table saveweather;
create table saveweather (
    wid           number(10)       primary key,    -- 날시고유
    weather       varchar2(30),                    -- 날씨
    maxtemp       number           not null,       -- 최고기온       
    mintemp       number           not null,       -- 최저기온 
    moistpercent   number          not null,       -- 습도
    rainpercent   number           not null,        -- 강수량
    basedate      date            default sysdate -- 날짜    
);
desc saveweather;

commit;

 -- 시퀀스
create sequence weather_seq;
-- insert
-- 맑음
INSERT INTO saveweather ( wid,                 weather, maxtemp, mintemp, moistpercent, rainpercent)
VALUES                  ( weather_seq.nextval, '맑음',  20,      15,      40,         30);

-- 안개
INSERT INTO saveweather (wid,                 weather, maxtemp, mintemp, moistpercent, rainpercent)
VALUES                  (weather_seq.nextval, '흐림',   22,     17,       80,          90);

-- 더운날
INSERT INTO saveweather ( wid, weather, maxtemp, mintemp, moistpercent, rainpercent)
VALUES                  ( weather_seq.nextval, '더움',  34,      25,      30,           20);

-- 추운날
INSERT INTO saveweather ( wid, weather, maxtemp, mintemp, moistpercent, rainpercent)
VALUES                  (weather_seq.nextval, '눈',    1,       0,       10,          10);


-- READ 
-- 날씨전체저장리스트
-- selectAll
select * from saveweather order by wid desc;

-- select
select * from saveweather where wid=1;

-- UPDATE
-- 날씨저장리스트 수정
update saveweather
set weather = '흐림',
    maxtemp = 19,
    mintemp = 10,
    moispercent = 90,
    rainpercent = 90
where wid=1;

-- DELETE
delete from saveweather where wid=1;

-- 기본기능
-- spring boot때 알려주신 기능도 넣기 (검색시 3개? 검색결과 출력)
-- PAGING 
-- 이전  1 2 3 ....9 10 다음
select *
from (
    select row_number() over (order by basedate desc) as rnum,
           wid, basedate, weather, maxtemp, mintemp, moistpercent, rainpercent
    from saveweather
) A
where A.rnum between 1 and 10;

-- 전체게시글을 페이지당 10개씩 볼 수 있음. 
select count(*) from saveweather;

-- search(수정 필요)
select * from saveweather where weather LIKE '%' || $1 || '%';

-- 페이징 + 검색어
select *
from (
    select row_number() over (order by wid desc) as rnum,
           wid, basedate, weather, maxtemp, mintemp, moistpercent, rainpercent
    from saveweather
    where weather LIKE '%' || search || '%'
) A
where A.rnum between 1 and 10;

-- 페이징 + 검색어_검색어 기준 전체 건수
select count (*) 
from saveweather
where weather  LIKE '%' || search || '%';


-- 산책 코스 필드
desc walkingcourse;
drop table walkingcourse;
drop sequence walkingcourse_seq;
create table walkingcourse (
    courseid       number(10)       primary key,       -- 코스 고유 ID
    postid         number,                             -- 게시글(외래키)
    location       varchar2(255)    not null,          -- 위치 (예: 공원, 산, 강변)
    lat            number(5)        not null,          -- 위도
    lng            number(5)        not null,          -- 경도
    createdat      date             default sysdate   -- 등록일
 );   
-- 최종테스트때 외래키달기 
-- constraint fk_walkingcourse_smart    foreign key (postid)   references execsmart(postid)

 -- 시퀀스
create sequence walkingcourse_seq;

-- insert
-- 인천대공원
insert into walkingcourse ( courseid,                    postid, location,    lat,        lng  ) 
values                    ( walkingcourse_seq.nextval,   1,      '인천대공원',  37.498095,  127.02761 );
-- 북한산둘레길
insert into walkingcourse ( courseid,                    postid, location,      lat,        lng ) 
values                    ( walkingcourse_seq.nextval,   1,      '북한산둘레길',  37.498095,  127.02761 );
-- 한강공원강변길
insert into walkingcourse ( courseid,                    postid, location,        lat,        lng )
values                    ( walkingcourse_seq.nextval,   1,      '한강공원강변길',  37.498095,  127.02761 );

-- READ 
-- 산책코스전체리스트
-- selectAll
select * from walkingcourse order by courseid desc;

-- select
select * from walkingcourse where courseid=1;

-- UPDATE
-- 산책코스 수정
update walkingcourse set postid=1, location='제주올레길7코스', 
                         lat=37.498095, lng=127.02761    
where courseid='1';

-- DELETE
delete from walkingcourse where courseid='1';

-- 기본기능
-- spring boot때 알려주신 기능도 넣기 (검색시 3개? 검색결과 출력)
-- PAGING 
-- 이전  1 2 3 ....9 10 다음
select *
from (
    select row_number() over (order by courseid desc) as rnum,
           courseid, postid, location, lat, lng, createdat
    from walkingcourse
) A
where A.rnum between 1 and 10;

-- 전체게시글을 페이지당 10개씩 볼 수 있음. 
select count(*) from walkingcourse;

-- search(수정 필요)
select * from walkingcourse where location LIKE '%' || $1 || '%';

-- 페이징 + 검색어
select *
from (
    select row_number() over (order by courseid desc) as rnum,
           courseid, postid, location, lat, lng, createdat
    from walkingcourse
    where location LIKE '%' || search || '%'
) A
where A.rnum between 1 and 10;

-- 페이징 + 검색어_검색어 기준 전체 건수
select count (*) 
from walkingcourse
where location  LIKE '%' || search || '%';


-- 운동스마트게시판 (운동챌린지 게시판(글관련 내용) + API기반)
-- CREATE (create, insert)
desc execsmart;
drop table execsmart;
drop sequence execsmart_seq;

-- create table
create table execsmart(
    postid     number            primary key,      -- 게시글고유키
    execid     number            not null,         -- 운동아이디
    userid     number            not null,         -- 사용자아이디
    basedate   date              default sysdate,  -- 날짜
    courseid   number(10),                         -- 코스아이디
    etitle     varchar2(100)     not null,         -- 제목
    econtent   clob              not null,         -- 내용
    eimg       varchar2(255),                      --이미지경로  
    ehit       number            default 0,        -- 조회수
    createdat  date              default sysdate,  -- 등록일
    updatedat  date              default sysdate  -- 수정일
 );   
-- 최종테스트때 외래키달기
--    constraint fk_execsmart_user    foreign key (userid)   references users(userid),
--    constraint fk_execsmart_exec    foreign key (execid)   references exerciseinfo(execid),
--    constraint fk_execsmart_weather foreign key (basedate) references execweather(basedate),
--    constraint fk_execsmart_course  foreign key (courseid) references walkingcourse(courseid)
select * from execsmart;
desc execsmart;
-- 시퀀스
create sequence execsmart_seq;


-- 글쓰기
-- insert
insert into execsmart  (postid,                execid, userid,courseid  ,etitle,                  econtent,                                                         eimg     )
               values  (execsmart_seq.nextval, 6 ,     1,     1 ,       '반려동물과 함께하는 산책', '반려동물과 함께하는 산책은 주인과 반려동물 모두에게 긍정적인영향을 줍니다.', '산책.png');

-- mapper test용
insert into execsmart  (postid,                execid, userid,courseid  ,etitle,                  econtent,                                                         eimg     )
               values  (23, 6 ,     1,     1 ,       'title_test1', 'content_test1', '산책.png');
commit;

-- 이미지 업로드용(insert)
--insert into execboard  (postid,                execid, userid, courseid    , etitle,                  econtent,                                                         eimg     )
--               values  (execboard_seq.nextval, 41 ,     1,     1        ,'반려동물과 함께하는 산책', '반려동물과 함께하는 산책은 주인과 반려동물 모두에게 긍정적인영향을 줍니다.', '산책.png');

-- READ (select / select * )
-- 전체게시글보기
-- selectAll
select * from execsmart order by postid desc;
commit;

-- 게시글상세보기
-- select
select * from execsmart where postid=23;  

-- 게시글수정
-- UPDATE
update execsmart set execid=6, userid=1, courseid=1,
                    etitle='반려동물과 함께하는 노즈워크', 
                     econtent='노즈워크는 반려동물이 참을성을 길러줍니다.' ,
                   eimg = '노즈워크.png'
where postid='23';

-- 조회수
-- updateHit
update  execsmart   
set     ehit = ehit + 1   
where   postid='23'; 


-- 이미지업로드용(update)
--update execsmart set etitle='반려동물과 함께하는 노즈워크', 
--                     econtent='노즈워크는 반려동물이 참을성을 길러줍니다.' ,
--                execid=41,   eimg = '노즈워크.png'
--where postid='26';

-- 게시글삭제
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
           postid, execid, userid, basedate, courseid, etitle, econtent, eimg, ehit,
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



-- API기능 - 운동스마트게시판에만 적용시키기
-- 건당 돈이 빠져 나갈수도 있으니 조심해서 쓰기;;;
-- ★ 운동후 : 키워드 몇개 적어주면 ai알아서 글쓰기 - ChatGpt api (or openAi)활용
-- ★ 운동 전 : 반려견의 건강상태에 따라 
-- 날씨에 따라 운동추천과 추천이유도 적어줘 -  data.go.kr → 기상청 api활용
-- ★ 운동후 : 날씨정보 가져오기
--※ 매일 오전 6시에 금일 날씨 가져오기 - 공통사항
--스케쥴러 + 스케쥴러활용
-- ※ api의 필드와 매칭해서 가져오기
-- 날짜 - 기본키
-- ★ 산책 위치 지도 - 마커 표시, 지도 - 네이버 클라우드 → Maps api활용
-- ※ 날씨 저장 필드, 산책 코스 필드(12.22일에 배웠던 지도 파트 참고하기. - ex)인천점....) 
--     ㄴ테이블 추가


-- 글쓰기에 해당되는 .html 파일에 코드입력 
-- ★ 자동:날씨 이용해서 글 쓸때  배경바꾸기 (코드입력 <style/>?)

-- 2차때 구현 못한 시간관계상 3차때 구현 예정.
-- 게시판 특별기능
-- 계정 삭제시  / 이미지도 같이 삭제? 
-- 확장자거르기?? 
-- 이미지바로보이기??? 
-- 테이블 조인????
--
--
--2차 프로젝트 운동 챌린지, 정보게시판 개선점.
--
-- 기능 사용시(글쓰기, 글수정, 글삭제 ...)시 입력할 필요없는 데이터들은(운동아이디, 사용자아이디 ...) 입력할 필요없게 만들기.
--ex) 운동아이디와 같은 값들은 고정
--
--
-- 글쓰기 시 자신이 만든 계정들 중에서 선택해서 그 계정으로 입력할 수 있게 만들기.
-- 또 다른 기능있으면 추가하기...
--ex)
--<for:each> ...
--function ... 등 활용







-- Test
--drop table exerciseinfo;
--drop sequence exerciseinfo_seq;

--desc execrecommendation;

--commit;

-- 페이징테스트 더미데이터
--execsmart
insert into execsmart  (postid,  execid, userid, courseid , etitle, econtent, eimg )
select    execsmart_seq.nextval, execid, userid, courseid , etitle, econtent, eimg from execsmart;

commit;

--execinfo
insert into exerciseinfo (execid, exectype, description, avgkcal30min, exectargetmin, suitablefor, intensitylevel ) 
select  exerciseinfo_seq.nextval, exectype, description, avgkcal30min, exectargetmin, suitablefor, intensitylevel from exerciseinfo;
commit;
select count(*) from exerciseinfo;

--saveweather
INSERT INTO saveweather (weather, maxtemp, mintemp, moistpercent, rainpercent)
SELECT                  weather, maxtemp, mintemp, moistpercent, rainpercent from saveweather;

--walkingcourse
insert into walkingcourse ( courseid, postid, location, lat, lng  ) 
select     walkingcourse_seq.nextval, postid, location, lat, lng from walkingcourse;


















-- 사용자정보 (외래키 연동 Test)
desc users;
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
--insert into USERS (USERID, EMAIL,          NICKNAME,  PASSWORD, UFILE,  MOBILE,           PROVIDER,  PROVIDERID)
--values            (100,    'admin@admin', 'admin',    '123',   '1.png', '010-1234-5678' , 'local',   'local_id'  );

-- 최종테스트 시 사용
-- userid=100, email=admin@admin, nickname=admin, password=123

--// 2차 프로젝트_drop table
drop table USERS;
drop table PET;
drop table REVIEW;
commit;

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
-- 외래키 걸린거 무시하고 해당 테이블 지우기
DROP TABLE REVIEW CASCADE CONSTRAINTS;












-- 임시보관
-- 날씨저장
-- create
--desc saveweather;
--create table saveweather (
--    wid           number           primary key,    -- 기본키
--    weather       varchar2(30),                    -- 날씨
--    maxtemp       number           not null,       -- 최고기온       
--    mintemp       number           not null,       -- 최저기온 
--    moispercent   number           not null,       -- 습도
--    rainpercent   number           not null        -- 강수량
--);
--desc saveweather;
--
-- -- 시퀀스
--create sequence saveweather_seq;
--
---- insert
---- 맑음
--INSERT INTO saveweather (wid, weather, maxtemp, mintemp, moispercent, rainpercent)
--VALUES 
--(saveweather_seq.nextval, '맑음', 20, 15, 40, 30);
--
---- 안개
--INSERT INTO saveweather (wid, weather, maxtemp, mintemp, moispercent, rainpercent)
--VALUES 
--(saveweather_seq.nextval, '흐림', 22, 17, 80, 90);
--
---- 더운날
--INSERT INTO saveweather (wid, weather, maxtemp, mintemp, moispercent, rainpercent)
--VALUES 
--(saveweather_seq.nextval, '맑음', 34, 25, 30, 20);
--
---- 추운날
--INSERT INTO saveweather (wid, weather, maxtemp, mintemp, moispercent, rainpercent)
--VALUES 
--(saveweather_seq.nextval, '흐림', 1, 0, 10, 10);
--
--
---- READ 
--select * from saveweather order by wid desc;
--
---- UPDATE
----update 
----set 
--
---- DELETE
--delete from saveweather;

