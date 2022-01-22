<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ch06 : twitter_login.jsp</title>
</head>
<body>
<div align="center">
	<h2>트위터 로그인</h2>
	<form name="form1" method="POST" action="twitter_list.jsp">
		<input type="text" name="username" placeholder="사용자이름 입력"/>
		<input type="submit" value="로그인"/>
	</form>
</div>
</body>
</html>