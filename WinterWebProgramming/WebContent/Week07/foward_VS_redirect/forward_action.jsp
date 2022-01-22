<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forward_action.jsp</title>
</head>
<body>
	<jsp:forward page="page_control_end.jsp">
		<jsp:param name="tel" value="010-0000-0000"/>
	</jsp:forward>
</body>
</html>