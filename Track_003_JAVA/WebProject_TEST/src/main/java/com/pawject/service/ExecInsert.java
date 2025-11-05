package com.pawject.service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.pawject.dao.HshDao;
import com.pawject.dto.HshDto;

public class ExecInsert implements ExecinfoService {
	@Override
	public void exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		// 1. 데이터넘겨받고
//		int app_user_id = Integer.parseInt(request.getParameter("app_user_id"));
		HttpSession session = request.getSession();
		int app_user_id =(Integer)session.getAttribute("APP_USER_ID");
		String title    = request.getParameter("title");
		String content  = request.getParameter("content");
		String pass     = request.getParameter("pass");
		// 2. 디커프리( PostDao ) db처리
		HshDao dao = new HshDao();
		HshDto dto = new HshDto();
		dto.setAppUserId(app_user_id);
		dto.setTitle(title); dto.setContent(content); dto.setPass(pass);
		String result = String.valueOf( dao.insert(dto) );  //##
		// 3. 데이터 넘겨주기
		request.setAttribute("result", result);
	}
}
