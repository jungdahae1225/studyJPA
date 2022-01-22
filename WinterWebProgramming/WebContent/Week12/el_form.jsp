<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>el_form_체크박스 받기 연습</title>
</head>
<body>
	<div align="center">
		<form method="POST" action="el_form_result.jsp">
			아이디: <input type="text" name="id" size="15">
			비번: <input type="text" name="pw" size="15">
			<input type=checkbox name=hobby value=0>뉴스
			<input type=checkbox name=hobby value=1 checked="checked">맛집
			<input type=checkbox name=hobby value=2>책
			<input type=checkbox name=hobby value=3>영화
			<input type=checkbox name=hobby value=4>여행
			<br><br>
			<input type="submit" value="가입하기">
			<input type="reset" value="다시작성">
			
			
		</form>
	</div>
</body>
</html>