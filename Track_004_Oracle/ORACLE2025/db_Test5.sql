desc appuser;
 insert into appuer (APP_USER_ID,        EMAIL, PASSWORD, MBTI_TYPE_ID, UFILE, MOBILE, NICKNAME) 
 			 values (appuser_seq.nextval, '1@1', '1',     1,            '1.png', '1', 'nick');
select password from appuser where email='1@1'; 

select * from appuser where email='1@1';
select * from appuser;

delete from appuser where app_user_id='172';




-- Sboard2_Paging_Test
insert into sboard2 ( ID    , APP_USER_ID , btitle, bcontent, bpass, bfile,  bip )
select  sboard2_seq.nextval , APP_USER_ID , btitle, bcontent, bpass, bfile,  bip from sboard2;
      

      
select * from(
select row_number() over(order by id desc) as rnum, 
    id, app_user_id, btitle, bcontent, bpass, bfile, bip, bhit, created_at
from sboard2
) A
where A.rnum between 1 and 10; 

desc appuser;

alter table appuser modify  PROVIDER varchar2(50) not null;

delete from appuser;commit;

desc authorities;
alter table authorities add auth_id number(5) not null;
alter table authorities add email number(5) not null;

    SQL> desc authorities;
    Name                                      Null?    Type
    ----------------------------------------- -------- ----------------------------
    AUTH_ID                                   NOT NULL NUMBER(5)
    EMAIL                                              VARCHAR2(255)
    AUTH                                      NOT NULL VARCHAR2(255)
    APP_USER_ID                                        NUMBER(5)


drop table authorities;

desc authorities;
create table authorities(
    auth_id number(5) not null primary key,
    email   VARCHAR2(255),
    auth    VARCHAR2(255) not null,
    APP_USER_ID    NUMBER(5)
);

insert into appuser( APP_USER_ID, EMAIL, PASSWORD, MBTI_TYPE_ID, UFILE, MOBILE, NICKNAME, PROVIDER, PROVIDER_ID)
		values     (1, '1@1', '1111', '1', '1.png', '01000', '1111', 'local', 'local_001');
commit;

select * from appuser;
select * from authorities;

create sequence appuser_seq;
desc appuser;

insert into authorities(AUTH_ID, 			     EMAIL, 					 AUTH	 				  )
		values (authorities_seq.nextval, '1@1',  'ROLE_USER');
commit;






