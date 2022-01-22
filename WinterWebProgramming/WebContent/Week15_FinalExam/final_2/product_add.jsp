<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 컴퓨터학과 20190356 정다해 크롬 -->
<!-- product_add.jsp -->
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="addr" class="final_class.ProductBean" scope="page"/>    
<jsp:setProperty property="*" name="addr"/>

<jsp:useBean id="am" class="final_class.ProductManager" scope="application"/>    
<%
	if(addr.getProductname() != null && addr.getQty() !=null && addr.getPrice() != null)
		am.add(addr); //상품명, 수량, 단가가 정상적으로 입력된 경우만 데이터 추가 가능하도록 한다
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>final_2:상품정보</title>
</head>
<style>
table {
		text-align: center;
	}
</style>
<body>
<div align=center>
	<h2>상품 정보 등록</h2>
	
	<table>
		<tr>
			<td>상품명 : <%=addr.getProductname() %></td>
		</tr>
		
		<tr>		
			<td>단가 : <%=addr.getPrice() %></td>
		</tr>
		
		<tr>
			<td>수량 : <%=addr.getQty() %></td>
		</tr>
		
		<tr>
			<td>구분 : <%=addr.getKind() %></td>
		</tr>

	</table>
	<hr>
	
	<a href="product_list.jsp">전체 목록보기</a>
</div>
</body>
</html>