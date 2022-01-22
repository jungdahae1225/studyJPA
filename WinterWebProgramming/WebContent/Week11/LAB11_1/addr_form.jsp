<!-- 20190356 컴퓨터학과 정다해 => 크롬으로 실행하였습니다. -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ch07:주소록</title>
</head>
<style>
	table{
			border: 1px solid black;	
			border-collapse:collapse;
			margin: 0 auto;
		}
	td,th { 
		border: 1px solid black;
	}
</style>
<body>
<div align="center">
	<h2>주소록 등록</h2>
	<hr>
	<form name=form1 method="post" action="addr_add.jsp">
		<table>
			<tr>
				<td>이름</td>
				<td><input type=text size=20 name=username></td>
			</tr>
			
			<tr>
				<td>전화번호</td>
				<td><input type=text size=20 name=tel></td>
			</tr>
			
			<tr>
				<td>이메일</td>
				<td><input type=email size=20 name=email></td>
			</tr>
			
			<tr>
				<td>성별</td>
				<td>
					<select name="sex">
						<option value="남" selected> 남 </option>
						<option value="여"> 여 </option>
					</select>
				</td>
			</tr>
			
			<tr>
				<td>주소 그룹</td>
				<td>
					<select name="group">
						<option value="가족" selected> 가족 </option>
						<option value="친구"> 친구 </option>
						<option value="직장"> 직장 </option>
					</select>
				</td>
			</tr>
			
			<tr>
				<th colspan="2" align="left"><input type=submit value=확인>&nbsp;<input type = "reset" value=취소 ></th>
			</tr>
		
		</table>
	</form>
</div>
</body>
</html>