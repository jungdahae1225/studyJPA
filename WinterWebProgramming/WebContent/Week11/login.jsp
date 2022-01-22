<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<jsp:useBean id="login" class="week11.LoginBean" scope="page"/>


<jsp:setProperty property="*" name="login"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 결과 출력</title>
</head>
<body>
<%
	if(login.checkUser())
		out.print("로그인 성공");
	else
		out.print("로그인 실패");
%>
	사용자 아이디: <jsp:getProperty property="username" name="login"/> <br>
	사용자 비밀번호: <jsp:getProperty property="passwd" name="login"/> <br>
</body>
</html>