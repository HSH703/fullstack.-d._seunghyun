package com.pawject.service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pawject.dao.HshDao;
import com.pawject.dto.HshDto;

public class ExecDetail implements ExecinfoService {
	@Override
	public void exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//1. 데이터넘겨받기 (ID)
		int id = Integer.parseInt(request.getParameter("id"));
		//2. 디커프리( PostDao ) db처리
		HshDao dao = new HshDao();
		dao.update_hit(id);
		HshDto result = dao.select(id); //해당번호로 값 가져오기.
		//3. 데이터 넘겨주기
		request.setAttribute("dto", result);
		
		
	}
}
