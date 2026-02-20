--    Name                                      Null?    Type
--    ----------------------------------------- -------- ----------------------------
--    ID                                        NOT NULL NUMBER
--    APP_USER_ID                               NOT NULL NUMBER
--    BTITLE                                    NOT NULL VARCHAR2(1000)
--    BCONTENT                                  NOT NULL CLOB
--    BPASS                                     NOT NULL VARCHAR2(255)
--    BFILE                                              VARCHAR2(255)
--    BHIT                                               NUMBER(10)
--    BIP                                       NOT NULL VARCHAR2(255)
--    CREATE_AT                                          TIMESTAMP(6)
drop table sboard1;

create table sboard1(
    id           number         not null  primary key,
    app_user_id  number         not null,
    btitle       varchar2(1000) not null,
    bcontent     clob           not null,
    bpass        varchar2(255)  not null,
    bfile        varchar2(255), 
    bhit         number(10)                 default 0,
    bip          varchar2(255)   not null,
    CREATE_AT    TIMESTAMP(6)               default sysdate
);
desc sboard1;

create sequence sboard1_seq;

--INSERT
insert into sboard1 (id, app_user_id, btitle, bcontent, bpass, bip) 
              values(1, 1234, 'Title', 'practice', '1111','127.0.0.1');
              
insert into sboard1 (id, app_user_id, btitle, bcontent, bpass, bip) 
              values(sboard1_seq.nextval, 1234, 'Title', 'practice', '2222', '192.168.0.1');
--SELECT ALL
select * from sboard1 order by id desc;

--SELECT
select * from sboard1 where id=41;

--UPDATE
update sboard1 
set btitle='new1', bcontent='content1'
where id=41 and bpass='2222';

--DELETE
delete from sboard1 where id=41 and bpass='1111';

