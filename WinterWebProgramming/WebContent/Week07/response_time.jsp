<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>response객체</title>
</head>
<body>
<div align="center">
	<p>이 페이지는 5초마다 새로고침 됩니다._setIntHeader을 이용!</p>
	<%
		response.setIntHeader("Refresh", 5);
	%>
	현재 날짜와 시간은 : <%=new java.util.Date() %>
</div>
</body>
</html>