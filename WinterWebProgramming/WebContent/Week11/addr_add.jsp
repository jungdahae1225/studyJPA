<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>    

<jsp:useBean id="addr" class="week11.AddrBean" scope="page"/>    
<!-- scope을 application으로 주면 톰캣을 종료하지 않으면 데이터 지속됨. -->
<jsp:setProperty property="*" name="addr"/>

<jsp:useBean id="am" class="week11.AddrManager" scope="application"/>    
<%
	am.add(addr);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>addr_add</title>
</head>
<body>
<!-- 자바쪽으로 정보를 역할을 하는 page -->
<div align="center">
	<h2>등록내용</h2>
	
	<!-- <jsp:getProperty property="username" name="addr"/> == addr.getUsername()  -->
	이름: <jsp:getProperty property="username" name="addr"/>
	전화번호: <%=addr.getTel() %>
	이메일: <%=addr.getEmail() %>
	성별: <%=addr.getSex() %>
	<hr>
	
	<a href="addr_list.jsp">목록보기</a>
</div>
</body>
</html>