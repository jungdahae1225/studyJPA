<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ch06 : login.jsp</title>
</head>
<style>
div{text-align: center;}
</style>
<body>
<div align="center">
	<h2>로그인</h2>
	<form name="form1" method="POST" action="selProduct.jsp">
		<input type="text" name="username" placeholder="사용자의 이름을 입력하시오."/>
		<input type="password" name="userpw" placeholder="비밀번호 입력" />
		<input type="submit" value="로그인"/>
	</form>
</div>
</body>
</html>