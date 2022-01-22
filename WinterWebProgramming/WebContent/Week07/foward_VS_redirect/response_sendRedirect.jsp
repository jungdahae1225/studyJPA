<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>response_sendRedirect</title>
</head>
<body>
<!-- forward처럼 정보를 가지고 다닐 수 없다.	 메세지와 이름 모두 가지고 오지 못한다.
중간 파일을 거치지 않고 바로 간다.
-->
<% response.sendRedirect("page_control_end.jsp");%>
</body>
</html>