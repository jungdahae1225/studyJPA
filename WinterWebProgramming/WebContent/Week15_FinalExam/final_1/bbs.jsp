<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 컴퓨터학과 20190356 정다해 크롬 -->
<!-- bbs.jsp -->
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
	table {
			text-align: center;
		}
</style>
<%
	String title = request.getParameter("title"); //사용자 이름 받기

	String memo = request.getParameter("memo");
	
	String forOneString = title + "/" + memo + "/";
	
	@SuppressWarnings("unchecked")
	ArrayList<String> msgs = (ArrayList<String>)application.getAttribute("dblist");
	
	// null인 경우(기존에 누적된 글이 없다면) 새로운 ArrayList 객체를 생성
	if(msgs == null) {
		msgs = new ArrayList<String>();
		application.setAttribute("dblist",msgs);//application의 속성명: “dblist”
	}
	
	msgs.add(forOneString);
	application.log(forOneString + "추가됨");
%>

<body>
<div align=center>
	<h2>게시글(전체보기)</h2>
	<a href="bbs_form.jsp">게시글추가</a> &nbsp; <a href="logout.jsp">로그아웃</a>
	<hr>
	<%
	//msgs가 null 이 아닌 경우에만 목록 출력
		int i = 1;
		if(msgs != null) 
			for(String msg : msgs) 
				out.println( (i++) + ". "+msg + "<br>");
	
	//msgs가 null 이 아닌 경우에만 목록 출력

	%>
</div>
</body>
</html>