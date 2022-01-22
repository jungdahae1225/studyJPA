<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- AddrBean에 있는 접근자를 쓸 거기 때문에 import해줘야함 -->
<%@ page import="week11.AddrBean" %>

<jsp:useBean id="am" class="week11.AddrManager" scope="application"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>addr_list 주소록 목록 모두 보여주기</title>
</head>
<body>
<div align=center>
	<H2>주소록</H2>
	<HR>
	<a href="addr_form.jsp">주소추가</a><P>
	<table>
		<tr>
			<td>이름</td>
			<td>전화번호</td>
			<td>이메일</td>
			<td>성별</td>
		</tr>
		<%
			for(AddrBean ab : am.getAddrList()) {
		%>
			<tr>
				<td><%=ab.getUsername() %></td>
				<td><%=ab.getTel() %></td>
				<td><%=ab.getEmail() %></td>
				<td><%=ab.getSex() %></td>
			</tr>
		<%	
			}
		%>
	</table>
</div>
	
</body>
</html>