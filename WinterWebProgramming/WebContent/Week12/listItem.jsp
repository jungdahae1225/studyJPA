<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="mytag"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>listItem</title>
</head>
<body>
	<h2>커스텀태그 속성 적용해보기 예제</h2>
	<hr>
	
	<!-- 주의!! 커스텀태그를 쓸 때, 속성 값은 무조건 큰 따옴표로 묶어야 한다. -->
	<mytag:item border= "3" bgcolor="yellow"> 재고현황 </mytag:item>
</body>
</html>