<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>productSel_전달받은 값을 출력하는 일만 하라</title>
</head>
<body>
<div align="center">
	<jsp:useBean id="product2" class="week12.Product" scope="session"/>
	<c:set var="price" value="${['100', '200', '300'] }"/> 
	<!-- get파라미터로 가져올 수도 있고,자바빈즈로 jsp:getparam으로 가져올 수도 있고, 표현어로 가져올 수도 있다. -->
	1.선택한 상품 출력: ${param.sel} <br> <!-- param으로 넘어온 것 중 sel을 표현식으로 가져오기-->
	
	<c:choose>
		<c:when test="${param.sel == '사과'} ">
			사과 ${param.num}개 고름 ==> ${param.num * price[0]}원<br>
		</c:when>
		
		<c:when test="${param.sel == '딸기'}">
			딸기 ${param.num}개 고름 ==> ${param.num * price[1]}원<br>
		
		</c:when>
		
		<c:when test="${param.sel == '수박'}">
			수박 ${param.num}개 고름 ==> ${param.num * price[2]}원<br>
		</c:when>
	</c:choose>
	
	현재까지 총 금액 합계 = ${totalPrice}
	
</div>
</body>
</html>