<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>헤더 정보 읽어오기 연습</title>
</head>
<body>
	<%
		Enumeration<String> en = request.getHeaderNames();
		while(en.hasMoreElements()){//Enumeration형에 하나씩 접근하기.
			String headerName = (String)en.nextElement();
			String headerValue = request.getHeader(headerName);
		
	%>
	<%=headerName %> : <%=headerValue %><br>
	<%
		}
	%>
</body>
</html>