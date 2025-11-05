package com.pawject.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pawject.service.ExecDelete;
import com.pawject.service.ExecDetail;
import com.pawject.service.ExecInsert;
import com.pawject.service.ExecUpdate;
import com.pawject.service.ExecUpdateForm;

@WebServlet("*.hsh")
public class Execinfo_Contoller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Execinfo_Contoller() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

	protected void doExecinfo(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 각 경로 호출되는지 확인.
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		String path = request.getServletPath();
		
		if (path.equals("/regForm.hsh")) {
			request.getRequestDispatcher("/execinfoboard/write.jsp").forward(request, response);
			
		} else if (path.equals("/reg.hsh")) {
			request.getRequestDispatcher("/execAll.hsh").forward(request, response);

		} else if (path.equals("/execAll.hsh")) {
			request.getRequestDispatcher("/execinfoboard/list.jsp").forward(request, response);

//			service = new ExecInsert();
//			service.exec(request, response);
//			String result = (String) request.getAttribute("result");
//			if (result.equals("7")) {
//				out.println("<script>alert ('관리자에게 문의해주세요.'); location.href='list.do';</script>");
//			}
//			out.println("<script>alert ('관리자에게 문의바랍니다.'); location.href='list.do';</script>");
		} else if (path.equals("/exec.hsh ")) {
//			service = new ExecDetail();
//			service.exec(request, response);
			request.getRequestDispatcher("/execinfoboard/detail.jsp").forward(request, response);

		} else if (path.equals("/updateForm.hsh")) {
//			service = new ExecUpdateForm();
//			service.exec(request, response);
			request.getRequestDispatcher("/execinfoboard/edit.jsp").forward(request, response);

		} else if (path.equals("/update.hsh")) {
			out.println("<script>alert ('수정했습니다.'); location.href='exec.hsh';</script>");
//			service = new ExecUpdate();
//			service.exec(request, response);
//			int id = Integer.parseInt(request.getParameter("id"));
//			System.out.println(id);
//			String result = (String) request.getAttribute("result");
//			if (result.equals("1")) {
//				out.println("<script>alert ('글을 등록해주세요.'); location.href='detail.hsh?id=" + request.getParameter("id")
//						+ "';</script>");
		} else if (path.equals("/delete.hsh")) {
			out.println("<script>alert ('삭제했습니다.'); location.href='/execAll.hsh';</script>");		}
//		 else if (path.equals("/ExecDelete.hsh")) { // 공백있으면 브라우저 안열릴수도 있음.
//			request.getRequestDispatcher("/execinfoboard/write.jsp").forward(request, response);
//
//			service = new ExecDelete();
//			service.exec(request, response);
//			String result = (String) request.getAttribute("result");
//			if (result.equals("7")) {
//				out.println("<script>alert ('글이 삭제되었습니다.'); location.href='list.hsh';</script>");
//			} else {
//				out.println("<script>alert ('비밀번호를 확인해주세요.'); history.go(-1);</script>");
//			}
//		}
	}
}
//ㄴindex.jsp
//ㄴ  [등록폼]   /regForm.hsh               □ /execinfoboard/write.jsp   
//ㄴ  [등록기능]         /reg.hsh            ■ insert()   /execAll.hsh
//ㄴ  [전체보기]         /execAll.hsh        ■ selectAll()       /execinfoboard/list.jsp   
//ㄴ  [상세보기]         /exec.hsh           ■ select()          /execinfoboard/detail.jsp   
//ㄴ  [수정폼]          /updateForm.hsh      ■ updateForm()   /execinfoboard/edit.jsp   
//ㄴ  [수정기능]         /update.hsh          ■ update()    /exec.hsh  해당번호의 글이 바로 수정
//ㄴ  [삭제기능]         /delete.hsh          ■ delete()    /execAll.hsh     




