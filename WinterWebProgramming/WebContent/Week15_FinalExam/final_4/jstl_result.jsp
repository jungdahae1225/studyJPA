<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 컴퓨터학과 20190356 정다해 크롬 -->
<!-- jstl_result.jsp -->
<% request.setCharacterEncoding("UTF-8"); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>final_4</title>
</head>
<body>
	<div align="left">
	<h2>나는 ..</h2>
	<form>
		<table>
			<tr>
				<td>이름:${param.irun}</td>
			</tr>
			
			<tr>
				<c:forTokens items="${param.birth}" delims="-" var="sel">
					<td>님은 </td> ${sel[0]}에 태어났으며,
				</c:forTokens>
			</tr>
			
			<tr>
				<td>
				과일은<br>
				<c:forEach var="food" items="${paramValues.menu}" varStatus="order">
						${order.count}. ${food} <br>
				</c:forEach>
				를 좋아합니다.
				</td>
			</tr>
		</table>
	</form>
</div>
</body>
</html>