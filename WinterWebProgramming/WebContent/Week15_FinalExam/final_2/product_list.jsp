<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 컴퓨터학과 20190356 정다해 크롬 -->
<!-- product_list.jsp -->
<!-- AddrBean에 있는 접근자를 쓸 거기 때문에 import해줘야함 -->
<% request.setCharacterEncoding("UTF-8"); %>
<%@ page import="final_class.ProductBean" %>
<%@ page import = "java.util.Collections" %>
<%@ page import = "java.util.*" %>

<jsp:useBean id="am" class="final_class.ProductManager" scope="application"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>final_2:전체현황</title>
</head>
<style>
	table{
			border: 1px solid black;	
			border-collapse:collapse;
			margin: 0 auto;
			width: 70%;
		}
	td,th { 
		border: 1px solid black;
		text-align: center;
	}
</style>
<body>
<div align=center>
	<H2>판매현황</H2>
	<HR>
	<a href="product_form.jsp">상품정보추가</a><P>
	<table>
		<tr>
			<td>상품명</td>
			<td>단가</td>
			<td>수량</td>
			<td>판매등급</td>
			<td>구분</td>
		</tr>
		<%
			for(ProductBean ab : am.getAddrList()) {
		%>
			<tr>
				<td><%=ab.getProductname() %></td>
				<td><%=ab.getPrice() %></td>	
				<td><%=ab.getQty() %></td>
				<td><%=ab.forSetGrade() %></td>
				<td><%=ab.getKind() %></td>
			</tr>
		<%	
			}
		%>
	</table>
</div>
	
</body>
</html>