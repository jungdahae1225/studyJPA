<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage="error_notice.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Include 지시어 </title>
<style> <!--자식 class table의 css를 부모로 가지고 나옴 id값이 이어진다.-->
	#container{
		text-align: center;
	}
	table.t1 { 
		width: 400px;
		border-collapse: collapse;
		border: 1px solid black;
	}
	 <!--t1테이블의 자식 th에 대해-->
	
	 table.t1 tr, table.t1 th,table.t1 td{border: 1px solid black;}
	
	table.t2 {
		width: 700px;
		margin-left:auto;
		margin-right:auto;	
		border-collapse: collapse;
	}
</style>
<body>
<%
	//int x = 10/0;
%>

<div id="container" align="center">
	<h4>[지시어 연습]</h4>
	<h2>include 지시어 연습</h2>
	<hr>
	<table class="t2">
		<tr>
			<td><%@include file="calendar.jsp" %></td>
			<td width="30">&nbsp;</td> <!-- 중간을 이렇게 비워놓으면 좋다(거리 조정하기에 편리하다) -->
			<td width="400"><%@include file="news.jsp" %></td>
		</tr>
	</table>
</div>
</body>
</html>