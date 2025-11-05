<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@include file="../inc/header.jsp" %>

   <div class="container card  my-5 p-4">
      <h3 class="card-header"> EXECINFO 글쓰기</h3>
	  <form action="<%=request.getContextPath()%>reg.execinfo"  method="post"> 
		  <div class="mb-3">
		    <label for="content" class="form-label">CONTENT:</label>
		    <textarea class="form-control" id="content" placeholder="내용을 입력해주세요" name="content"></textarea>
		  </div> 
		  <div class="mb-3  text-end">
		  	<button type="submit" class="btn btn-primary">글쓰기</button>
		  	<a href="<%=request.getContextPath()%>/list.do"  class="btn btn-primary">목록보기</a>
		  </div>
	 </form>
   </div>
   
<%@include file="../inc/footer.jsp" %>

<!-- [ mbtiBoard - write.jsp ]  -->