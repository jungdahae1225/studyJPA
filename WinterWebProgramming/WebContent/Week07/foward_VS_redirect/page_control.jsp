<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>page_control.jsp</title>
</head>
<body>
	<!-- jsp에서 페이지를 이동하는 방법 중 forward 말고 내장객체로 이동해보기 -->
	
	<h2>forward 액션</h2>
	<form method=post action="forward_action.jsp">
		forward action: <input type="text" name="username">
		<input type="submit" value="확인">
	</form>
	
	<h2>response_sendRedirect</h2>
	<form method=post action="response_sendRedirect.jsp">
		response_sendRedirect: <input type="text" name="username">
		<input type="submit" value="확인">
	</form>
</body>
</html>