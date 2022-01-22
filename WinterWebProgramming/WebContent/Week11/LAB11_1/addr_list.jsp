<!-- 20190356 컴퓨터학과 정다해 => 크롬으로 실행하였습니다. -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>    
<!-- AddrBean에 있는 접근자를 쓸 거기 때문에 import해줘야함 -->
<%@ page import="week11.AddrBean" %>

<jsp:useBean id="am" class="week11.AddrManager" scope="application"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ch07:주소록 목록</title>
</head>
<style>
	table{
			border: 1px solid black;	
			border-collapse:collapse;
			margin: 0 auto;
		}
	td,th { 
		border: 1px solid black;
		text-align: center;
	}
</style>
<body>
<div align=center>
	<H2>주소록(전체보기)</H2>
	<HR>
	<a href="addr_form.jsp">주소추가</a><P>
	<table>
		<tr>
			<td>이름</td>
			<td>전화번호</td>
			<td>이메일</td>
			<td>성별</td>
			<td>그룹</td>
		</tr>
		<%
			for(AddrBean ab : am.getAddrList()) {
		%>
			<tr>
				<td><%=ab.getUsername() %></td>
				<td><%=ab.getTel() %></td>
				<td><%=ab.getEmail() %></td>
				<td><%=ab.getSex() %></td>
				<td><%=ab.getGroup() %></td>
			</tr>
		<%	
			}
		%>
	</table>
</div>
	
</body>
</html>