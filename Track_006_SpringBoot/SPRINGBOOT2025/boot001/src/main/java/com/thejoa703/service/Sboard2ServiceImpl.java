package com.thejoa703.service;

import java.io.IOException;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.thejoa703.dao.Sboard2Dao;
import com.thejoa703.dto.Sboard2Dto;
import com.thejoa703.util.UtilUplad;

@Service
public class Sboard2ServiceImpl implements Sboard2Service { 
	@Autowired Sboard2Dao  dao;
	@Autowired UtilUplad  upload;

	@Override public int insert(MultipartFile file, Sboard2Dto dto) { 
		if(!file.isEmpty()) {
			try { dto.setBfile(  upload.fileUpload(file)  ); }
			catch (IOException e) { e.printStackTrace(); }
		}
		try { dto.setBip( InetAddress.getLocalHost().getHostAddress() ); }
		catch (UnknownHostException e) { e.printStackTrace(); }
		return dao.insert(dto); 
	}
	
	@Override public int update(MultipartFile file, Sboard2Dto dto) {
		if(!file.isEmpty()) {
			try { dto.setBfile(  upload.fileUpload(file)  ); }
			catch (IOException e) { e.printStackTrace(); }
		}
		return dao.update(dto); 
	}
	@Override public int delete(Sboard2Dto dto) { return dao.delete(dto); }
	
	@Override public List<Sboard2Dto> selectAll() { return dao.selectAll(); }
	@Transactional
	@Override public Sboard2Dto select(int id) { dao.updateHit(id);  return dao.select(id); }
	@Override public Sboard2Dto selectUpdateForm(int id) { return dao.select(id); }

	/* 페이징 */
	@Override
	public List<Sboard2Dto> select10(int pageNo) { //(1) 1,10 / (2) 11,20 / (3)21, 30
		HashMap<String, Integer> para = new HashMap<>();
		int start = (pageNo-1)*10 + 1;  //(1)1  (2)11  (3)21
		int end   = start + 9;
		para.put("start", start);
		para.put("end"  , end);
		return dao.select10(para);
	}
	@Override
	public int selectTotalCnt() {
		return dao.selectTotalcnt();
	}
	
	/* 해당 검색어로 3개씩 페이징 */
	@Override
	public List<Sboard2Dto> select3(String search, int pageNo) {
		HashMap<String, Object> para = new HashMap<>();
		int pageSize = 3;
		int start = (pageNo-1)*pageSize + 1;  //(1)1  (2)11  (3)21
		int end   = start + pageSize-1;
		para.put(search, para);
		para.put("start", start);
		para.put("end"  , end);
		return dao.select3(para);
	}

	@Override
	public int selectSearchTotalcnt(String search) {
		return dao.selectSearchTotalcnt();
	}
	
} 








