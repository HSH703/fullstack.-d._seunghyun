package com.thejoeun703.dao;

import java.util.List;
import java.util.Map;

import com.thejoeun703.dto.AppUserAuthDto;
import com.thejoeun703.dto.EmpDto;

@MbtiDao
public interface EmpDao {
	public List<EmpDto> test1(Map<String, String> para);
	public List<EmpDto> test2(EmpDto dto);
	public List<EmpDto> test3(EmpDto dto);
	public List<EmpDto> test4(EmpDto dto);
	public 		int 	test5(EmpDto dto);
	public List<EmpDto> test6(List<Integer>list);
	public List<EmpDto> readAuth(AppUserAuthDto dto);
}
