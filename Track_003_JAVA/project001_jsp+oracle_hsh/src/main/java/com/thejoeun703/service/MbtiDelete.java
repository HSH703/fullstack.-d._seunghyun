package com.thejoeun703.service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.thejoeun703.dao.PostDao;
import com.thejoeun703.dto.PostDto;

public class MbtiDelete implements MbtiService {
	@Override
	public void exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		//1. 데이터넘겨받고
		int  id = Integer.parseInt(request.getParameter("id"));
		String pass = request.getParameter("pass");
		//2. 드커프리( PostDao ) db처리
		PostDao dao = new PostDao();
		PostDto dto = new PostDto();
		dto.setPass(pass);
		dto.setId(id);
		//3. 데이터 넘기기 
		request.setAttribute("result", String.valueOf(dao.delete(dto)) );
	}
}
