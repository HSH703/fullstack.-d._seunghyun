package com.thejoeun703.dao;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.thejoeun703.dto.AppUserAuthDto;
import com.thejoeun703.dto.AppUserDto;
import com.thejoeun703.dto.AuthDto;

@MbtiDao
public interface AppUserDao {
	public int insert(AppUserDto dto);
	public int update(AppUserDto dto);
	public int delete(AppUserDto dto);
	public List<AppUserDto> selectAll();
	public AppUserDto     select(int id);
	public AppUserDto     selectEmail(String email);
	public int selectLogin(AppUserDto dto);
	
	/* Upload */
	public int insert2(AppUserDto dto);
	public int update2(AppUserDto dto);
	
	/* iddouble */
	public int iddouble(AppUserDto dto);
	
	/* admin 유저관리 - 전체유저정보 selectAll
	 * 				/ 아이디주면 해당 유저정보찾기 select 
	 * 				/ 수정하기 updateAdimin
	 * 				/ 삭제하기 deleteAdimin */
	public int deleteAdimin(AppUserDto dto);
	public int updateAdimin(AppUserDto dto);
	

	/* security */
	/* security */
	public int insertAuth (AuthDto dto);
	public AppUserAuthDto readAuth (AppUserAuthDto dto);
	
}
/*
■ insert
insert into appuser (APP_USER_ID , EMAIL, PASSWORD, MBTI_TYPE_ID)  
values (appuser_seq.nextval, #{email} , #{password},#{mbtitypeid})

■ update
update appuser  set  password='1234' , MBTI_TYPE_ID=2  where app_user_id=#{appuserid}  

■ delete
delete from appuser  where app_user_id=#{appuserid}  and password=#{password} 

■ selectAllLogin
select count(*) cnt from appuser  where  email=#{email}  and PASSWORD=#{password}

■ selectAll
select * from appuser   order by app_user_id desc 

■ select
select * from appuser   where app_user_id=#{appuserid}; 


*/



