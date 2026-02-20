package com.thejoeun703.service;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.thejoeun703.dto.AppUserAuthDto;
import com.thejoeun703.dto.AppUserDto;
import com.thejoeun703.dto.AuthDto;
import com.thejoeun703.dto.Sboard1Dto;

public interface AppUserService {
	public int insert(AppUserDto dto);
	public int update(AppUserDto dto);
	public int delete(AppUserDto dto);
	public List<AppUserDto> selectAll();
	public AppUserDto     select(int appUserId);
	public AppUserDto     selectEmail(String email);
	public int selectLogin(AppUserDto dto);
	
	/* Upload */
	public int insert2(MultipartFile file, AppUserDto dto);
	public int update2(MultipartFile file, AppUserDto dto);

	/* iddouble */
	public int iddouble(String email);

	/* admin 유저관리 - 전체유저정보 selectAll
	 * 				/ 아이디주면 해당 유저정보찾기 select 
	 * 				/ 수정하기 updateAdimin
	 * 				/ 삭제하기 deleteAdimin */
	public int deleteAdimin(AppUserDto dto);
	public int updateAdimin(AppUserDto dto);
	
	/* security */
	/* security */
	public int insertAuth (AuthDto dto);
	public AppUserAuthDto readAuth (String email);
	
	public int insert3(MultipartFile file, AppUserDto dto);
	public int delete3(AppUserDto dto);
	public int update3(MultipartFile file, AppUserDto dto);
	
}
