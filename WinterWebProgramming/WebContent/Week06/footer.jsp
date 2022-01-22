<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<body>
	<p>여기부터는 footer.jsp임</p>
	<hr>
	
	<%=request.getParameter("email") %>
	<%=request.getParameter("tel") %>
	
	<%
		out.print("<br>");
		out.print("스크립트릿으로 출력");
		out.print(request.getParameter("tel"));
	%>
</body>