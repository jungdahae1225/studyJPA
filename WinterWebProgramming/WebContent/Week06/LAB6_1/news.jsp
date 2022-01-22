<!-- 20190356 컴퓨터학과 정다해 => 크롬으로 실행하였습니다. -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="news">   
<h2>오늘의 일정</h2>
<%
	String TASK1 = request.getParameter("TASK1");
	String TASK2 = request.getParameter("TASK2");
	String TASK3 = request.getParameter("TASK3");
	
	if(TASK1 == "")
		TASK1 = "일정 없음";
	if(TASK2 == "")
		TASK1 = "일정 없음";
	if(TASK3 == "")
		TASK1 = "일정 없음";
%>
<hr>

<ul style="text-align: center;"><!-- 순서없는 태그 -->
	<li><%=TASK1%></li>
	<li><%=TASK2%></li>
	<li><%=TASK3%></li>
</ul>
</div>