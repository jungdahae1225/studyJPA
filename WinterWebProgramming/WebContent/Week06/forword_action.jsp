<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>forword.jsp에서 news.jsp호출</h2>
	<hr>
	forward_Action.jsp의 내용이 보이지 않고 news.jsp로 이동 = > 단, redirect와 다르게 param 정보는 가지고 간다.
	
	<jsp:forward page="footer.jsp">
		<jsp:param name="email" value="test@test.net"/>
		<jsp:param name="tel" value="010-0000-0000"/>
	</jsp:forward>
</body>
</html>