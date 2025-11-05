package com.pawject.service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pawject.dao.HshDao;

public class ExecList implements ExecinfoService {
	@Override
	public void exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		// 1. 데이터 넘겨받기 X 
		// 2. 드커프리 ( PostDao )
		HshDao dao = new HshDao();
		// 3. 데이터 넘겨주기
		request.setAttribute("list", dao.selectAll());
		
	}
}
