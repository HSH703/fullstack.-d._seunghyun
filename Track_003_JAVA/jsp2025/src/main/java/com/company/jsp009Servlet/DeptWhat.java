package com.company.jsp009Servlet;

import java.io.IOException;
import java.sql.*;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DeptWhat
 */
@WebServlet("/DeptWhat")
public class DeptWhat extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeptWhat() { super(); }
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
 
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		//1. 데이터넘겨받기
		int deptno = Integer.parseInt(request.getParameter("deptno"));
		//2. 드커프리
		Connection conn = null;  PreparedStatement pstmt=null;  ResultSet rset = null;
		String driver="oracle.jdbc.driver.OracleDriver";
		String url   ="jdbc:oracle:thin:@localhost:1521:xe";
		String user  ="scott", pass="tiger";
		String sql = "select * from dept where deptno=?";
		DeptDto result = null;
		try {
			//2-1. 드라이버로딩
			Class.forName(driver);
			//2-2. 커넷션
			conn = DriverManager.getConnection(url, user, pass);
			//2-3. PreparedStatement
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, deptno); //1. ?의순서 -1
			//2-4. ResultSet (결과) - selecet: executeQuery, isert/update/delete: executedUpdate
			rset = pstmt.executeQuery(); //표
			while(rset.next()){ //줄
				result = new DeptDto(rset.getInt("deptno") 
						 			,rset.getString("dname")
						 			,rset.getString("loc"));
			}
			System.out.println(",,,,,,,,,,,," + result);
		}catch(Exception e) {e.printStackTrace();
		}finally {
			if(rset !=null) { try{ rset.close();}catch(SQLException e){e.printStackTrace();} }
			if(pstmt !=null){ try{ pstmt.close();}catch(SQLException e){e.printStackTrace();} }
			if(conn !=null) { try{ conn.close();}catch(SQLException e){e.printStackTrace();} }
		}
		//3. 데이터화면에 넘겨주기. (jsp010_result.jsp)
		request.setAttribute("dto", result);
		response.sendRedirect("jsp010_result.jsp"); //주소표시줄 줄넘기기 - 여기서마무리 / request유지X
		request.getRequestDispatcher("jsp010_result.jsp").forward(request,response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
