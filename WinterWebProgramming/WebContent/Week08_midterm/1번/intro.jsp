<!-- 컴퓨터학과 20190356 정다해 크롬 -->
<!-- intro.jsp -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
   #cal {
		width: 500px;
		border: 1px solid;
		border-collapse: collapse;
	}
	#cal td,#cal th { 
		width: 40;
		text-align: center;
	}
</style>

<body>
<div id="container" align="center">
	<table class="intro">
		<tr>
			<td><img alt="title_img" src="images/me.jpg" width="40%" height="40%"></td>
			<td width="30">&nbsp;</td>
			<td><%@include file="calendar.jsp" %></td>
		</tr>
	
		<tr>
			<td><%@include file="goal_result.jsp" %></td>
		</tr>
	</table>
</div>
</body>
</html>