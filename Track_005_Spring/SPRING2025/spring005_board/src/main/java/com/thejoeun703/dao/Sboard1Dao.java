package com.thejoeun703.dao;

import java.util.List;

import com.thejoeun703.dto.Sboard1Dto;

@MbtiDao
public interface Sboard1Dao {
	public int insert (Sboard1Dto dto);
	public int update (Sboard1Dto dto);
	public int updateHit(int id);
	public int delete (Sboard1Dto dto);
	public List<Sboard1Dto> selectAll();
	public Sboard1Dto       select(int id);
}
