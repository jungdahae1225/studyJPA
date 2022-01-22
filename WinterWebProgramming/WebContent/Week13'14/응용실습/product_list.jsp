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
	<!-------------------------이전 코드----------------------------
	<form name=form1 method="POST" action="productSel.jsp">
		<jsp:useBean id="product" class="week12.Product" scope="session"/>
			<select name=sel>
				<%
					for(String item : product.getProductList()){
						out.println("<option>" + item + "</option>");
					}
				%>
			</select>
		<input type="submit" value="선택"/>
	</form> -->
	
	<jsp:useBean id="product2" class="week12.Product" scope="session"/>
	<select name=sel>
		<c:forEach items = "${product2.productList}" var="item">
			<option>${item}</option>
		</c:forEach>
	</select>
</div>
</body>
</html>