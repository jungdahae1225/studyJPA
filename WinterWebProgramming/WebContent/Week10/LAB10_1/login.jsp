<!-- 20190356 컴퓨터학과 정다해 => 크롬으로 실행하였습니다. -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ch06 : login.jsp</title>
</head>
<style>
	table{text-align: left;}
</style>

<body>

<%
	if(session.getAttribute("user") == null){ //로그인 정보가 없는 경우
%>
<div align="left">
	<form name="form1" method="POST" action="checker.jsp">
	<table>
		<tr>
			<td>아이디: <input type="text" name="username"/></td>
		</tr>
		
		<tr>
			<!-- pw가 mia인 것을 확인 하고자 type을 text로 하였습니다. -->
			<td>비밀번호:<input type="text" name="userpw"/></td>
		</tr>
		
		<tr>
			<td><input type="hidden" name="action" value="login"></td>
		</tr>
		
		<tr>
			<td><input type="submit" value="로그인"/></td>
		</tr>
	</table>
	</form>
</div>
<%}
	if(session.getAttribute("user") != null){ //로그인 정보가 있는 경우		
%>
<div align="left">
	<form name="form1" method="POST" action="checker.jsp">
	<table>
		<tr>
			<td><%=session.getAttribute("user")%>님 환영합니다.</td>
		</tr>
		
		<tr>
			<td><input type="hidden" name="action" value="logout"></td>
		</tr>
		
		<tr>
			<td><input type="submit" value="로그아웃"/></td>
		</tr>
	</table>
	</form>
</div>
<%}%>
</body>
</html>