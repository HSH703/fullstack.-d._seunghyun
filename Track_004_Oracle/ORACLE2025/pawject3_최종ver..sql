-- 1. USER&PET
-- 유저 테이블
CREATE TABLE USERS (
  --USERID     NUMBER PRIMARY KEY, 
    USERID     NUMBER  ,                      -- PK, 자동 증가
    EMAIL      VARCHAR2(200) NOT NULL,                  -- 이메일
    NICKNAME   VARCHAR2(100) NOT NULL,                  -- 별명
    PASSWORD   VARCHAR2(100) NOT NULL,                  -- 비밀번호
    UFILE      VARCHAR2(255),                           -- 이미지 파일명
    CREATEDAT  DATE DEFAULT SYSDATE,                    -- 등록일
    MOBILE     VARCHAR2(200),                           -- 전화번호
    PROVIDER   VARCHAR2(50) NOT NULL,                   -- 인증 제공자(local, google, kakao 등)
    PROVIDERID VARCHAR2(100),                           -- 제공자 id
    CONSTRAINT pk_users PRIMARY KEY (USERID),
    CONSTRAINT uq_users_email_provider UNIQUE (EMAIL, PROVIDER)
);
CREATE SEQUENCE users_seq;
drop table USERS;
drop sequence users_seq;

DROP TABLE USERS CASCADE CONSTRAINTS;

-- 권한 테이블 (ROLE_ADMIN or ROLE_MEMBER)
CREATE TABLE ROLES (
    AUTHID   NUMBER          PRIMARY KEY,     -- 권한 고유 ID
    USERID   NUMBER          NOT NULL,
    EMAIL    VARCHAR2(100)   NOT NULL,        -- 사용자 이메일 (FK 아직 없음)
    AUTH     VARCHAR2(100)   NOT NULL         -- 권한 (예: ROLE_ADMIN, ROLE_MEMBER)
);
ALTER TABLE ROLES
    ADD CONSTRAINT FK_ROLES_USER FOREIGN KEY (USERID)
    REFERENCES USERS (USERID);


DROP TABLE ROLES CASCADE CONSTRAINTS;


-- 펫 테이블
CREATE TABLE PETS (
    PETID          NUMBER          PRIMARY KEY,        -- 반려동물 고유 ID
    USERID         NUMBER          NOT NULL,           -- 사용자 ID
    PETNAME        VARCHAR2(100)   NOT NULL,           -- 반려동물 이름
    PETBREED       VARCHAR2(100),                      -- 반려동물 종
    BIRTHDATE      VARCHAR2(100),                      -- 생년월일
    PETTYPEID      NUMBER          NOT NULL,           -- 반려동물 종류 ID
    PFILE          VARCHAR2(255),                      -- 반려동물 이미지 파일명
    CREATEDAT      DATE            DEFAULT SYSDATE,    -- 등록일
    PAGE           NUMBER,                             -- 나이
    PGENDER        VARCHAR2(10)                        -- 성별
);
ALTER TABLE PETS
    ADD CONSTRAINT fk_pets_userid FOREIGN KEY (USERID)
        REFERENCES USERS (USERID);

ALTER TABLE PETS
    ADD CONSTRAINT fk_pets_pettype FOREIGN KEY (PETTYPEID)
        REFERENCES PETTYPE (PETTYPEID);


DROP TABLE PETS CASCADE CONSTRAINTS;
drop sequence pets_seq;
CREATE SEQUENCE pets_seq;

-- 펫 타입 테이블( 강아지, 고양이 선택 )
CREATE TABLE PETTYPE (
    pettypeid   NUMBER          PRIMARY KEY,
    pettypename VARCHAR2(100)   NOT NULL
);

-- 공지사항 내용 db 저장 테이블
CREATE TABLE ANNOUNCEMENT (
    ID NUMBER PRIMARY KEY,
    MESSAGE VARCHAR2(1000) NOT NULL,
    CREATEDAT DATE DEFAULT SYSDATE
);

CREATE SEQUENCE ANNOUNCEMENT_seq;


DROP TABLE ANNOUNCEMENT CASCADE CONSTRAINTS;
drop sequence  ANNOUNCEMENT_seq;


-- 알림 숨김 테이블( 사용자가 x 버튼을 누르면 해당 사용자 알림 삭제 )
CREATE TABLE HIDDENANNOUNCEMENT (
    USERID NUMBER NOT NULL,
    ANNOUNCEMENTID NUMBER NOT NULL,
    PRIMARY KEY (USERID, ANNOUNCEMENTID)
);

DROP TABLE HIDDENANNOUNCEMENT CASCADE CONSTRAINTS;



ALTER TABLE HIDDENANNOUNCEMENT 
ADD CONSTRAINT FK_HID_ANN_ID 
FOREIGN KEY (ANNOUNCEMENTID) 
REFERENCES ANNOUNCEMENT (ID) 
ON DELETE CASCADE;

ALTER TABLE HIDDENANNOUNCEMENT 
ADD CONSTRAINT FK_HIDDENANNOUNCEMENT_USER 
FOREIGN KEY (USERID) 
REFERENCES USERS (USERID) 
ON DELETE CASCADE;

commit;


-- 2. FOOD&REVIEW
--1. 브랜드 외래키X
CREATE TABLE FOODBRAND (
    BRANDID        NUMBER           PRIMARY KEY,
    BRANDNAME      VARCHAR2(100)    NOT NULL,
    COUNTRY        VARCHAR2(100),
    BRANDTYPE      VARCHAR2(50)     NOT NULL,   
    ORIGIN         VARCHAR2(50),             
    BRANDINFO      VARCHAR2(500)
);

DROP TABLE FOODBRAND CASCADE CONSTRAINTS;
drop sequence  ANNOUNCEMENT_seq;


--2.푸드 (FK) BRANDID : BFAND(BRANDID)/PETTYPEID : PETS(PETTYPEID) 
drop table food;
CREATE TABLE FOOD (
    FOODID          NUMBER          PRIMARY KEY,
    FOODNAME        VARCHAR2(100)   NOT NULL,
    BRANDID         NUMBER          NOT NULL,
    DESCRIPTION     VARCHAR2(500),
    MAININGREDIENT  VARCHAR2(200)   NOT NULL,
    SUBINGREDIENT   VARCHAR2(200),
    PETTYPEID       NUMBER          NOT NULL,
    CATEGORY        VARCHAR2(50)    NOT NULL,
    PETAGEGROUP     VARCHAR2(50),
    ISGRAINFREE     CHAR(1)         CHECK (UPPER(ISGRAINFREE) IN ('Y','N')),
    CALORIE         NUMBER(5,1),
    FOODTYPE        VARCHAR2(20),
    FOODIMG         VARCHAR2(300),
    CREATEDAT       DATE DEFAULT SYSDATE,
    UPDATEDAT       DATE DEFAULT NULL,

    CONSTRAINT FK_FOOD_BRAND FOREIGN KEY (BRANDID)
        REFERENCES FOODBRAND(BRANDID),

    CONSTRAINT FK_FOOD_PETTYPE FOREIGN KEY (PETTYPEID)
        REFERENCES PETTYPE(PETTYPEID)
);

CREATE SEQUENCE food_seq
START WITH 1 INCREMENT BY 1
NOCACHE;

DROP TABLE FOOD CASCADE CONSTRAINTS;
drop sequence  food_seq;



--3. 영양소 외래키X
CREATE TABLE NUTRIENT(
    NUTRIENTID NUMBER PRIMARY KEY,
    NUTRIENTNAME VARCHAR2(100) NOT NULL,
    UNIT VARCHAR2(50) 
);
DROP TABLE NUTRIENT CASCADE CONSTRAINTS;
drop sequence  food_seq;

--4.라벨영양소 (FK) FOODID : FOOD(FOODID) / NUTRIENTID  : NUTRIENT(NUTRIENTID)
CREATE TABLE FOODNUTRIENT(
    FOODID      NUMBER NOT NULL,
    NUTRIENTID  NUMBER NOT NULL,
    AMOUNT      NUMBER,

    CONSTRAINT PK_FOODNUTRIENT PRIMARY KEY (FOODID, NUTRIENTID),

    CONSTRAINT FK_FN_FOOD FOREIGN KEY (FOODID)
        REFERENCES FOOD(FOODID)
        ON DELETE CASCADE,

    CONSTRAINT FK_FN_NUTRIENT FOREIGN KEY (NUTRIENTID)
        REFERENCES NUTRIENT(NUTRIENTID)
);

DROP TABLE FOODNUTRIENT CASCADE CONSTRAINTS;
drop sequence  food_seq;


--5.영양소범위 (FK) NUTRIENTID : NUTRIENT(NUTRIENTID)      
CREATE TABLE NUTRIENTRANGE (
    RANGEID      NUMBER          PRIMARY KEY,
    PETTYPEID    NUMBER          NOT NULL,
    NUTRIENTID   NUMBER          NOT NULL,
    MINVALUE     NUMBER          NOT NULL,
    MAXVALUE     NUMBER          NOT NULL,
    RANGELABEL   VARCHAR2(50)    NOT NULL,

    CONSTRAINT FK_NR_PETTYPE FOREIGN KEY (PETTYPEID)
        REFERENCES PETTYPE(PETTYPEID),

    CONSTRAINT FK_NR_NUTRIENT FOREIGN KEY (NUTRIENTID)
        REFERENCES NUTRIENT(NUTRIENTID)
);

DROP TABLE NUTRIENTRANGE CASCADE CONSTRAINTS;
drop sequence  food_seq;


--6. 리뷰 (FK) USERID : USERS(USERID) / BRANDID : BRAND(BRANDID) /FOODID : FOOD(FOODID)
CREATE TABLE REVIEW (
    REVIEWID    NUMBER PRIMARY KEY,
    USERID      NUMBER NOT NULL,
    BRANDID     NUMBER,
    FOODID      NUMBER,
    REVIEWIMG   VARCHAR2(300) DEFAULT NULL,
    RATING      NUMBER(1) CHECK (RATING BETWEEN 1 AND 5),
    TITLE       VARCHAR2(100), 
    REVIEWCOMMENT VARCHAR2(500),
    CREATEDAT   DATE DEFAULT SYSDATE,
    UPDATEDAT   DATE DEFAULT NULL,
    
    CONSTRAINT fk_review_user FOREIGN KEY (USERID)
        REFERENCES USERS(USERID),
        
    CONSTRAINT fk_review_brand FOREIGN KEY (BRANDID)
        REFERENCES FOODBRAND(BRANDID),
        
    CONSTRAINT fk_review_food FOREIGN KEY (FOODID)
        REFERENCES FOOD(FOODID)
);

CREATE SEQUENCE REVIEW_SEQ
START WITH 1 INCREMENT BY 1
NOCACHE;

DROP TABLE REVIEW CASCADE CONSTRAINTS;
drop sequence  REVIEW_SEQ;


--7. 리뷰이미지  (FK)   REVIEWID : REVIEW(REVIEWID)   
CREATE TABLE REVIEWIMG (
    REVIEWIMGID NUMBER PRIMARY KEY,
    REVIEWID NUMBER, 
    REVIEWIMGNAME VARCHAR2(300) NOT NULL,
    CREATEDAT DATE DEFAULT SYSDATE,
    FOREIGN KEY (REVIEWID) REFERENCES REVIEW(REVIEWID)
);

CREATE SEQUENCE REVIEWIMG_SEQ
START WITH 1 INCREMENT BY 1
NOCACHE;

DROP TABLE REVIEWIMG CASCADE CONSTRAINTS;
drop sequence  REVIEWIMG_SEQ;


--신규
--8. 1:1질문 (FK)USERID : USERS(USERID)
CREATE TABLE CSQUESTION(
  QUESTIONID NUMBER PRIMARY KEY,
  USERID NUMBER NOT NULL,
  CATEGORY VARCHAR2(50),
  TITLE VARCHAR2(200) NOT NULL,
  CONTENT CLOB NOT NULL,
  STATUS NUMBER(1) DEFAULT 0,   
  CREATEDAT DATE DEFAULT SYSDATE,
   CONSTRAINT fk_csquestion_user FOREIGN KEY (USERID)
        REFERENCES USERS(USERID) 
);
DROP TABLE CSQUESTION CASCADE CONSTRAINTS;


--9. 1:1답변 (FK)QUESTIONID : CSQUESTION(QUESTIONID)/(FK)ADMINID : USERS(USERID)
CREATE TABLE CSANSWER(
  ANSWERID NUMBER PRIMARY KEY,
  QUESTIONID NUMBER NOT NULL,
  ADMINID NUMBER NOT NULL,
  CONTENT CLOB NOT NULL,
  CREATEDAT DATE DEFAULT SYSDATE,
      CONSTRAINT fk_csanswer_question FOREIGN KEY (QUESTIONID)
        REFERENCES CSQUESTION(QUESTIONID),
        
        CONSTRAINT fk_csanswer_admin FOREIGN KEY (ADMINID)
        REFERENCES USERS(USERID)
);

CREATE SEQUENCE CSANSWER_SEQ 
START WITH 1 INCREMENT BY 1
NOCACHE;


DROP TABLE CSANSWER CASCADE CONSTRAINTS;
drop sequence  CSANSWER_SEQ;

--10. FAQ 외래키X
CREATE TABLE FAQ (
  FAQID NUMBER PRIMARY KEY,
  CATEGORY VARCHAR2(50),
  QUESTION VARCHAR2(500) NOT NULL,
  ANSWER CLOB NOT NULL,
  KEYWORDS VARCHAR2(500),
  ISACTIVE NUMBER(1) DEFAULT 1 NOT NULL,
  CREATEDAT DATE DEFAULT SYSDATE,
  UPDATEDAT DATE
);

CREATE SEQUENCE FAQ_SEQ
START WITH 1 INCREMENT BY 1
NOCACHE;

DROP TABLE FAQ CASCADE CONSTRAINTS;
drop sequence  FAQ_SEQ;


-- 3. EXEC
--운동정보테이블 + 시퀀스
create table exerciseinfo (
    execid         number          PRIMARY KEY,   -- 운동고유아이디
    exectype       varchar2(50),                  -- 운동유형
    description    varchar2(255),                 -- 설명
    avgkcal30min   number,                        -- 칼로리소모량(30분기준)      
    exectargetmin  number,                        -- 권장시간
    suitablefor    varchar2(100),                 -- 추천동물
    intensitylevel varchar2(100),                 -- 운동강도
    createdat      date default   sysdate,        -- 글 작성일
    updatedat      date default   sysdate         -- 글 수정일
);
--시퀀스 
create sequence exerciseinfo_seq;

DROP TABLE exerciseinfo CASCADE CONSTRAINTS;
drop sequence  exerciseinfo_seq;
 


-- 날씨정보 + 시퀀스
create table saveweather (
    wid           number(10)       primary key,     -- 날씨고유아이디
    weather       varchar2(30),                     -- 날씨
    maxtemp       number           not null,        -- 최고기온       
    mintemp       number           not null,        -- 최저기온 
    moistpercent   number          not null,        -- 습도
    rainpercent   number           not null,        -- 강수량
    basedate      date             default sysdate  -- 날짜    
);
 -- 시퀀스
create sequence saveweather_seq;

DROP TABLE saveweather CASCADE CONSTRAINTS;
drop sequence  saveweather_seq;


 drop table saveweather;
 drop sequence saveweather_seq;



--산책코스테이블 + 시퀀스
desc walkingcourse;
create table walkingcourse (
    courseid       number(10)       primary key,        -- 코스 고유 아이디
    postid         number,                              -- 게시글 고유 ID(join이용)
    location       varchar2(255)    not null,           -- 위치 (예: 공원, 산, 강변)
    lat            number(9,6)      not null,           -- 위도
    lng            number(9,6)      not null,           -- 경도
    createdat      date             default sysdate     -- 등록일
 ); 
 -- 시퀀스
create sequence walkingcourse_seq;

DROP TABLE walkingcourse CASCADE CONSTRAINTS;
drop sequence  walkingcourse_seq;

drop table walkingcourse;
drop sequence walkingcourse_seq;
 


commit;

select * from walkingcourse;
delete from walkingcourse where courseid = 9;

drop table execsmart;
commit;
select * from saveweather;
desc weather;

commit;
delete from saveweather where wid=6;
select * from execsmart;;

--운동스마트게시판 + 시퀀스
create table execsmart(
    postid     number            primary key,      -- 게시글고유아이디
    execid     number            not null,         -- 운동아이디
    userid     number            not null,         -- 사용자아이디
    wid        number            not null,         -- 날씨정보아이디
    courseid   number(10),                         -- 코스아이디
    etitle     varchar2(100)     not null,         -- 제목
    econtent   clob              not null,         -- 내용
    eimg       varchar2(255),                      --이미지경로  
    ehit       number            default 0,        -- 조회수
    createdat  date              default sysdate,  -- 등록일
    updatedat  date              default sysdate,  -- 수정일

    --constraint fk_execsmart_users    foreign key (userid)   references users(userid),
    constraint fk_execsmart_exec    foreign key (execid)   references exerciseinfo(execid),
    constraint fk_execsmart_weather foreign key (wid)      references saveweather(wid),
    constraint fk_execsmart_course  foreign key (courseid) references walkingcourse(courseid)
 );
create sequence execsmart_seq;

DROP TABLE execsmart CASCADE CONSTRAINTS;
drop sequence execsmart_seq;

drop table execsmart;
drop sequence execsmart_seq;


commit;

desc users;
DROP TABLE users CASCADE CONSTRAINTS;

drop table users;
drop table execsmart;


-- 4. DISEASE
-- 질환 리스트
-- (FK) USERID : USERS(USERID) 
CREATE TABLE DISEASE (
    disno       NUMBER PRIMARY KEY,         -- 글 번호
    userid      NUMBER NOT NULL,            -- 작성자 ID (USERS.userid 참조)
    disname     VARCHAR2(100),              -- 질환명
    disex       VARCHAR2(500),              -- 질환 설명
    kindpet     VARCHAR2(100),              -- 반려동물 종류
    infval      VARCHAR2(500),              -- 질환 관련 수치
    mannote     VARCHAR2(500),              -- 주의사항
    bhit        NUMBER DEFAULT 0,           -- 조회수
    createdat   DATE DEFAULT SYSDATE,       -- 작성일자
    bip         VARCHAR2(50),               -- 작성자 IP
    bpass       VARCHAR2(250),              -- 비밀번호
    CONSTRAINT fk_disease_user FOREIGN KEY (userid)
        REFERENCES USERS(userid)            -- USERS 테이블의 userid 참조
);

-- 시퀀스
create sequence disease_seq;

DROP TABLE DISEASE CASCADE CONSTRAINTS;
drop sequence  disease_seq;


-- 반려동물 캐릭터
-- PetCharacter

CREATE TABLE PetCharacter (
    charid     NUMBER PRIMARY KEY,          -- 캐릭터 고유 ID
    userid     NUMBER NOT NULL,             -- 생성자 (USERS.userid 참조)
    kindpet    VARCHAR2(100) NOT NULL,      -- 반려동물 종
    prompt     VARCHAR2(500),               -- AI 프롬프트
    imageurl   VARCHAR2(500),               -- 생성된 이미지 URL
    createdat  DATE DEFAULT SYSDATE,
    CONSTRAINT fk_petcharacter_user FOREIGN KEY (userid)
        REFERENCES Users(userid)
);

-- 시퀀스
CREATE SEQUENCE petcharacter_seq;

DROP TABLE PetCharacter CASCADE CONSTRAINTS;
drop sequence  petcharacter_seq;


commit;

desc roles;



INSERT INTO USERS (
    USERID, EMAIL, NICKNAME, PASSWORD, UFILE, MOBILE, PROVIDER, PROVIDERID
) VALUES (
    users_seq.NEXTVAL,                -- PK 자동 증가
    '1@1',           -- 이메일
    '테스트유저',                      -- 별명
    '123',     -- 비밀번호 (BCrypt 등 암호화된 값)
    'profile.png',                    -- 이미지 파일명
    '01012345678',                    -- 전화번호
    'local',                          -- 인증 제공자
    NULL                              -- 제공자 id (소셜 로그인일 경우 값 입력)
);

INSERT INTO ROLES (
    AUTHID, USERID, EMAIL, AUTH
) VALUES (
    roles_seq.NEXTVAL,   -- 권한 고유 ID 자동 증가
    3,                   -- USERID
    '1@1', -- 이메일
    'ROLE_MEMBER'        -- 권한
);

INSERT INTO ROLES (
    AUTHID, USERID, EMAIL, AUTH
) VALUES (
    roles_seq.NEXTVAL,   -- 권한 고유 ID 자동 증가
    100,                   -- USERID
    'admin@admin', -- 이메일
    'ROLE_ADMIN'        -- 권한
);


INSERT INTO ROLES (
    AUTHID, USERID, EMAIL, AUTH
) VALUES (
    roles_seq.NEXTVAL,   -- 권한 고유 ID 자동 증가
    9,                   -- USERID
    '6@6', -- 이메일
    'ROLE_ADMIN'        -- 권한
);

commit;
CREATE SEQUENCE roles_seq;

SELECT * FROM USERS WHERE USERID = '6';

desc user;

SELECT *
FROM users;


desc users;

insert into users values (150, 'user@test.com', 'testuser', '123', 'file.png', '2026-01-05', '01011', 'local', 'localid' );
insert into users values (100, 'admin@test.com', 'admin', '123', 'file.png', '2026-01-05', '01022', 'local', 'localid' );

desc roles;
select * from roles;
INSERT INTO ROLES VALUES(1, 150, 'user@test.com', 'ROLE_MEMBER');
INSERT INTO ROLES VALUES(9, 100, 'admin@test.com', 'ROLE_ADMIN');
commit;

select * from execsmart;

select * from users;
commit;


commit;

select * from roles;
select * from users;
delete from users where userid = 2;
-- 1. 존재 확인
SELECT * FROM roles WHERE userId = 100;

-- 2. 존재하면 업데이트
UPDATE roles
SET auth = 'ROLE_ADMIN'
WHERE userId = 100;

-- 3. 존재하지 않으면 삽입
INSERT INTO roles (userId, auth)
VALUES (100, 'ROLE_ADMIN');

INSERT INTO roles (authid, userId, auth)
VALUES (1, 100, 'ROLE_ADMIN');


delete from roles;

UPDATE roles
SET auth = 'ROLE_ADMIN'
WHERE userId = 100;
  --AND auth = 'ROLE_MEMBER';
