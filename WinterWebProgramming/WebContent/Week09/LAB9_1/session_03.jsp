<!-- 20190356 컴퓨터학과 정다해 => 크롬으로 실행하였습니다. -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session Object: 03</title>
</head>
<body>
<p>세션이 생성된 후 <%=(session.getLastAccessedTime() - session.getCreationTime()) / 1000 %>초가 지났습니다.
</body>
</html>