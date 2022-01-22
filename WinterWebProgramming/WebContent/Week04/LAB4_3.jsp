<!-- 20190356 컴퓨터학과 정다해 => 크롬으로 실행하였습니다. -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LAB4_3</title>
<style>
	table {
		width: 500px;
		border: 1px solid;
	}
	td,th { 
		border: 1px solid black;
	}
</style>
</head>
<body>
	<div align="center">
	<%
		String t = "<tr><th style='color: red;'>월</th> <th style='color: black;'>화</th><th style='color: black;'>수</th><th style='color: green;'>목</th><th style='color: black;'>금</th><th style='color: black;'>토</th><th style='color: blue;'>일</th></tr>";
		String tr_td = "<td align='center'>&nbsp;</td>";
		String td ="";
		for(int i =0; i < 7; i++)
			td += tr_td;
		
		String tr = "<tr>"+ td +"</tr>";
					
		out.print("<table>");
		out.print(t);
		
		for(int i =0; i < 4; i++)
			out.print(tr);
		
		out.print("</table>");
	%>
	</div>
</body>
</html>