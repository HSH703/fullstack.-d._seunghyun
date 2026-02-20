desc userinfo;
이름    널?       유형            
----- -------- ------------- 
NO    NOT NULL NUMBER        
EMAIL NOT NULL VARCHAR2(100) 
AGE            NUMBER   

create sequence userinfo_seq;


-- 오라클에서 crud 5개 테스트
-- 1-1. insert
insert into userinfo (no, email, age) values(1, '113@gmail.com', 20);

-- 1-2. insert (+userinfo_seq.nextval)
insert into userinfo (no, email, age) values(userinfo_seq.nextval, '4321@gmail.com', 20);

-- 2. select
select * from userinfo;

-- 3. 해당번호 유저정보
select * from userinfo where no = 1;

-- 4. update
update userinfo set email='2345@naver.com', age=40  where no = 1; 

-- 5. delete 해당번호 유저삭제
delete from userinfo   where  no=1;


