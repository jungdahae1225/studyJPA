<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	1.서버 정보 <%=application.getServerInfo()%><br>
	2.서블릿 API 버전 정보 : <%= application.getMajorVersion() + "." + application.getMinorVersion() %><br>
	3.applicataion.jsp 화일의 실제경로: <%= application.getRealPath("applicaion.jsp") %><br> <!-- 내 컴퓨터 상의 실제 경로가 표시됨 -->
	
	setAttribute로 username변수에 "홍길동" 설정<p>
	<hr>
	<%
		application.setAttribute("username", "홍길동");
		application.log("username=홍길동");
		application.setAttribute("count", 1);
	%>
	<a href="application_result.jsp">확인하기</a>
</body>
</html>