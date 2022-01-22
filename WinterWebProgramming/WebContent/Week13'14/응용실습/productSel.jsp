<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>productSel_전달받은 값을 출력하는 일만 하라</title>
</head>
<body>
<div align="center">
	<!-- get파라미터로 가져올 수도 있고,자바빈즈로 jsp:getparam으로 가져올 수도 있고, 표현어로 가져올 수도 있다. -->
	1.선택한 상품 출력: ${param.sel} <br> <!-- param으로 넘어온 것 중 sel을 표현식으로 가져오기-->
	
	<!-- 현재 product_list에서 자바빈즈 생명 주기를 session으로 주어서 따로 다시 빈즈 선언 안하고 별명으로(product) 이렇게 쓸 수 있음 -->
	2.num1 + num2: ${product.num1} + ${product.num2} = ${product.num1 + product.num2}<br>
	
	<!-- -------------------------------------------표현식을 쓰지 않던 이전 방법 ----------------------------------------->
	1.선택한 상품은 : <%=request.getParameter("sel")%><br>
	
	<jsp:useBean id="product" class="ch10.Product"/>
	2.num1 + num2 = <%=product.getNum1() + product.getNum2()%><br>
	
	
</div>
</body>
</html>