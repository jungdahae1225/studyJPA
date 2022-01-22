<!-- 20190356 컴퓨터학과 정다해 => 크롬으로 실행하였습니다. -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("UTF-8"); %>
<html>
<head>
	<title>주소록</title>
</head>

<body>
<div align="center">
	<h2>주소록</h2>
	<hr>
	<%
		request.setCharacterEncoding("UTF-8");
		String name = request.getParameter("username"); 
		String telephone = request.getParameter("telephone");
		
		String forOneString = name + "," + telephone;
		
		@SuppressWarnings("unchecked") //(ArrayList<String>)으로 형변환을 할 때 워닝이 나올 수 있는데, 이걸 없애줌(필수x)
		ArrayList<String> list = (ArrayList<String>)application.getAttribute("addrbook"); //세션에 productlist라는 세션이 이미 있는지
		
		if(list == null) { //list가 없으면 productlist라는 이름의 새로운 list 만들어주고
			list = new ArrayList<String>();
			application.setAttribute("addrbook",list); //새로 만들어준 list를 세션으로 등록
		}
		list.add(forOneString);//이미 있으면 그냥 가져온 param을 추가
		
		int i = 1;
		for(String data : list){
			out.print(i + ". " + data + "<br>");
			i++;
		}
	
	%>
	<script>
		alert(<%=forOneString %>"이(가)추가 되었습니다.!!");
		history.go(-1); //그냥 바로 전 화면으로 가고자 할 때. cf) 특정화면으로 가고자 하는 경우 response.sendRedirect("넘어가고자하는 특정페이지")
	</script>
</div>
</body>
</html>