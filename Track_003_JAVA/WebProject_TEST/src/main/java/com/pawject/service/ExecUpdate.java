package com.pawject.service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pawject.dao.HshDao;
import com.pawject.dto.HshDto;

public class ExecUpdate implements ExecinfoService {
	@Override
	public void exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		//1. 데이터넘겨받고
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String pass = request.getParameter("pass");
		int id = Integer.parseInt(request.getParameter("id"));
		
		System.out.println(".......1: " + id);
		//2. 디커프리( PostDao ) db처리
		HshDao dao = new HshDao();
		HshDto dto = new HshDto();
		dto.setTitle(title);
		dto.setContent(content);
		dto.setPass(pass);
		dto.setId(id);
		//3. 데이터 넘겨주기
		request.setAttribute("id", id);
		request.setAttribute("result", String.valueOf(dao.update(dto)) );
	}
}
