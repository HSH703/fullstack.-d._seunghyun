<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <!-- Latest compiled and minified CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Latest compiled JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
    <div class ="container bg-success text-white">
        <h3>WAS(WEB APPLICATION SERVER)</h3>
        <p>동적컨텐츠 -jsp, serlet, / db연동</p>
        <p> Tomcat </p> 
        <%
            Calendar today = Calendar.getInstance(); //ctrl + space (커서는 Calendar today 에서 Calendar  r 끝에 놓고 단축키 입력)
            String now = ">" + today.get(1) + (today.get(2) + 1) + today.get(5);
            out.println(now);
        %>
    </div>
</body>
</html>
<!--jsp002_was.jsp-->