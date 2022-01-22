<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String week[] = {"월","화","수","목","금","토","일"};
	pageContext.setAttribute("weekday", week);
	pageContext.setAttribute("X", 30);
	pageContext.setAttribute("Y", 7);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>el_02</title>
</head>
<body>
<div align="center">
	${weekday[0]}<br/>
	${weekday[1]}<br/>
	
	<!-- 표현식은 연산자 사용가능하다. -->
	<p>x와 y의 합: ${x + y}</p>
	<p>x와 y의 합: ${(x == y) ? "같다" : "다르다"}</p>
	
	<!-- empty여부도 사용가능하다. -->
	id의 요청 여부 : <b>${empty param.id}</b><br/>
	
	커스텀 태그 파트 다시 들어야함(실시간 수업)
</div>
</body>
</html>