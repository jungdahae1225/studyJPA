<!-- 20190356 컴퓨터학과 정다해 => 크롬으로 실행하였습니다. -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주소록 입력</title>
</head>
<body>
<div align="left">
	<form name="form1" method="POST" action="add.jsp">
		이름:<input type="text" name="username" />
		전화번호:<input type="text" name="telephone" />
		<input type="submit" value="등록"/>
	</form>
</div>
</body>
</html>