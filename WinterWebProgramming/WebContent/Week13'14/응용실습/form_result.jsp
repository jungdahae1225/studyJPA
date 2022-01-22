<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>form_result.jsp</title>
</head>
<% 
	//<%!로 쓰면 안되더라
	//사실 이거도 java코드라 좋은방법x
	//String[] strMenu={"사과", "딸기", "수박"};

	//표현언어로 java변수에 접근하려면 내장객체로 생존해야해서 pageContext.setAttribute
	//pageContext.setAttribute("sMenu", strMenu); 
%>
<body>
	<div align="center">
		이름: ${param.userName}<br>
		<jsp:useBean id="logic" class="week12.Agelogic" scope="session"/>
		<%
			int age = Integer.parseInt(request.getParameter("userAge"));
		    if(logic.logic(age))
		    	out.print("미성년임");
		    else
		    	out.print("성년임");
		%>
		<br>
		<!-- 이게 좋은방법 -->
		<c:set var="sMenu" value="${['사과', '딸기', '수박'] }"/>
		<c:forEach var="food" items="${paramValues.menu}" varStatus="order">
				메뉴 : ${sMenu[order.current]}<br>
		</c:forEach>
		
	</div>
</body>
</html>