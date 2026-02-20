package com.thejoeun703.service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.thejoeun703.dao.PostDao;
import com.thejoeun703.dto.PostDto;

public class MbtiDetail implements MbtiService {
	@Override
	public void exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//1. 데이터넘겨받기 (ID)
		int id = Integer.parseInt(request.getParameter("id"));
		//2. 디커프리( PostDao ) db처리
		PostDao dao = new PostDao();
		dao.update_hit(id);
		PostDto result = dao.select(id); //해당번호로 값 가져오기.
		//3. 데이터 넘겨주기
		request.setAttribute("dto", result);
		
		
	}
}
