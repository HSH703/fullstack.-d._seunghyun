desc appuser;
drop table appuser;
create table  
DROP TABLE appuser CASCADE CONSTRAINTS;

DROP TABLE appuser CASCADE CONSTRAINTS;
  
ALTER TABLE appuser DROP COLUMN PROVIDER;
SELECT constraint_name, constraint_type
FROM user_constraints
WHERE table_name = 'APPUSER';

ALTER TABLE appuser DROP COLUMN PROVIDER;

  SELECT a.constraint_name, a.table_name
FROM user_constraints a
WHERE a.constraint_type = 'R'
  AND a.r_constraint_name IN (
      SELECT constraint_name
      FROM user_constraints
      WHERE table_name = 'APPUSER'
  );
DROP  TABLE APPUSER  CASCADE CONSTRAINTS;

CREATE TABLE APPUSER (
    APP_USER_ID     NUMBER NOT NULL,
    EMAIL           VARCHAR2(255) NOT NULL UNIQUE,
    PASSWORD        VARCHAR2(255) NOT NULL,
    NICKNAME        VARCHAR2(100),
    MOBILE          VARCHAR2(20),
    MBTI_TYPE_ID    NUMBER,
    UFILE           VARCHAR2(255),
    CREATED_AT      DATE DEFAULT SYSDATE 
);

create sequence APPUSER_SEQ;

desc appuser;


commit;
drop sequence  APPUSER_SEQ;



select * from appuser;
