<!-- 20190356 컴퓨터학과 정다해 => 크롬으로 실행하였습니다. -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session Object: 01</title>
</head>
<body>
	<h2>로그인</h2>
	<form name="form1" method="POST" action="session_02.jsp">
		아이디 : <input type="text" name="username" placeholder="아이디"/>
		<br><br>
		비밀번호 : <input type="text" name="userpw" placeholder="비밀번호"/>
		<br><br>
		
		<input type="submit" value="로그인"/>
		<input type="reset" value="취소"/>
	</form>
</body>
</html>