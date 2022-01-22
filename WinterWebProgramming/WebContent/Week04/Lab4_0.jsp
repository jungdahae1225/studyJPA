<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ch03:HelloWorld</title>
</head>
<body>
	<h2>Hello: 안녕하세요</h2>
	<hr>
	<p>날짜와 시간 출력: <%=new java.util.Date() %></p>
	
	<%
		int i;
		for(i = 1; i < 10; i++){
			out.print("<h"+ i +">"+ i + "</h"+ i+ ">" + "<br>");
		}
	
	%>
</body>
</html>