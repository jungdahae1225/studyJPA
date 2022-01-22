<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%
	// 한글 캐릭터셋 변환
	request.setCharacterEncoding("UTF-8");

	// HTML 폼에서 username으로 전달된 값을 가지고 옴 
	String username = request.getParameter("username");
	
	// username이 null 이 아닌 경우 세션에 값을 저장 
	//사용자마다 다른 세션을 가져야 하기 때문에 사용자는 session으로 설정하고, 글은 모든 사람 것을 저장해야 하기 때문에 글목록은 application으로 설정하는 것임
	if(username != null) {
		session.setAttribute("user",username);
	}
%>
<html>
<head>
<title>ch06 : twitter_list.jsp</title>
</head>
<style>
	<!--교수님이 선호하는 방식-->
	div.box1{text-align: center;}
	div.box2{text-align: left;}	
</style>
<body>
<div align=center>
	<h3>My Simple Twitter!!</h3>
	<hr>
	
	<form action="tweet.jsp" method="POST">
		<!-- 세션에 저장된 이름 출력 (로그인을 통해 넘어온 사용자 이름 param을 위에서 세션으로 등록했음. -->
		#name: <%=session.getAttribute("user") %> 
		<input type="text" name="msg">
		<input type="submit" value="Tweet">
	</form>
	<hr>
	
	<!-- 이하 누적된 글 보여주는 pt -->
	<div align="left">
		<ul>
		<%
			@SuppressWarnings("unchecked") //(ArrayList<String>)으로 형변환을 할 때 워닝이 나올 수 있는데, 이걸 없애줌(필수x)
			// application 내장객체를 통해 msgs 이름으로 저장된 ArrayList를 가지고 옴
			ArrayList<String>msgs = (ArrayList<String>)application.getAttribute("msgs");//apllication에서 msg 찾아옴
			
			//msgs가 null 이 아닌 경우에만 목록 출력
			if(msgs != null) 
				for(String msg : msgs) 
					out.println("<li>"+msg+"</li>");
		%>
		</ul>
	</div>
</div>
</body>
</html>