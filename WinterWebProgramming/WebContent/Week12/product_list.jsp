<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	</form>
</div>
</body>
</html>