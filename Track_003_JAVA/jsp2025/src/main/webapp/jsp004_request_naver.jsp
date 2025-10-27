<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> REQUEST-요청 </title>
<!-- Latest compiled and minified CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Latest compiled JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
   <div class="container card  my-5">
      <h3  class="card-header"> REQUEST-요청 </h3>
      <pre class = "alert alert-success"> 
      https://search.naver.com/search.naver?where=nexearch&sm=top_hty&fbm=0&ie=utf8&query=apple&ackey=ozxoa3bh
      	1. 처리컨테이너 (해결사/?앞에있는 주소) - https://search.naver.com/search.naver
      	2. 처리방식 (GET 검색 /POST(데이터가커질때 사용/노출안됨) 데이터삽입(insert) : method) - get 
      	3. 보관용기 (넘겨줄데이터 - 쿼리스트링 : name)  - query
      </pre>
      <form action="https://search.naver.com/search.naver" method="get">
		  <div class="mb-3 mt-3">
		    <label for="search" class="form-label">NAVER에 물어보세요~!</label>
		    <input type="search" class="form-control" id="search" placeholder="검색어를 입력해주세요." name="query">
		  </div>
		  <button type="submit" class="btn btn-success">Submit</button>
	</form>
  </div>
</body>
</html>
<!-- jsp004_request_naver.jsp 
	CLIENT  (요청: request)  ↔ SERVER (응답: response)
-->