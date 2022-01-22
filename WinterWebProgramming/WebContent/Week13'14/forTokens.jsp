<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- jstl을 쓰려면 lib 다운 해줘야함 in WEB-INF_lib에(톰캣 사이트) -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>core out(이하 cout)</title>
</head>

<body>
	<!-- delims=","이걸 기준으로 item을 구분해서 var의 변수에 넣어라 -->
	<c:forTokens items="홍길동,011-211-0090,서울" delims="," var="sel">
		${sel}<br>
	</c:forTokens>
</body>
</html>