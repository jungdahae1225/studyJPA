<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 컴퓨터학과 20190356 정다해 크롬 -->
<!-- product_form.jsp -->
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>final_2:상품정보</title>
</head>
<style>
	table{
			border: 1px solid black;	
			border-collapse:collapse;
			margin: 0 auto;
		}
	td,th { 
		border: 1px solid black;
		width: 30;
	}
</style>
<body>
<div align="center">
	<h2>판매정보</h2>
	<hr>
	<form name=form1 method="post" action="product_add.jsp">
		<table>
			<tr>
				<td>상품명</td>
				<td><input type=text size=20 name=productname></td>
			</tr>
			
			<tr>
				<td>수량</td>
				<td><input type=text size=20 name=qty></td>
			</tr>
			
			<tr>
				<td>단가</td>
				<td><input type=text size=20 name=price></td>
			</tr>
			
			<tr>
				<td>구분</td>
				<td>
					<select name="kind">
						<option value="음료수" selected> 음료수 </option>
						<option value="라면"> 라면 </option>
						<option value="아이스크림"> 아이스크림 </option>
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