<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Calendar"%>
<%@ page import="java.time.LocalDateTime, java.time.LocalDate" %>
<% request.setCharacterEncoding("UTF-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
	table {
		width: 500px;
		border: 1px solid;
	}
	
	td,th { 
		border: 1px solid black;
	}
</style>
<body>
<div align="center">
	<form name=form1 method=post action=request_result.jsp>
		<table>
			<tr>
				<td></td>
				<td></td>
			</tr>
		</table>
	</form>
</div>
</body>
</html>