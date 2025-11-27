-- 운동정보테이블(1단계 프로젝트/외래키용)
create table exerciseinfo(
    execid         int           primary key,
    exectype       VARCHAR2(50),
    description    VARCHAR2(255),
    avgkcal30min   FLOAT,
    exectargetmin  int,
    suitablefor    VARCHAR2(100),
    intensitylevel VARCHAR2(100),
    createdat      DATE  DEFAULT SYSDATE,
    updatedat      DATE  DEFAULT SYSDATE
 );

create sequence exerciseinfo_seq;

-- 사용자정보테이블 (USERID)(1단계프로젝트/외래키용)
CREATE TABLE users (
  userid     NUMBER PRIMARY KEY,
  email      VARCHAR2(200) NOT NULL UNIQUE,
  nickname   VARCHAR2(100) NOT NULL,
  password   VARCHAR2(100) NOT NULL,
  createdat  DATE NOT NULL
);

-- 임시로 만들었음.
CREATE SEQUENCE users_seq;
insert into users (userid, email, nickname, password, createdat) 
values (1, '1@1', 'user', '1111', '2025/11/26');

-- 반려동물타입테이블 PETID) (1단계프로젝트/외래키용)
CREATE TABLE pettype (
  pettypeid NUMBER PRIMARY KEY,
  pettypename  VARCHAR2(100) NOT NULL
);

INSERT INTO pettype (pettypeid, pettypename) VALUES (1, '고양이');





-- 운동정보게시판테이블(2단계프로젝트)
-- USERID 1 
-- PETTYPEID  1 

-- CREATE
CREATE TABLE execboard(
    POSTID     INT            PRIMARY KEY,
    EHIT       INT            DEFAULT 0,
    EXECID     INT,
    USERID     NUMBER,
    PETTYPEID  NUMBER,
    ETITLE     VARCHAR2(100),
    ECONTENT   CLOB,
    EIMG       VARCHAR2(255),  --이미지경로
    CREATEDAT  DATE           DEFAULT SYSDATE,
    UPDATEDAT  DATE           DEFAULT SYSDATE,
    
    CONSTRAINT FK_EXECBOARD_USER FOREIGN KEY (USERID) REFERENCES users(USERID),
    CONSTRAINT FK_EXECBOARD_PET FOREIGN KEY (PETTYPEID) REFERENCES pettype(PETTYPEID),
    CONSTRAINT FK_EXECBOARD_EXEC FOREIGN KEY (EXECID) REFERENCES exerciseinfo(EXECID)
);  -- ai에게 물어보기(기능이 어떤지?)


create sequence execboard_seq;
DESC execboard;


insert into execboard (POSTID,              EXECID, USERID, PETTYPEID, ETITLE,                 ECONTENT,                              EIMG) 
               values (1, 1 , 1, 1,'반려동물과 함께하는 산책', '반려동물과 함께하는 산책은 주인과 반려동물 모두에게 긍정적인영향을 줍니다.', '산책.png'  );

insert into execboard 
               values (execboard_seq.nextval, 1 , 1, 1,'반려동물과 함께하는 산책', '반려동물과 함께하는 산책은 주인과 반려동물 모두에게 긍정적인영향을 줍니다.', '산책.png'  );

-- READ
select * from execboard;  --전체보기
select * from execboard where postid='23';  --상세보기

-- UPDATE
update execboard set ETITLE='반려동물과 함께하는 노즈워크', 
                     ECONTENT='노즈워크는 반려동물이 참을성을 길러줍니다.'
where postid='23';

-- DELETE
delete from execboard where postid='23'and execid='1';


drop table execboard;
commit;







