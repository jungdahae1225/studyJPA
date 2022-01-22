<!-- 컴퓨터학과 20190356 정다해 크롬 -->
<!-- index.jsp -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>2022년 나</title>
</head>
<style>
table.t1 {
width: 960px;

}
</style>
<body onLoad="alert('연말 마무리 잘하고 새해에는 소망하는 일 모두 이루세요.');">
<div id="container" align="center">
	<table class="t1">
		<tr>
			<td><%@include file="header.jsp" %></td>
		</tr>

		<tr>
			<td><%@include file="intro.jsp" %></td>
		</tr>
	</table>
</div>
</body>
</html>