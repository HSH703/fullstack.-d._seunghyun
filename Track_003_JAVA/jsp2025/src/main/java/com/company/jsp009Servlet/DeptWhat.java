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

/*


▶view
    1. list.jsp
    2. write.jsp
    3. detail.jsp
    4. edit.jsp
    5. delete.jsp

▶controller
    1. frontcontroller
        1-1. @WebServlet (개발용) *.do  , *.member , *.본인이니셜 (겹치는 경우가 있으니 주의!)
        1-2. web.xml     (배포용)
        
        [com.thejoeun703.controller] - MbtiController

        ㄴ index.jsp                                     ■ = DB타야됨. 
            ㄴ [전체글보기]  /list.do             ■ MbtiList       /          mbtiBoard/list.jsp 
            ㄴ [글쓰기폼]   /writeview.do        □                /          mbtiBoard/write.jsp
            ㄴ [글쓰기기능]  /write.do            ■ MbtiInsert     / 알림창 +  list.do
            ㄴ [상세보기]    /detail.do           ■ MbtiDetail     /          mbtiBoard/detail.jsp   
            ㄴ [글수정폼]    /editview.do         ■ MbtiUpdateView /          mbtiBoard/edit.jsp    
            ㄴ [글수정기능]  /edit.do             ■ MbtiUpdate     / 알림창 +  mbtiBoard/detail.jsp     
            ㄴ [글삭제폼]    /deleteview.do       □                /          mbtiBoard/delete.jsp 
            ㄴ [글삭제기능]   /delete.do          ■ MbtiDelete     / 알림창 +  list.do     

        1-1. frontcontroller   web.xml  [com.thejoeun703.controller] - MbtiController
        1-2. view  연결확인


     2. service 
         [com.thejoa703.service] 
         MbtiService <<interface>>
            △....  MbtiList         데이터 x / selectAll()
            △....  MbtiInsert       데이터 o / insert( PostDto dto )
            △....  MbtiDetail       데이터 o / select(int id) , update_hit( int id )
            △....  MbtiUpdateView   데이터 o / select(int id)
            △....  MbtiUpdate       데이터 o /  update( PostDto dto )
            △....  MbtiDelete       데이터 o /  update( PostDto dto )


*/





