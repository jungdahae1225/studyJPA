<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>form.jsp</title>
</head>
<body>
<div align="center">
	<form action="form_result.jsp">
	이름 <input type="text" name="userName"><br><br>
	나이 <input type="number" name="userAge"><br><br>
	
	<br>
	좋아하는 과일:
	<input type="checkbox" name="menu" value="0">사과
	<input type="checkbox" name="menu" value="1">딸기
	<input type="checkbox" name="menu" value="2">수박<br>
	<input type="submit" name="전송"><br>

	</form>
</div>
</body>
</html>