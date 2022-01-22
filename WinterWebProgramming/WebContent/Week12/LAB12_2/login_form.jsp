<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>  
<!-- 컴퓨터학과 20190356 정다해 크롬 -->  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LAB12_2:커스텀 태그</title>
</head>

<body>
<div align="left">
	<form name="form1" method="POST" action="print_login.jsp">
	<table>
		<tr>
			<td>아이디</td>
			<td><input type="text" name="id"  size="10"/></td>
		</tr>
		
		<tr>
			<td>비밀번호</td>
			<td><input type="password" name="pw" size="10"/></td>
		</tr>
		
		<tr>
			<td colspan="2"><input type="submit" value="로그인"/>&nbsp;<input type="reset" value="취소"/></td>
		</tr>
	</table>
	</form>
</div>
</body>
</html>