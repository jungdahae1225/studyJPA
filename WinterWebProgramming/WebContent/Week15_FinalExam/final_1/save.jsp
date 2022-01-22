<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 컴퓨터학과 20190356 정다해 크롬 -->
<!-- save.jsp -->
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%
	String userName = request.getParameter("userNAME"); //사용자 이름 받기

	String id = request.getParameter("userID");
	String pw = request.getParameter("userPW");
	
	//아이디가 “jsp”이고 비밀번호가 “web1234”이거나 아이디가 “web”이고 비밀번호가 “jsp1234” 와 같으면 세션에 저장
	if(id.equals("jsp") && pw.equals("web1234")){
		session.setAttribute("ID", id);
		session.setAttribute("NAME", userName);
		response.sendRedirect("bbs_form.jsp");
	}
	
	else if(id.equals("web") && pw.equals("jsp1234")){
		session.setAttribute("ID", id);
		session.setAttribute("NAME", userName);
		response.sendRedirect("bbs_form.jsp");
	}
	else{
		%>
		<script>
			alert("아이디 또는 비밀번호가 틀립니다!");
			history.back();
		</script>
		<%	
	}
	%>
<body>
	
</body>
</html>