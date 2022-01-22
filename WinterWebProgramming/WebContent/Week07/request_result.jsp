<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>request_내장객체</title>
<style>
	table#t1 {
		width: 400px;
		border: 1px solid;
		border-collapse: collapse;
	}
	table {
		width: 400px;
		border: 1px solid;
		border-collapse: collapse;
	}
	
	td{
		border: 1px solid;
	}
</style>
</head>
<body>
<div align="center">
	<table id="t1">
		<tr>
			<td>이름 :</td>
			<td><%=request.getParameter("username")%><br></td>
		</tr>
		<tr>
			<td>직업 :</td>
			<td><%=request.getParameter("job")%><br></td>
		</tr>
		<tr>
			<td>관심분야 :</td>
			<td><!-- 여러개가 넘어오면 배열로 넘어온다. 따라서 넘어오는 값을 받아 줘야 한다. -->
				<%
					String favorites[] = request.getParameterValues("favorite");
					//for( int i = 0; i < favorites.length; i++)
						//out.print(favorites[i] + "<br>");
						
					for(String item: favorites)
						out.print(item + "<br>");
				%>
			</td>
		</tr>
	</table>	
	<hr>
	<h2>서버 정보 출력</h2>
	<table id="t2">
		<tr>
			<td> 
				1.클라이언트 IP주소: <%=request.getRemoteAddr()%><br>
				2.요청 메소드 : <%=request.getMethod() %><br>
				<%
					Cookie cookie[] = request.getCookies();
				%>
				3.쿠키 여부 : <%=cookie[0].getName() %>에 설정된 쿠키값 <%=cookie[0].getValue() %><br>
				4.프로토콜: <%=request.getProtocol() %><br>
			</td>
		</tr>
	</table>
</div> 
</body>
</html>