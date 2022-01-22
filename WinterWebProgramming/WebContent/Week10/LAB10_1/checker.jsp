<!-- 20190356 컴퓨터학과 정다해 => 크롬으로 실행하였습니다. -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>	
<%
	//application.log("넘어옴");
	//String result = (String)request.getParameter("action");
	//꼭!!!equals로 비교해줄 것. 이거때매 해멨음
	if(request.getParameter("action").equals("login")){
		if(request.getParameter("username") != null && request.getParameter("userpw").equals("mia"))
			session.setAttribute("user",request.getParameter("username"));
		//application.log("세션 설정 완료");
		response.sendRedirect("index.jsp");
	}
	else{
		session.invalidate();//세션값 모두 지우기
		response.sendRedirect("index.jsp");
	}
%>
	
</body>
</html>