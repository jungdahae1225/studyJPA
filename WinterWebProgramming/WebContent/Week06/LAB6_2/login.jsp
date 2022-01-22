<!-- 20190356 컴퓨터학과 정다해 => 크롬으로 실행하였습니다. -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login Page</title>
</head>
<body>
	<%
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		if(id.equals("admin") && pw.equals("1234"))
			pageContext.forward("main.jsp");
		else{
	%>
				<script>alert("Enter the id('admin') and password('1234')"); location.replace("login_form.jsp");</script>
<%}
		%>
</body>
</html>