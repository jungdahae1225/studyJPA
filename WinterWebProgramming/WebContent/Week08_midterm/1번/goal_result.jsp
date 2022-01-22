<!-- 컴퓨터학과 20190356 정다해 크롬 -->
<!-- goal_result.jsp -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>여긴 goal_form.jsp</title>
</head>

<style>

</style>
<body>
	<div align="center">
	<form name=form1 method=post action=request_result.jsp>
		<table style="text-align: center; width: 800;">
			<tr>
				<td colspan="2">1분기(오늘(2021-12-31)진행 현황)</td>
			</tr>
			
			<tr>
				<td>분야</td>
				<td>진행과정</td>
			</tr>
			
			<tr>
				<td>투자수익</td>
				<td><%=request.getParameter("invest") %></td>
			</tr>
			
			<tr>
				<td>공연 및 영화보기</td>
				<td><%=request.getParameter("movie") %></td>
			</tr>
			
			<tr>
				<td>책읽기</td>
				<td><%=request.getParameter("book") %></td>
			</tr>
			
			<tr style="background-color: yellow;">
				<td>행복지수</td>
				<td><%=request.getParameter("happy") %></td>
			</tr>
			
			<tr>
				<td>기타1</td>
				<td><%=request.getParameter("etc1") %></td>
			</tr>
			
			<tr>
				<td>기타2</td>
				<td><%=request.getParameter("etc2") %></td>
			</tr>
		</table>
	</form>
</div>
</body>
</html>