<%@page import="com.pawject.dto.HshDto"%>
<%@page import="com.pawject.dao.HshDao"%>
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
      <h3  class="card-header alert alert-success"> DAO TEST </h3>
		<pre class="alert alert-primary"> 1. INSERT</pre> <%-- HshDao에서 ? 갯수만 맞추면 됨.  --%>	
		<%-- 
		insert into exerciseinfo (execid, exectype, description, avgkcal30min, exectargetmin, suitablefor, intensitylevel ) 
		values(exerciseinfo_seq.nextval, '산책', '기본적인 야외활동/스트레스 해소', 80.0, 30, '모든 견종, 노령견 포함', '저강도' );
		--%>
<%--         <% 
 		HshDao dao = new HshDao(); 
		HshDto dto = new HshDto();
		dto.setExectype("산책");
		dto.setDescription("기본적인 야외활동/스트레스해소");
		dto.setAvgkcal30min(80);
		dto.setExectargetmin(30);
		dto.setSuitablefor("모든견종, 노령견 포함");
		dto.setIntensitylevel("저강도");
 		out.println(dao.insert(dto));
    	%>	
  --%> 		
 		<pre class="alert alert-info"> 2. SELECTALL</pre>
<%--         <% 
		HshDao dao = new HshDao();
		out.println(dao.selectAll());
		%>		
 --%>		
 		<pre class="alert alert-success"> 3. SELECT</pre>
  	<%-- 	<%
  		//select * from exerciseinfo  where  execid=?
 		HshDao dao = new HshDao();  
		out.println(dao.select(7)); 
		%>
		 --%>
		<pre class="alert alert-warning"> 4. UPDATE</pre> 
<%--  		<%
 		HshDao dao = new HshDao(); 
		HshDto dto = new HshDto();
		dto.setExectype("수영");
		dto.setDescription("관절에 부담이 적고, 전신근육을 사용하는 고강도 운동");
		dto.setAvgkcal30min(120);
		dto.setExectargetmin(25);
		dto.setSuitablefor("중형견 이상, 관절 약한 반려동물");
		dto.setIntensitylevel("고강도");
		dto.setExecid(7);
 		out.println(dao.update(dto));
		%>
 --%>	
		
		<pre class="alert alert-danger"> 5. DELETE</pre>
		<%
 		HshDao dao = new HshDao(); 
		HshDto dto = new HshDto();
		dto.setExecid(7);
		out.println(dao.delete(dto));
		%>
		
   </div>
</body>
</html>


