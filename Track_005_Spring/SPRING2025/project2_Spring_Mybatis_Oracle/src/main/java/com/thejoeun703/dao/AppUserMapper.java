package com.thejoeun703.dao;

import com.thejoeun703.dto.AppUser;
import com.thejoeun703.dto.AppUserAuthDto;
import com.thejoeun703.dto.AuthDto;

@MbtiDao
public interface AppUserMapper {
	public int 			  insert ( AppUser dto);
	public AppUserAuthDto readAuth  ( AppUser dto); //email, password, 권한들
	public AppUser 		  select    ( AppUser dto);
	public AppUser		  selectPassword(AppUser dto);	
	public int update ( AppUser dto);
	public int delete ( AppUser dto);
	public int insertAuth(AuthDto dto);
}
/*
SQL> desc appuser;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 APP_USER_ID                               NOT NULL NUMBER(5)
 EMAIL                                     NOT NULL VARCHAR2(100)
 PASSWORD                                           VARCHAR2(100)
 MBTI_TYPE_ID                                       NUMBER(3)
 CREATED_AT                                         DATE
 UFILE                                              VARCHAR2(255)
 MOBILE                                             VARCHAR2(50)
 NICKNAME                                           VARCHAR2(50) 
 
 Q1. 테이블 : appuser   mobile 필드 추가 - null
 Q2. dto
 Q3. Dao 필요한 sql - [com.thejoeun703.dao.AppUserMapper]
 - create (회원가입)
 insert into appuser (APP_USER_ID,        EMAIL, PASSWORD, MBTI_TYPE_ID, UFILE, MOBILE, NICKNAME) 
 			 values (appuser_seq.nextval, '1@1', '1',     1,            '1.png', '1', 'nick');
 - read   (로그인, 아이디찾기-해당이메일로, 비밀번호찾기-해당이메일로) : 
 	* 해당 이메일로 email, password, 권한들가져오기
 	select u.email, password, auth
 	from appuser u left join authorities a on u.email = a.email 
 	where u.email='1@1'
 	
 	 * 해당이메일로 정보가져오기 
 	 - select * from appuser where email='1@1';
 	 
 	 * 해당이메일로 비밀번호찾기
 	 - select password from appuser where email='1@1'; 
 - update (정보수정) 해당id의 유저업데이트
    update appuser set MBTI_TYPE_ID=1 , UFILE='2.png', MOBILE='1', NICKNAME='1' where APP_USER_ID=143
 - delete (정보삭제) 해당id의 유저삭제
 	delete from appuser where APP_USER_ID=163;
 
 Q4. Service
 
 Q5. Controller
*/