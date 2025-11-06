<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>PetCare Project Template</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
  
   <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/inc/header.css">
	
	<style>
	@charset "UTF-8";


	/* ====== 색상 테마 (밝은 옐로 베이지) ====== */
	:root {
	  --beige-main: #FFF8D6;    /* 더 밝은 크림 옐로 */
	  --beige-accent: #FFEB99;  /* 포인트 – 채도 높은 레몬 베이지 */
	  --beige-dark: #E6C972;    /* hover – 살짝 골드빛 */
	  --beige-bg: #FFFEFA;      /* 전체 배경 – 거의 흰색에 가까운 따뜻한 톤 */
	  --text-main: #554A2F;     /* 본문 텍스트 – 조금 더 밝은 브라운 */
	}
	
	body {
	  background-color: var(--beige-bg);
	  color: var(--text-main);
	  font-family: 'Noto Sans KR', sans-serif;
	}
	
	/* ====== 네비게이션 ====== */
	.navbar {
	  background-color: var(--beige-main);
	  box-shadow: 0 2px 4px rgba(0,0,0,0.04);
	}
	.navbar-brand {
	  font-weight: 700;
	  color: var(--text-main);
	}
	.nav-link {
	  color: var(--text-main);
	  font-weight: 500;
	}
	.nav-link:hover {
	  color: var(--beige-dark);
	}
	
	/* ====== 배너 ====== */
	.hero {
	  background: linear-gradient(135deg, var(--beige-main) 0%, var(--beige-accent) 100%);
	  color: var(--text-main);
	  padding: 80px 0;
	  text-align: center;
	}
	.hero h1 {
	  font-weight: 700;
	  font-size: 2.2rem;
	}
	.hero p {
	  color: #6B5C3A;
	}
	
	/* ====== 카드/게시판 ====== */
	.content {
	  padding: 60px 0;
	}
	.card {
	  border: none;
	  border-radius: 12px;
	  background-color: #FFFFFF;
	  box-shadow: 0 3px 8px rgba(0,0,0,0.04);
	  transition: transform 0.2s;
	}
	.card:hover {
	  transform: scale(1.02);
	}
	
	/* ====== 버튼 ====== */
	.btn-beige {
	  background-color: var(--beige-accent);
	  color: #4F422A;
	  border-radius: 50px;
	  padding: 8px 24px;
	  border: none;
	  font-weight: 600;
	  transition: 0.2s;
	}
	.btn-beige:hover {
	  background-color: var(--beige-dark);
	  color: white;
	}
	
	/* ====== 푸터 ====== */
	footer {
	  background-color: var(--beige-main);
	  color: var(--text-main);
	  text-align: center;
	  padding: 20px 0;
	  margin-top: 60px;
	  font-size: 0.9rem;
	  border-top: 1px solid #FFEFB0;
	}
	
	</style>

</head>
<body>

  <!-- 네비게이션 -->
  <nav class="navbar navbar-expand-lg">
    <div class="container">
      <a class="navbar-brand" href="#">🐾 반려동물 운동 정보 페이지</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
        <span class="navbar-toggler-icon"></span>
      </button>
       
      <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
        <ul class="navbar-nav">
        
<%
		Integer execid= (Integer)session.getAttribute("execid");
		String exectype = (String)session.getAttribute("exectype");

      %>
         <%--로그인한 경우 --%>   
         <%if(execid!=null){%>
        
          <li class="nav-item"><a class="nav-link" href="<%=request.getContextPath()%>/regForm.hsh">등록</a></li>
          <li class="nav-item"><a class="nav-link" href="<%=request.getContextPath()%>//exec.hsh">목록</a></li>
<%--      <li class="nav-item"><a class="nav-link" href="<%=request.getContextPath()%>/member/mypage.jsp?userid=<%=sid%>"><%=email%></a></li>
 --%>          <li class="nav-item"><a class="nav-link" href="#">로그아웃</a></li>
        
         <%}else{%>
         <%--로그인 안한 경우 --%>
          <li class="nav-item"><a class="nav-link" href="<%=request.getContextPath()%>/regForm.hsh">등록</a></li>
          <li class="nav-item"><a class="nav-link" href="<%=request.getContextPath()%>/exec.hsh">목록</a></li>
          <li class="nav-item"><a class="nav-link" href="<%=request.getContextPath()%>/member/join.jsp">회원가입</a></li>
          <li class="nav-item"><a class="nav-link" href="<%=request.getContextPath()%>/member/login.jsp">로그인</a></li>
          
          <% }%>
          
        </ul>
      </div>
    </div>
  </nav>

  <!-- 헤더 배너 -->
  <section class="hero">
    <div class="container">
      <h1> 반려동물들을 위한 운동 정보 페이지 </h1>
      <p class="mt-3"> 여러분과 반려동물이 함꼐 행복해질수 있도록 항상 노력하겠습니다.</p>
      
    <!-- <button class="btn-beige mt-3">시작하기</button> --> 
    
    
    </div>
  </section>