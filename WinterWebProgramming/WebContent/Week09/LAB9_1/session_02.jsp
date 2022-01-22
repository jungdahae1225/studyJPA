<!-- 20190356 컴퓨터학과 정다해 => 크롬으로 실행하였습니다. -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); //인코딩%>
<%
	
	String username = request.getParameter("username");
	session.setAttribute("id", username); //username을 세션의 key값으로 설정한다.
%>
<title>Session Object: 02</title>
<p><%=username%>님 환영합니다.</p>
<p>세션 ID : <%= session.getId() %></p>
<p>세션 : <%= session.getAttribute("id") %></p> <!-- 세션에 설정한 key값으로 세션이 설정된 값을 가져올 수 있다. -->
<p>세션 유지시간 : <%=session.getMaxInactiveInterval()%>초</p> <!-- default는 30분 -->

<a href="session_03.jsp" target="_blank">session_03.jsp</a>