<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>out내장객체</title>
</head>
<body>
<div align="left">
	<h2>out객체. 잘 쓰지 않고 out 객체 중에서는 print를 제일 많이 쓰게 된다.</h2>
	<hr>
	1.설정된 버퍼크기: <%=out.getBufferSize() %><br>
	2.설정된 버퍼크기: <%=out.getRemaining() %><br>
	<% out.flush(); %>
	3.flush 후 남아있는 버퍼크기: <%=out.getRemaining() %><br>
	<% out.clear(); %>
	4.clear 후 남아있는 버퍼크기: <%=out.getRemaining() %><br>
	<% out.close(); %>
	5.close 후 남아있는 버퍼크기: <%=out.getRemaining() %><br>
</div>
</body>
</html>