<!-- 20190356 컴퓨터학과 정다해 => 크롬으로 실행하였습니다. -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>application Object: 01</title>
</head>
<body>
	<form name="form1" method="POST" action="application_02.jsp">
		<table>
			<tr>
				<td>아이디 :</td>
				<td><input type="text" name="username" placeholder="아이디"/></td>
			</tr>
			<tr>
				<td>원하는 세션 지속시단(분) : </td>
				<td><input type="text" name="s_time" placeholder="세션 지속시간 설정"/></td>
			</tr>
			<tr>
				<td><input type="submit" value="로그인"/>&nbsp;<input type="reset" value="취소"/></td>
			</tr>
		</table>
	</form>
</body>
</html>