<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 컴퓨터학과 20190356 정다해 크롬 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LAB12_1:스크립트릿</title>
</head>
<style>
	table {
		border: 1px solid;
	}
	td,th { 
		border: 1px solid black;
	}
	td{width: 100px}
</style>
<body>
<div align="center">
	<h2>구구단 출력</h2>
	<hr>
	<form>
		<table>
			<tr>
				<%
					for(int i = 2 ; i < 6 ; i ++){
						out.print("<td>");
						for(int j = 1 ; j < 10 ; j ++){
							out.print( i + " * " + j + " = " + (i * j) +"<br>");
						}
						out.print("</td>");
					}
				%>
			</tr>
			
			<tr>
				<%
					for(int i = 6 ; i < 10 ; i ++){
						out.print("<td>");
						for(int j = 1 ; j < 10 ; j ++){
							out.print( i + " * " + j + " = " + (i * j) +"<br>");
						}
						out.print("</td>");
					}
				%>
			</tr>
		</table>
	</form>
</div>
</body>
</html>