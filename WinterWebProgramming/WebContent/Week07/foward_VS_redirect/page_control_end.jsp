<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>page_control_end.jsp</title>
</head>
<body>
<div align="center">
	<h2>forward action 결과는 1단계 2단계 모두 정보를 가지고 온다. redirect는 아니다.</h2>
	<p>현재 보이는 화면은 page_control_end.jsp입니다.</p>
	이름: <%=request.getParameter("username") %><br>
	전화번호: <%=request.getParameter("tel") %>
</div>
</body>
</html>