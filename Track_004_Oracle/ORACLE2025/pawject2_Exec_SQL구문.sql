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

-- 작성자 ID (외래키용)


-- 반려동물 ID (외래키용)



-- 운동정보게시판테이블(2단계프로젝트)
-- CREATE
CAREATE TABLE EXECINFO(
    POSTID     INT            PRIMARY KEY,
    EHIT       INT,
    ETITLE     VARCHAR2(100),
    ECONTENT   CLOB,
    EIMG       VARCHAR2(255),
    CREATEDAT  DATE           DEFAULT SYSDATE,
    UPDATEDAT  DATE           DEFAULT SYSDATE,
    
    CONSTRAINT EXECTYPE FOREIGN KEY (EXECTYPE) REFERENCES EXECTYPE(EXECTYPE),
    CONSTRAINT USERID   FOREIGN KEY (###) REFERENCES ###(###),
    CONSTRAINT PETID    FOREIGN KEY (###) REFERENCES ###(###)
);  -- ai에게 물어보기(기능이 어떤지?)

-- READ


-- UPDATE


-- DELETE










