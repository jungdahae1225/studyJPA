<!-- 20190356 컴퓨터학과 정다해 => 크롬으로 실행하였습니다. -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>application Object: 02</title>
</head>
<body>
	<% 
		//application01의 form태그에서 보낸 param을 뗴어냄.
		String username = request.getParameter("username"); 
		String time = request.getParameter("s_time");
		
		
		session.setAttribute("username", username); //사용자는 다다르게 접근해야 하기 때문에 session으로 설정
		session.setMaxInactiveInterval(Integer.parseInt(time) * 60);
	%>
	
	<%= session.getAttribute("username") %>님 환영합니다.<br>
	세션ID: <%=session.getId()%><br>
	세션 지속시간 : <%=session.getMaxInactiveInterval() %>초<br><br>
	
	<%
		Integer count = (Integer)application.getAttribute("count"); //방문자 수는 사용자 별로 설정 안해주고 모든 값을 누적으로 해야하기 때문에 application으로
		if(count == null)
			count = 0;
		
		int cnt = count.intValue()+1;
		application.setAttribute("count", cnt);
	%>
	
	오늘의 접속자 수 <%=cnt %>
	
</body>
</html>