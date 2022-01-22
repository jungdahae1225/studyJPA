<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 컴퓨터학과 20190356 정다해 크롬 -->
<!-- custom_tag.jsp -->
<% request.setCharacterEncoding("UTF-8"); %>    
<%@ taglib tagdir="/WEB-INF/tags" prefix="mytag"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String color = request.getParameter("fontcolor");
		String border = request.getParameter("line");
		
		session.setAttribute("color", color);
		session.setAttribute("border", border);
	%>
	<mytag:printSum/>
</body>
</html>