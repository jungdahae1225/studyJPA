<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 컴퓨터학과 20190356 정다해 크롬 -->
<!-- bbs_form.jsp -->
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>bbs_form.jsp</title>
</head>
<body>
<div align="left">
	<form name=form1 method=post action=bbs.jsp>
		<table>
			<tr>
				<td>글쓴이:</td>
				<td><%=session.getAttribute("NAME") %></td>
			</tr>
			<tr>
				<td>제목</td>
				<td><input type="text" name="title"/></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><textarea rows="3" cols="20" name="memo"></textarea></td>
			</tr>
			<tr>
			<td><input type="submit" value="등록"/> </td>
		</tr>
		</table>
	</form>
</div>
</body>
</html>