<%@ tag language="java" pageEncoding="UTF-8"%>
<!-- 컴퓨터학과 20190356 정다해 크롬 -->

<!-- 태그 속성 만들기 -->
<%@ attribute name="color"%>

<div style="color: ${color};"><b> <%=session.getAttribute("username") %></b>님 환영합니다.!</div>