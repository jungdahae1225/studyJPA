<!-- 컴퓨터학과 20190356 정다해 크롬 -->
<!-- action.jsp -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("UTF-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>여긴 action.jsp</title>
</head>
<body>
	<% 
		//일단 행복지수 받아온다. -바로 씀
		
		//1. check박스의 값을 받을 배열을 설정
		String checkBox[] = request.getParameterValues("goal");
		String invest = "";
		String travel = "";
		String movie = "";
		String book = "";
		
		for(int i = 0; i < checkBox.length; i++){
			

		}
	%>
	
	<jsp:forward page="index.jsp">
		<!-- 행복지수 -->
		<jsp:param value=<%=request.getParameter("happy") %> name="happy"/>
		<!-- 투자수익 -->
		<jsp:param value=<%=request.getParameter("invest") %> name="invest"/>
		<!-- 행복지수 -->
		<jsp:param value=<%=request.getParameter("travel") %> name="travel"/>
		<!-- 행복지수 -->
		<jsp:param value=<%=request.getParameter("movie") %> name="movie"/>
		<!-- 행복지수 -->
		<jsp:param value=<%=request.getParameter("book") %> name="book"/>
		
	
		<jsp:param name="etc1" value="동아리하기"/>
		<jsp:param name="etc2" value="계절학기듣기"/>
	</jsp:forward>
</body>
</html>