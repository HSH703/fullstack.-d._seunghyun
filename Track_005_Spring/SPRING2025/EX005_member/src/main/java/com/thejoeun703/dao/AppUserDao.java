package com.thejoeun703.dao;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.thejoeun703.dto.AppUserDto;

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



