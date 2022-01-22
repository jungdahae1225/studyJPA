<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<style>
	div{text-align: center;}
	table {margin: auto;}
	table, td, th {
		border: 1px solid black;
		border-bottom-style: hidden;
	}
	td.t1{
		width: 300px; 
		font-size: 10px;
		padding-left: 20px;
		padding-right: 20px;
	}
	td.t2{ width: 30px; }
	ul, ol{ padding-left: 25px; }
	li{ text-align: left; }
</style>
<body>
<div>
	<H2>include 지시어 테스트</H2>
	<hr>
	<%@ include file="menu.jsp" %>
	<table>
		<tr>
			<td class="t1"><%@ include file="news.jsp" %></td>
			<td class="t2">&nbsp;</td>
			<td class="t1"><%@ include file="shopping.jsp" %></td>
		</tr>
	</table>
	
</div>
</body>
</html>