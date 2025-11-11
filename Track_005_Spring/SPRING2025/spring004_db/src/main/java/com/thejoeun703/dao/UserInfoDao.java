package com.thejoeun703.dao;

import java.util.List;

import com.thejoeun703.dto.UserInfoDto;

@MyDao
public interface UserInfoDao {
	public int insert(UserInfoDto dto);
	public List<UserInfoDto> selectAll();
	public UserInfoDto select(int no);
	public int update(UserInfoDto dto);
	public int delete(int no);
}
