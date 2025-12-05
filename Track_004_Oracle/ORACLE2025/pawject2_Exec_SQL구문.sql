-- 운동정보테이블(1단계 프로젝트/외래키용)
create table exerciseinfo(
    execid         int           primary key,
    exectype       VARCHAR2(50),
    description    VARCHAR2(255),
    avgkcal30min   FLOAT,
    exectargetmin  int,
    suitablefor    VARCHAR2(100),
    intensitylevel VARCHAR2(100)
--    createdat      DATE  DEFAULT SYSDATE,
--    updatedat      DATE  DEFAULT SYSDATE
 );
desc users;
select * from users;
create sequence exerciseinfo_seq;

select * from exerciseinfo;
--delete from exerciseinfo;
commit;

insert into exerciseinfo (execid, exectype, description, avgkcal30min, exectargetmin, suitablefor, intensitylevel ) 
values(exerciseinfo_seq.nextval, '산책', '기본적인 야외활동/스트레스 해소', 80.0, 30, '모든 견종, 노령견 포함', '저강도' );

select * from exerciseinfo;


-- 사용자정보테이블 (USERID)(2단계프로젝트/외래키용)
CREATE TABLE USERS (
    userid     NUMBER              PRIMARY KEY,                 -- 사용자 고유 ID
    email      VARCHAR2(200)       NOT NULL UNIQUE,             -- 이메일 주소 (중복 불가)
    nickname   VARCHAR2(100)       NOT NULL,                    -- 닉네임
    password   VARCHAR2(100)       NOT NULL,                    -- 비밀번호
    ufile      VARCHAR2(255)       DEFAULT 'default.png',       -- 이미지 파일 (기본값)
    createdat  DATE                NOT NULL,                    -- 가입일
    mobile     VARCHAR2(200)       UNIQUE                       -- 휴대폰 번호 (NULL 허용, 중복 불가)
);

CREATE SEQUENCE USER_seq;
desc USERS;
select * from  USERS;
delete from USERS;

--시험용
insert into users (userid, email, nickname, password, ufile ,createdat,mobile ) 
values (user_seq.nextval, '1@1', 'user', '1111', '산책.png' ,'2025/11/26', '010');




-- 운동챌린지게시판테이블(2단계프로젝트)

desc exerciseinfo;
-- CREATE
create table execboard(
    postid     int            primary key,
    execid     int,
    userid     NUMBER,
    etitle     varchar2(100),
    econtent   CLOB,
    eimg       varchar2(255),  --이미지경로
    ehit       int            default 0,
    createdat  date           default sysdate,
    updatedat  date           default sysdate,
    
    constraint fk_execboard_user foreign key (userid)    references USERS(userid),
    constraint fk_execboard_exec foreign key (execid)    references exerciseinfo(execid)
);  


create sequence execboard_seq;


insert into execboard (postid,              execid, userid,   etitle,                  econtent,                                                           eimg      ) 
               values (1,                     41 ,      1,     '반려동물과 함께하는 산책', '반려동물과 함께하는 산책은 주인과 반려동물 모두에게 긍정적인영향을 줍니다.', '산책.png'  );

insert into execboard  (postid,                execid, userid,          etitle,                  econtent,                                                         eimg     )
               values  (execboard_seq.nextval, 41 ,     1,              '반려동물과 함께하는 산책', '반려동물과 함께하는 산책은 주인과 반려동물 모두에게 긍정적인영향을 줍니다.', '산책.png');

-- READ
select * from execboard;  --전체보기
select * from execboard where postid='23';  --상세보기

--※ 페이징필요.
select *
from (
    select row_number() over (order by createdat desc) as rnum,
           postid, execid, userid, etitle, econtent, eimg, ehit,
           createdat, updatedat
    from execboard
) A
where A.rnum between 1 and 10;

-- UPDATE
update execboard set etitle='반려동물과 함께하는 노즈워크', 
                     econtent='노즈워크는 반려동물이 참을성을 길러줍니다.' ,
                execid=41,   eimg = '노즈워크.png'
where postid='26';

-- DELETE
delete from execboard where postid='27'and execid='41';

--drop table users;
--drop table execboard;
commit;

--페이징테스트
--insert into sboard1 ( ID    , APP_USER_ID , btitle, bcontent, bpass, bfile,  bip )
--select  sboard1_seq.nextval , APP_USER_ID , btitle, bcontent, bpass, bfile,  bip   from sboard1;  
--EXECBOARD
select * from execboard;


insert into execboard  (postid, execid, userid, etitle, econtent,  eimg )  
      select execboard_seq.nextval, execid, userid, etitle, econtent, eimg from execboard;

select * 
from ( 
    select row_number() over (order by createdat desc) as rnum,
    postid, execid, userid, etitle, econtent, eimg, ehit, createdat,
    updatedat
    from execboard
) A 
where A.rnum between 1 and 10;



--EXERCISEINFO
insert into exerciseinfo (execid, exectype, description, avgkcal30min, exectargetmin, suitablefor, intensitylevel ) 
select exerciseinfo_seq.nextval, exectype, description, avgkcal30min, exectargetmin, suitablefor, intensitylevel;


select * 
from ( 
    select row_number() over (order by createdat desc) as rnum,
    execid, exectype, description, avgkcal30min, exectargetmin, suitablefor, 
    intensitylevel
    from exerciseinfo 
) A 
where A.rnum between 1 and 10;





