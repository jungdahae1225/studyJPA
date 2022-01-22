<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 컴퓨터학과 20190356 정다해 크롬 -->
<!-- jstl_form.jsp -->
<% request.setCharacterEncoding("UTF-8"); %><!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>fianl4</title>
</head>
<body>
<div align="left" style="padding-left: 10%">

	<h2> 나는.. </h2>
	<hr>
	<form action="jstl_result.jsp">
	이름 : <input type="text" name="irum"><br><br>
	생년월일 : <input type="date" placeholder="연도-월-일" name="birth"><br>
	
	<br>
	좋아하는 과일:
	<input type="checkbox" name="menu" value="사과">사과
	<input type="checkbox" name="menu" value="딸기">딸기
	<input type="checkbox" name="menu" value="귤">귤
	<input type="checkbox" name="menu" value="키위">키위
	<input type="checkbox" name="menu" value="수박">수박<br>
	<input type="submit" value="보내기"><br>

	</form>
</div>
</body>
</html>