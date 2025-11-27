desc appuser;
 insert into appuer (APP_USER_ID,        EMAIL, PASSWORD, MBTI_TYPE_ID, UFILE, MOBILE, NICKNAME) 
 			 values (appuser_seq.nextval, '1@1', '1',     1,            '1.png', '1', 'nick');
select password from appuser where email='1@1'; 

select * from appuser where email='1@1';
select * from appuser;

delete from appuser where app_user_id='172';
