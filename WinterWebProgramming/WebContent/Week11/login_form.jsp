<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login_form</title>
</head>
<style>
	table {border: 1px solid; 
	}
</style>
<body>
<div align="center">
	<form name="form1" method="POST" action="login.jsp">
	<table>
		<tr>
			<th colspan="2">로그인</th>
		</tr>
		<tr>
			<th>아이디</th>
			<td><input type="text" name="username" placeholder="사용자의 이름을 입력하시오." size="10"/></td>
		</tr>
		
		<tr>
			<th>비밀번호</th>
			<td><input type="password" name="passwd" placeholder="비밀번호 입력" size="10"/></td>
		</tr>
		
		<tr>
			<td colspan="2"><input type="submit" value="로그인"/></td>
		</tr>
	</table>
	</form>
</div>
</body>
</html>