<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<HTML>
<HEAD>
<title>ch06 : selProduct.jsp</title>
</head>
<%
	//한글인코딩
	request.setCharacterEncoding("UTF-8"); 
	//out.println(request.getParameter("username")); //확인
	
	/* 아이디 비번이 맞는 사람만 로그인 할 수 있게 하기 == java에서는 equals 써서 같은지 확인. ==은 안된다!!!!(문자열을 객체로 처리하기 때문.)
	if(request.getParameter("username").equals("admin") && request.getParameter.equals("pwd") == "1234")
		session.setAttribute("username", request.getParameter("username"));*/
	
	//session에 username으로 HTML폼의 <input type="text" name="username">에 입력된 값을 저장함
	session.setAttribute("username",request.getParameter("username"));
%>
<body>
<div align="center">
	<h2>상품선택</h2>
	<hr>
	<%=session.getAttribute("username") %>님 환영합니다!!!!
	<hr>
	<form name="form1" method="POST" action="add.jsp">
		<select name="product">
			<option>사과</option>
			<option>귤</option>
			<option>파인애플</option>
			<option>자몽</option>
			<option>레몬</option>
		</select>
		<input type="submit" value="추가"/>
	</form>
	<a href="checkOut.jsp">장바구니 목록보기</a>
</div>
</body>
</html>




