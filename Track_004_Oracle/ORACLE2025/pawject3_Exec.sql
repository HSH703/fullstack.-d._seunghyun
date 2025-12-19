-- 3차_프로젝트_운동파트 - CRUD
-- 운동정보게시판

-- CREATE (create, insert)
-- create table
CREATE TABLE exerciseinfo (
    execid         number          PRIMARY KEY,
    exectype       varchar2(50),
    description    varchar2(255),
    avg_kcal_30min number,
    exectargetmin  number,
    suitablefor    varchar2(100),
    intensitylevel varchar2(100),
    created_at     date default   sysdate,
    updated_at     date default   sysdate
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
-- PAGING 
-- 이전  1 2 3 ....9 10 다음
select * 
from ( 
    select row_number() over (order by createdat desc) as rnum,
    execid, exectype, description, avgkcal30min, exectargetmin, suitablefor, 
    intensitylevel
    from exerciseinfo 
) A 
where A.rnum between 1 and 10;

-- 전체게시글을 페이지당 10개씩 볼 수 있음. 
select count(*) from exerciseinfo;


-- search(수정 필요)
select * from exerciseinfo where exectype LIKE '%' || $1 || '%';

-- API기능




-- 운동스마트게시판 (운동챌린지 게시판(글관련 내용) + API기반)
-- CREATE (create, insert)
-- create table
create table execsmart(
    postid     number            primary key,
    execid     number,
    userid     number,
    etitle     varchar2(100),
    econtent   clob,
    eimg       varchar2(255),  --이미지경로
    ehit       number            default 0,
    createdat  date              default sysdate,
    updatedat  date              default sysdate,
    
    constraint fk_execsmart_user foreign key (userid)    references USERS(userid),
    constraint fk_execsmart_exec foreign key (execid)    references exerciseinfo(execid)
);  

-- 시퀀스
create sequence execsmart_seq;

-- insert
insert into execsmart  (postid,                execid, userid,          etitle,                  econtent,                                                         eimg     )
               values  (execboard_seq.nextval, 41 ,     1,              '반려동물과 함께하는 산책', '반려동물과 함께하는 산책은 주인과 반려동물 모두에게 긍정적인영향을 줍니다.', '산책.png');
-- 이미지 업로드용(insert)
--insert into execboard  (postid,                execid, userid,          etitle,                  econtent,                                                         eimg     )
--               values  (execboard_seq.nextval, 41 ,     1,              '반려동물과 함께하는 산책', '반려동물과 함께하는 산책은 주인과 반려동물 모두에게 긍정적인영향을 줍니다.', '산책.png');


-- READ (select / select * )
-- selectAll
select * from execsmart order by postid desc;
-- select
select * from execsmart where postid='23';  --상세보기


-- UPDATE
update execsmart set etitle='반려동물과 함께하는 노즈워크', 
                     econtent='노즈워크는 반려동물이 참을성을 길러줍니다.' ,
                execid=41,   eimg = '노즈워크.png'
where postid='26';

-- 이미지업로드용(업데이트)
--update execsmart set etitle='반려동물과 함께하는 노즈워크', 
--                     econtent='노즈워크는 반려동물이 참을성을 길러줍니다.' ,
--                execid=41,   eimg = '노즈워크.png'
--where postid='26';


-- DELETE
delete from execsmart where postid='27'and execid='41';


-- 기본기능
-- spring boot때 알려주신 기능도 넣기 (검색시 3개? 검색결과 출력)
-- PAGING 
-- 이전  1 2 3 ....9 10 다음
select *
from (
    select row_number() over (order by createdat desc) as rnum,
           postid, execid, userid, etitle, econtent, eimg, ehit,
           createdat, updatedat
    from execsmart
) A
where A.rnum between 1 and 10;


-- 전체게시글을 페이지당 10개씩 볼 수 있음. 
select count(*) from execsmart



-- search(수정 필요)
select * from execsmart where etitle like '%search%';


-- API기능




-- 날씨기반 운동추천기능
--(기능을 구현할려고 하는 거니깐 insert는 데이터를 넣어야되서 있어야하지만(그럼 글쓰기 기능도 있어야하나...), update, delete는 어떻게 해야할까...)
-- CREATE( create, insert)
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
create sequence execrec_seq;

-- desc execrecommendation;
-- drop table execrecommendation;

-- insert
-- 맑음
INSERT INTO execrec (recid, weather, maxtemp, mintemp, activityplace, reason)
VALUES 
(execrec_seq.nextval, '맑음', 20, 15, '야외활동', '날씨가 맑고 선선하기 때문에 산책을 추천합니다.');

-- 흐림
INSERT INTO execrec (recid, weather, maxtemp, mintemp,  activityplace, reason)
VALUES 
(execrec_seq.nextval, '흐림', 22, 17, '실내활동', '날씨가 흐려 외부 활동이 적합하지 않으므로 실내 놀이를 추천합니다.');

-- 더운날
INSERT INTO execrec (recid, weather, maxtemp, mintemp, activityplace, reason)
VALUES 
(execrec_seq.nextval, '맑음', 34, 25, '야외활동', '기온이 너무 높아 야외활동은 위험하므로 실내에서 쉬는 것을 추천합니다.');

-- 추운날
INSERT INTO execrec (recid, weather, maxtemp, mintemp, activityplace, reason)
VALUES 
(execrec_seq.nextval, '흐림', 1, 0,  '실내활동', '기온이 낮고 때로는 눈이 내리는 지역이 있기 때문에, 실내놀이를 추천합니다.');


-- READ( select, selectall )


-- UPDATE


-- DELETE



















