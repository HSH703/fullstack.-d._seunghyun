<%@page import="com.thejoeun703.dao.*"%>
<%@page import="com.thejoeun703.dto.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Latest compiled and minified CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Latest compiled JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
   <div class="container card  my-5">
      <h3  class="card-header"> DAO TEST </h3>
      
<%--       <%
      PostDao dao = new PostDao();
      PostDto dto = new PostDto();
      dto.setAppUserId(61);
      dto.setTitle("첫번째 글쓰기입니다.");
      dto.setContent("내용");
      dto.setPass("1111");
      out.println( dao.insert(dto) ); //1 나오면 글쓰기 성공~!
      %> --%> 
       <!-- 생성일 2025/10/28일 -->
      
      
<%--  <pre>  
      2. selectAll
      </pre>
      <%
      PostDao dao = new PostDao();
      out.println(dao.selectAll());
      %> --%>   
       
 <%--       <pre class="alert alert-success">  
      3. select
      </pre>
      <%
      PostDao dao = new PostDao();
      PostDto dto = new PostDto();
      dto.setId(1);
      out.println(dao.select(11));
      %>  --%>
      
      <%
      PostDao dao = new PostDao();
/*    PostDto dto = new PostDto(); */  
      out.println(dao.update_hit(11));
      out.println(dao.select(11));
      %> 
      

      
   </div>
</body>
</html>









