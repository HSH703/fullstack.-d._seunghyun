package com.thejoeun703.dao;

import java.util.List;
import java.util.Map;
import com.thejoeun703.dto.EmpDto;

@MbtiDao
public interface EmpDao {
	public List<EmpDto> test1(Map<String, String> para);
}
