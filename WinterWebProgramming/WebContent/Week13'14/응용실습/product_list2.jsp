<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>product_list</title>
</head>
<body>
<div align="center">
	<h2>상품 목록</h2>
	<hr>
	<jsp:useBean id="product2" class="week12.Product" scope="session"/>
	<form action="productSel2.jsp">
		<select name=sel>
			<c:forEach items = "${product2.productList}" var="item">
				<option>${item}</option>
			</c:forEach>
		</select>
		
		<select name=num>
			<c:forEach items = "${product2.productList_num}" var="num_item">
				<option>${num_item}</option>
			</c:forEach>
		</select>
		
		<input type="submit" value="계산">
	</form>
</div>
</body>
</html>