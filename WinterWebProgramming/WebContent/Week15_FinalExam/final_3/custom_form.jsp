<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 컴퓨터학과 20190356 정다해 크롬 -->
<!-- custom_form.jsp -->
<% request.setCharacterEncoding("UTF-8"); %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="mytag"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>문제3:커스텀태그</title>
</head>
<style>
	table {
		
	}
	
	td,th { 
		
	}
</style>
<body>
<div align="center">
	<form name=form1 method=post action=custom_tag.jsp>
		<table>
			<tr>
				<td>글자색:</td>
				<td>
					<select name="fontcolor">
						<option value="red"> 빨강 </option>
						<option value="green" selected> 초록 </option>
						<option value="blue"> 파랑 </option>
					</select>
				</td>
			</tr>
			
			<tr>
				<td>선두께:</td>
				<td>
					<select name="line">
						<option value="2px"> 2px </option>
						<option value="5px"> 5px </option>
						<option value="10px" selected> 10px </option>
					</select>
				</td>
			</tr>
			
			<tr>
				<th colspan="2" align="center"><input type=submit value=보내기></th>
			</tr>
		</table>
	</form>
</div>
</body>
</html>