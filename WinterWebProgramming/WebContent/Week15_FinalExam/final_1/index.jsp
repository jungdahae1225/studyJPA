<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 컴퓨터학과 20190356 정다해 크롬 -->
<!-- index.jsp -->
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Index.jsp</title>
</head>
<body>
<div >
	<form name="form1" method="POST" action="save.jsp">
		아이디:<br>
		<input type="text" name="userID"/><br>
		비밀번호:<br>
		<input type="password" name="userPW"/><br>
		이름:<br>
		<input type="text" name="userNAME"/><br>
		<input type="submit" value="로그인"/>
	</form>
</div>
</body>
</html>