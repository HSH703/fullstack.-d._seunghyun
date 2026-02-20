CREATE TABLE USERS (
    userid     NUMBER              PRIMARY KEY,                 -- 사용자 고유 ID
    email      VARCHAR2(200)       NOT NULL UNIQUE,             -- 이메일 주소 (중복 불가)
    nickname   VARCHAR2(100)       NOT NULL,                    -- 닉네임
    password   VARCHAR2(100)       NOT NULL,                    -- 비밀번호
    ufile      VARCHAR2(255)       DEFAULT 'default.png',       -- 이미지 파일 (기본값)
    createdat  DATE                NOT NULL,                    -- 가입일
    mobile     VARCHAR2(200)       UNIQUE                       -- 휴대폰 번호 (NULL 허용, 중복 불가)
);

CREATE SEQUENCE users_seq;

CREATE TABLE AUTHORITIES (
    AUTH    VARCHAR2(100) NOT NULL,
    USERID  NUMBER,
    CONSTRAINT PK_AUTHORITIES PRIMARY KEY (AUTH, USERID),
    CONSTRAINT FK_AUTHORITIES_USERS FOREIGN KEY (USERID)
        REFERENCES USERS (USERID)
);
desc AUTHORITIES;
drop table AUTHORITIES;

CREATE TABLE PETTYPE (
    pettypeid   NUMBER          PRIMARY KEY,         -- 반려동물 종류 ID
    pettypename VARCHAR2(100)   NOT NULL             -- 종류 이름 (강아지, 고양이 등)
);

CREATE TABLE PET (
    petid       NUMBER          PRIMARY KEY,         -- 반려동물 고유 ID
    userid      NUMBER          NOT NULL,            -- 사용자 ID
    petname     VARCHAR2(100)   NOT NULL,            -- 반려동물 이름
    petbreed    VARCHAR2(100)   NOT NULL,            -- 반려동물 종
    birthdate   VARCHAR2(100),                       -- 생년월일
    pettypeid   NUMBER          NOT NULL,            -- 반려동물 종류 ID
    pfile       VARCHAR2(255)   DEFAULT 'default.png', -- 반려동물 이미지파일
    createdat   DATE            NOT NULL,            -- 반려동물 등록일
    CONSTRAINT fk_pet_user FOREIGN KEY (userid)
        REFERENCES USERS(userid),                    -- 사용자 테이블 참조
    CONSTRAINT fk_pet_pettype FOREIGN KEY (pettypeid)
        REFERENCES PETTYPE(pettypeid)                -- 반려동물 종류 테이블 참조
);

-- PET 테이블용 시퀀스 생성
CREATE SEQUENCE pet_seq;

CREATE TABLE FOODBRAND (
    BRANDID        NUMBER           PRIMARY KEY,
    BRANDNAME      VARCHAR2(100)    NOT NULL,
    COUNTRY        VARCHAR2(100),
    BRANDTYPE      VARCHAR2(50)     NOT NULL,   
    ORIGIN         VARCHAR2(50),             
    BRANDINFO      VARCHAR2(500)

);

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

CREATE TABLE NUTRIENT(
    NUTRIENTID NUMBER PRIMARY KEY,
    NUTRIENTNAME VARCHAR2(100) NOT NULL,
    UNIT VARCHAR2(50) 
);

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
    
    -- 외래키 제약조건
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

create table execboard(
    postid     int            primary key,
    execid     int,
    userid     int,
    etitle     varchar2(100),
    econtent   CLOB,
    eimg       varchar2(255),  --이미지경로
    ehit       int            default 0,
    createdat  date           default sysdate,
    updatedat  date           default sysdate,
    
    constraint fk_execboard_user foreign key (userid)    references users(userid),
    constraint fk_execboard_exec foreign key (execid)    references exerciseinfo(execid)
);  

create sequence execboard_seq;

CREATE TABLE DISEASE (
    disno       NUMBER PRIMARY KEY,         -- 글 번호
    appUserid   NUMBER,                     -- 작성자 ID
    disname     VARCHAR2(100),              -- 질환명
    disex       VARCHAR2(500),              -- 질환 설명
    kindpet     VARCHAR2(100),              -- 반려동물 종류
    infval      VARCHAR2(500),              -- 질환 관련 수치
    mannote     VARCHAR2(500),              -- 주의사항
    bhit        NUMBER DEFAULT 0,           -- 조회수
    createdat   DATE DEFAULT SYSDATE,       -- 작성일자
    bip         VARCHAR2(50),               -- 작성자 IP
    bpass       VARCHAR2(250)               -- 비밀번호
);

create sequence disease_seq;

CREATE TABLE disease_ox (
    oxno        NUMBER           PRIMARY KEY,
    disno       NUMBER           NOT NULL,
    oxquestion  VARCHAR2(300)    NOT NULL,
    oxanswer    CHAR(1)          NOT NULL CHECK (oxanswer IN ('O','X')),
    oxcomment   VARCHAR2(400),
    oxbhit      NUMBER           NOT NULL,
    createdat   DATE             NOT NULL,
    CONSTRAINT fk_disease_ox FOREIGN KEY(disno)
        REFERENCES disease(disno)
);

CREATE SEQUENCE disease_ox_seq;


INSERT INTO USERS (userid, email, nickname, password, ufile, createdat, mobile) VALUES
(1, 'user1@example.com', '닉네임1', 'pass1', 'user1.png', SYSDATE, '010-1111-1111');
INSERT INTO USERS VALUES (2, 'user2@example.com', '닉네임2', 'pass2', 'user2.png', SYSDATE, '010-1111-1112');
INSERT INTO USERS VALUES (3, 'user3@example.com', '닉네임3', 'pass3', 'user3.png', SYSDATE, '010-1111-1113');
INSERT INTO USERS VALUES (4, 'user4@example.com', '닉네임4', 'pass4', 'user4.png', SYSDATE, '010-1111-1114');
INSERT INTO USERS VALUES (5, 'user5@example.com', '닉네임5', 'pass5', 'user5.png', SYSDATE, '010-1111-1115');
INSERT INTO USERS VALUES (6, 'user6@example.com', '닉네임6', 'pass6', 'user6.png', SYSDATE, '010-1111-1116');
INSERT INTO USERS VALUES (7, 'user7@example.com', '닉네임7', 'pass7', 'user7.png', SYSDATE, '010-1111-1117');
INSERT INTO USERS VALUES (8, 'user8@example.com', '닉네임8', 'pass8', 'user8.png', SYSDATE, '010-1111-1118');
INSERT INTO USERS VALUES (9, 'user9@example.com', '닉네임9', 'pass9', 'user9.png', SYSDATE, '010-1111-1119');
INSERT INTO USERS VALUES (10, 'user10@example.com', '닉네임10', 'pass10', 'user10.png', SYSDATE, '010-1111-1120');
INSERT INTO USERS VALUES (11, 'user11@example.com', '닉네임11', 'pass11', 'user11.png', SYSDATE, '010-1111-1121');
INSERT INTO USERS VALUES (12, 'user12@example.com', '닉네임12', 'pass12', 'user12.png', SYSDATE, '010-1111-1122');
INSERT INTO USERS VALUES (13, 'user13@example.com', '닉네임13', 'pass13', 'user13.png', SYSDATE, '010-1111-1123');
INSERT INTO USERS VALUES (14, 'user14@example.com', '닉네임14', 'pass14', 'user14.png', SYSDATE, '010-1111-1124');
INSERT INTO USERS VALUES (15, 'user15@example.com', '닉네임15', 'pass15', 'user15.png', SYSDATE, '010-1111-1125');
INSERT INTO USERS VALUES (16, 'user16@example.com', '닉네임16', 'pass16', 'user16.png', SYSDATE, '010-1111-1126');
INSERT INTO USERS VALUES (17, 'user17@example.com', '닉네임17', 'pass17', 'user17.png', SYSDATE, '010-1111-1127');
INSERT INTO USERS VALUES (18, 'user18@example.com', '닉네임18', 'pass18', 'user18.png', SYSDATE, '010-1111-1128');
INSERT INTO USERS VALUES (19, 'user19@example.com', '닉네임19', 'pass19', 'user19.png', SYSDATE, '010-1111-1129');
INSERT INTO USERS VALUES (20, 'user20@example.com', '닉네임20', 'pass20', 'user20.png', SYSDATE, '010-1111-1130');

INSERT INTO AUTHORITIES (AUTH, USERID) VALUES ('ROLE_MEMBER', 1);
INSERT INTO AUTHORITIES (AUTH, USERID) VALUES ('ROLE_MEMBER', 2);
INSERT INTO AUTHORITIES (AUTH, USERID) VALUES ('ROLE_MEMBER', 3);
INSERT INTO AUTHORITIES (AUTH, USERID) VALUES ('ROLE_MEMBER', 4);
INSERT INTO AUTHORITIES (AUTH, USERID) VALUES ('ROLE_MEMBER', 5);
INSERT INTO AUTHORITIES (AUTH, USERID) VALUES ('ROLE_MEMBER', 6);
INSERT INTO AUTHORITIES (AUTH, USERID) VALUES ('ROLE_MEMBER', 7);
INSERT INTO AUTHORITIES (AUTH, USERID) VALUES ('ROLE_MEMBER', 8);
INSERT INTO AUTHORITIES (AUTH, USERID) VALUES ('ROLE_MEMBER', 9);
INSERT INTO AUTHORITIES (AUTH, USERID) VALUES ('ROLE_MEMBER', 10);
INSERT INTO AUTHORITIES (AUTH, USERID) VALUES ('ROLE_MEMBER', 11);
INSERT INTO AUTHORITIES (AUTH, USERID) VALUES ('ROLE_MEMBER', 12);
INSERT INTO AUTHORITIES (AUTH, USERID) VALUES ('ROLE_MEMBER', 13);
INSERT INTO AUTHORITIES (AUTH, USERID) VALUES ('ROLE_MEMBER', 14);
INSERT INTO AUTHORITIES (AUTH, USERID) VALUES ('ROLE_MEMBER', 15);
INSERT INTO AUTHORITIES (AUTH, USERID) VALUES ('ROLE_MEMBER', 16);
INSERT INTO AUTHORITIES (AUTH, USERID) VALUES ('ROLE_MEMBER', 17);
INSERT INTO AUTHORITIES (AUTH, USERID) VALUES ('ROLE_MEMBER', 18);
INSERT INTO AUTHORITIES (AUTH, USERID) VALUES ('ROLE_MEMBER', 19);
INSERT INTO AUTHORITIES (AUTH, USERID) VALUES ('ROLE_MEMBER', 20);

INSERT INTO PET (petId, userId, petName, petBreed, birthDate, petTypeId, pfile, createdAt) VALUES
(1, 1, '초코', '푸들', DATE '2022-01-01', 2, 'pet1.png', SYSDATE);
INSERT INTO PET VALUES (2, 2, '나비', '코숏', DATE '2021-05-12', 1, 'pet2.png', SYSDATE);
INSERT INTO PET VALUES (3, 3, '보리', '말티즈', DATE '2020-07-20', 2, 'pet3.png', SYSDATE);
INSERT INTO PET VALUES (4, 4, '하늘', '러시안블루', DATE '2019-03-15', 1, 'pet4.png', SYSDATE);
INSERT INTO PET VALUES (5, 5, '콩이', '시바견', DATE '2023-09-10', 2, 'pet5.png', SYSDATE);
INSERT INTO PET VALUES (6, 6, '미미', '페르시안', DATE '2022-11-05', 1, 'pet6.png', SYSDATE);
INSERT INTO PET VALUES (7, 7, '바다', '골든리트리버', DATE '2021-08-22', 2, 'pet7.png', SYSDATE);
INSERT INTO PET VALUES (8, 8, '루루', '샴', DATE '2020-02-14', 1, 'pet8.png', SYSDATE);
INSERT INTO PET VALUES (9, 9, '탄이', '닥스훈트', DATE '2019-06-30', 2, 'pet9.png', SYSDATE);
INSERT INTO PET VALUES (10, 10, '호두', '먼치킨', DATE '2023-01-25', 1, 'pet10.png', SYSDATE);
INSERT INTO PET VALUES (11, 11, '몽이', '포메라니안', DATE '2022-04-18', 2, 'pet11.png', SYSDATE);
INSERT INTO PET VALUES (12, 12, '별이', '브리티시숏헤어', DATE '2021-09-09', 1, 'pet12.png', SYSDATE);
INSERT INTO PET VALUES (13, 13, '두부', '불독', DATE '2020-12-12', 2, 'pet13.png', SYSDATE);
INSERT INTO PET VALUES (14, 14, '라라', '터키시앙고라', DATE '2019-10-01', 1, 'pet14.png', SYSDATE);
INSERT INTO PET VALUES (15, 15, '뭉치', '비글', DATE '2023-03-03', 2, 'pet15.png', SYSDATE);
INSERT INTO PET VALUES (16, 16, '냥이', '아메리칸숏헤어', DATE '2022-07-07', 1, 'pet16.png', SYSDATE);
INSERT INTO PET VALUES (17, 17, '깜이', '치와와', DATE '2021-11-11', 2, 'pet17.png', SYSDATE);
INSERT INTO PET VALUES (18, 18, '초롱', '스코티시폴드', DATE '2020-05-05', 1, 'pet18.png', SYSDATE);
INSERT INTO PET VALUES (19, 19, '하리', '보스턴테리어', DATE '2019-08-08', 2, 'pet19.png', SYSDATE);
INSERT INTO PET VALUES (20, 20, '쥬디', '노르웨이숲', DATE '2023-06-06', 1, 'pet20.png', SYSDATE);

select * from users;
select * from authorities;
desc pet;
select * from pettype;
UPDATE authorities
SET auth = 'ROLE_ADMIN'
WHERE userId = 41
  AND auth = 'ROLE_MEMBER';
  INSERT INTO pettype (pettypeid, pettypename) VALUES (1, '고양이');
INSERT INTO pettype (pettypeid, pettypename) VALUES (2, '강아지');
commit;