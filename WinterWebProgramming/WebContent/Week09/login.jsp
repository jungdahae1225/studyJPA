<!-- 20190356 컴퓨터학과 정다해 => 크롬으로 실행하였습니다. -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//HTML폼에서 전달된 데이터 한글 인코딩
	request.setCharacterEncoding("UTF-8");
	String username = request.getParameter("username");
	String userpw = request.getParameter("userpw");
	
	if(username.equals("admin") && userpw.equals("1234")){
		session.setAttribute("username", username);
		session.setAttribute("userkind", "관리자");
		
		response.sendRedirect("login_form.jsp");
	}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login Page</title>
</head>
<body>
	<script>
		alert('아이디 또는 비밀번호 오류입니다.');
		history.back();
	</script>
</body>
</html>