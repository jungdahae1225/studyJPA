<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setAttribute("jsp", "web programming language");
	
	int sum = 0;
	for(int i = 0 ; i <= 10 ; i++)
		sum += i;
	request.setAttribute("total", sum);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>express_language01 연습(이하 el)</title>
</head>
<body>
<div align="center">
	<h2> 표현언어 기본 문법 </h2>
	<p>jsp란 <b>${jsp}</b> </p><!-- <b></b>는 글씨 굵게(볼드체) -->
	<p>1부터 10까지 합: ${total}</p>
	<p>1부터 10까지 합을 또다른 방식으로: <%=request.getAttribute("total")%></p>
</div>
</body>
</html>