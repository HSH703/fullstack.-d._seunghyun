package com.pawject.service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pawject.dao.HshDao;
import com.pawject.dto.HshDto;

public class ExecDelete implements ExecinfoService {
	@Override
	public void exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		//1. 데이터넘겨받고
		request.setCharacterEncoding("UTF-8");
		int id = Integer.parseInt(request.getParameter("id"));
		//2. 드커프리
		HshDao dao = new HshDao();
		HshDto dto = new HshDto();
		dto.setExecid(id);
		//3. 데이터 넘기기 
		request.setAttribute("result", String.valueOf(dao.delete(dto)));
	}
}
