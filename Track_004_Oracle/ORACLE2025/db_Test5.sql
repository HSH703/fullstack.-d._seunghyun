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
