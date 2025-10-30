-- appuser
create sequence post_seq;

select table_name from user_tables;

--post
create table post(
     ID           NUMBER           NOT NULL,   
     APP_USER_ID  NUMBER           NOT NULL,       
     TITLE        VARCHAR2(200)    NOT NULL,    
     CONTENT      CLOB             NOT NULL,     
     PASS         VARCHAR2(100),
     CREATED_AT   DATE             DEFAULT SYSDATE,
     HIT          NUMBER           DEFAULT 0,
     PRIMARY KEY(ID)
);


--1. [글쓰기]   sql:
--	insert into post (id              , app_user_id, title, content, pass) 
--	           values(post_seq.nextval, ?          , ?    , ?      , ?   );
               
	insert into post (id               , app_user_id, title  , content  , pass) 
	           values(post_seq.nextval , 1          , 'title', 'content','1111'   );

--2. [전체보기]전체글가져오기, appuser테이블에서 email 도 같이 가져오기 sql
	SELECT   p.*    , u.email
	FROM     post p join appuser u on p.app_user_id = u.app_user_id;

--3. [상세보기]글번호  해당하는 글가져오기 sql:
	update post set hit=hit+1 where id=1;
	select * from post where id=1 ;

--4. 글수정하기 sql:
	update post set title='aa', content='bb' where id=1 and pass='1111';

--5. 글번호  해당하는 삭제
	delete from post where id=1 and pass='1111';

select * from post;
select * from appuser;

