<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<!-- 컴퓨터학과 20190356 정다해 크롬 -->
<!-- logout.jsp -->
<% request.setCharacterEncoding("UTF-8"); %>
<body>
	<%
		//글쓴이 정보는 세션에, 모든 글 보기는 어플리케이션
		session.invalidate();//세션값 모두 지우기
		response.sendRedirect("index.jsp");
	%>
</body>
</html>