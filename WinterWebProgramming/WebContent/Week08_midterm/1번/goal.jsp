<!-- 컴퓨터학과 20190356 정다해 크롬 -->
<!-- goal.jsp -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>나의 목표</title>
</head>
<body>
<div id="container" align="center">
	<table class="goal">
		<tr>
			<td><%@include file="header.jsp" %></td>
		</tr>

		<tr>
			<td><%@include file="goal_form.jsp" %></td>
		</tr>
	</table>
</div>
</body>
</html>