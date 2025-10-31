package com.thejoeun703.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.thejoeun703.service.MbtiDelete;
import com.thejoeun703.service.MbtiDetail;
import com.thejoeun703.service.MbtiInsert;
import com.thejoeun703.service.MbtiList;
import com.thejoeun703.service.MbtiService;
import com.thejoeun703.service.MbtiUpdate;
import com.thejoeun703.service.MbtiUpdateView;

/**
 * Servlet implementation class MbtiController
 */
//@WebServlet("*.do")
public class MbtiController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MbtiController() {
        super();
    }
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);
	}

	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");                // 알림창에 ?가 뜨면, 이쪽 부분이 잘못된거임.
		response.setContentType("text/html; charset=UTF-8");  // 알림창에 ?가 뜨면, 이쪽 부분이 잘못된거임.
		PrintWriter out = response.getWriter();
		String path = request.getServletPath();  //		/a.do로 경로작성 가능.
		System.out.println(path);
		
		MbtiService service = null;
		
		if( path.equals("/list.do") ) { 
			// ■  MbtiList     /list.jsp    - 데이터 받고 처리
			service = new MbtiList(); service.exec(request, response);
			request.getRequestDispatcher("mbtiboard/list.jsp").forward(request, response);
			
			
		}else if( path.equals("/writeView.do") ) {
			// □          /  btiboard/write.jsp   
			request.getRequestDispatcher("mbtiboard/write.jsp").forward(request, response);
			
		}else if( path.equals("/write.do") ) {
/////////////////////////////////////////////////////////////////////////////////////////////////////			
			//■  MbtiInsert  / 알림창 +  list.do
			service = new MbtiInsert();  service.exec(request, response);
			// 알림창 + response.sendRedirect (x)
			//			out.println("<script>alert ('글쓰기에 성공했습니다.');</script>");
			//			response.sendRedirect("list.do");  - 다른 url로 넘어감.
			String result = (String)request.getAttribute("result");
			if( result.equals("1") ) {
				out.println("<script>alert ('글쓰기에 성공했습니다.'); location.href='list.do';</script>");
			}
			out.println("<script>alert ('관리자에게 문의바랍니다.'); location.href='list.do';</script>");
/////////////////////////////////////////////////////////////////////////////////////////////////////
		}else if( path.equals("/detail.do") ) {
			// ■  MbtiDetail /  mbtiboard/detail.jsp 
			service = new MbtiDetail(); service.exec(request, response);
			request.getRequestDispatcher("mbtiboard/detail.jsp").forward(request, response);
			
		}else if( path.equals("/editView.do") ) {
			//■  MbtiUpdateView  /  mbtiboard/edit.jsp
			service = new MbtiUpdateView(); service.exec(request, response);
			request.getRequestDispatcher("mbtiboard/edit.jsp").forward(request, response);
			
		}else if(path.equals("/edit.do")) {
			//■  MbtiUpdate /  알림창 +  mbtiboard/detail.jsp
			service = new MbtiUpdate(); service.exec(request, response);
			int id = Integer.parseInt(request.getParameter("id"));
			System.out.println(id);
			String result = (String) request.getAttribute("result");
			if(result.equals("1")) {
				out.println("<script>alert ('글수정에 성공했습니다.'); location.href='detail.do?id="+request.getParameter("id")+"';</script>");
			}else{
				out.println("<script>alert ('비밀번호를 확인해주세요.'); history.go(-1);</script>");
			}
/////////////////////////////////////////////////////////////////////////////////////////////////////		
		}else if(path.equals("/deleteView.do")) {
			//□                    /         mbtiboard/delete.jsp
			request.getRequestDispatcher("mbtiboard/delete.jsp").forward(request, response);
			
		}else if(path.equals("/delete.do")) {  //공백있으면 브라우저 안열릴수도 있음.
			//■  MbtiDelete      /  알림창 +  list.do
			service = new MbtiDelete(); service.exec(request, response);
			String result = (String) request.getAttribute("result");
			if(result.equals("1")) {
				out.println("<script>alert ('글삭제를 성공했습니다.'); location.href='list.do';</script>");
			}else {
				out.println("<script>alert ('비밀번호를 확인해주세요.'); history.go(-1);</script>");
			}
		}
/////////////////////////////////////////////////////////////////////////////////////////////////////					

	}
}


//ㄴ index.jsp
//ㄴ [전체글보기] /list.do        ■  MbtiList          /          mbtiBoard/list.jsp
//ㄴ [글쓰기폼  ] /writeView.do   □                    /         mbtiBoard/write.jsp
//ㄴ [글쓰기기능]  /write.do      ■  MbtiInsert        / 알림창 +  list.do
//ㄴ [상세보기 ]   /detail.do     ■  MbtiDetail       /          mbtiBoard/detail.jsp 
//ㄴ [글수정폼  ]  /editView.do   ■  MbtiUpdateView   /          mbtiBoard/edit.jsp  
//ㄴ [글수정기능]   /edit.do        ■  MbtiUpdate      /  알림창 +  mbtiBoard/detail.jsp 
//ㄴ [글삭제폼  ]  /deleteView.do □                    /         mbtiBoard/delete.jsp   
//ㄴ [글삭제기능]   /delete.do      ■  MbtiDelete      /  알림창 +  list.do



