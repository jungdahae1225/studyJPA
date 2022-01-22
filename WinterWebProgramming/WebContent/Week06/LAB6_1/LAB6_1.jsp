<!-- 20190356 컴퓨터학과 정다해 => 크롬으로 실행하였습니다. -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LAB6_1</title>
</head>
<style> <!--자식 class table의 css를 부모로 가지고 나옴 id값이 이어진다.-->
	#container{
		text-align: center;
	}
	table.t1 { 
		width: 300px;
		height: 200px;
		border-collapse: collapse;
		text-align: center;
	}

	table.t2 {
		width: 700px;
		margin-left:auto;
		margin-right:auto;	
		vertical-align: top;
	}
	
	td { vertical-align: top;}
	
</style>

<body>
	<h2 style="text-align: center;">Include Action Practice</h2>
	<br>

	<table class="t2">
		<tr>
			<td>
				<jsp:include page="calendar.jsp">
					<jsp:param name="YEAR" value="2020"/>
					<jsp:param name="MONTH" value="2"/>
				</jsp:include>
			</td>
			<td width="30">&nbsp;</td> <!-- 중간을 이렇게 비워놓으면 좋다(거리 조정하기에 편리하다) -->
			<td>
				<jsp:include page="news.jsp">
					<jsp:param name="TASK1" value=""/>
					<jsp:param name="TASK2" value="take a class"/>
					<jsp:param name="TASK3" value="Homework"/>
				</jsp:include>
			</td>
		</tr>
	</table>
</body>
</html>