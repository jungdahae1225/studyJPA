<!-- 컴퓨터학과 20190356 정다해 크롬 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="ddwutag" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% request.setCharacterEncoding("UTF-8"); %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LAB12_2:커스텀 태그</title>
</head>
<body>
	
	<%
		/**파라미터를 뗴어 올 때는 request.getParameter이다.
			.getAttribute써서 헤맴..
		**/
		String username = request.getParameter("id");
		//세션 설정
		session.setAttribute("username", username);
	%>
	
	<%application.log(username); %>
	
	<ddwutag:greeting color="green"/> 
	<ddwutag:greeting color="blue"/> 
</body>
</html>