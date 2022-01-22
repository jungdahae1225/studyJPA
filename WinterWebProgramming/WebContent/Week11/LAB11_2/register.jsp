<!-- 20190356 컴퓨터학과 정다해 => 크롬으로 실행하였습니다. -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- jstl을 쓰려면 lib 다운 해줘야함 in WEB-INF_lib에(톰캣 사이트) -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="login" class="labhw11.LoginBean" scope="page" />
<jsp:setProperty name="login" property="*" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LAB11_2</title>
</head>
<style>
	table {
			text-align: center;
			}
</style>
<body>
<div align=center>
	<h2>등록내용</h2>
	
	<table>
		<tr>
			<td>이름 : <%=login.getId() %></td>
		</tr>
		
		<tr>		
			<td>패스워드 : <%=login.getPw() %></td>
		</tr>
		
		<tr>
			<td>이메일 : <%=login.getEmail() %></td>
		</tr>
		
		<tr>
			<td>성별 : <%=login.getGender() %></td>
		</tr>
		
		<tr>
			<td>생일 : <%=login.getBirth() %></td>
		</tr>
	</table>
	<hr>
	
	<c:set var="gen" value="<%=login.getGender() %>"/>
	<c:choose>
		<c:when test="${gen == 0}">
		<!-- ${${param.gender} == 0}이런식으로 못해서 set써준거 -->
			${param.gender}<br>
			<%=login.getId() %>씨는 남성이고, 
		</c:when>
		
		<c:when test="${gen == 1}">
			<%=login.getId() %>씨는 여성이고, 
		</c:when>
	</c:choose>
	
	<%
		if(login.isGrownUp())
			out.print("성인입니다.");
		else
			out.print("성인이 아닙니다.");
	%>
</div>
</body>
</html>