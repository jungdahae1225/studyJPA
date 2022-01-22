<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>addr_form(주소록)</title>
</head>
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
						<option value=1 selected> 남 </option>
						<option value=2> 여 </option>
					</select>
				</td>
			</tr>
			
			<tr>
				<th colspan="2" align="center"><input type=submit value=확인>&nbsp;<input type = "reset" value=취소 ></th>
			</tr>
		
		</table>
	</form>
</div>
</body>
</html>