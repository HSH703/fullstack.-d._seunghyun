desc mbtitype;
--이름           널?       유형            
-------------- -------- ------------- 
--MBTI_TYPE_ID NOT NULL NUMBER        
--NAME                  VARCHAR2(10)  
--DETAILS               VARCHAR2(100) 
--CATEGORY              VARCHAR2(20)  

 select     column_name, data_default
          from       user_tab_columns
          where      table_name='POST';

create sequence mbtitype_seq;

insert into mbtitype (MBTI_TYPE_ID, NAME, DETALIS, CATEGORY) values (mbtitype_seq.nextval, ?, ?, ?);
select * from mbtitype;
select * from mbtitype where MBTI_TYPE_ID=?;

update mbtitype set name=?, detalis=? where MBTI_TYPE_ID=?;

delete from mbtitype where MBTI_TYPE_ID;




