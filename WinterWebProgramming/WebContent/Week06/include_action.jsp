<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- 해당 페이지에서 param으로 준 값을 footer.jsp가 받아서 화면을 꾸린 후 다시 include_action.jsp와 결합하여 화면을 꾸린다. -->
	<h2>include에서 news.jsp 호출</h2>
	<hr>
	include.jsp에서 new.jsp 출력한 메세지
	
	<jsp:include page="footer.jsp">
		<jsp:param name="email" value="test@test.net"/>
		<jsp:param name="tel" value="010-0000-0000"/>
	</jsp:include>
</body>
</html>