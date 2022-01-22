<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<HTML>
<HEAD>
<title>ch06 : checkOut.jsp</title>
</HEAD>
<body>
<div align="center">
<H2>계산</H2>
선택한 상품 목록+
<HR>
<%
	@SuppressWarnings("unchecked") //(ArrayList<String>)으로 형변환을 할 때 워닝이 나올 수 있는데, 이걸 없애줌(필수x)
	ArrayList<String> list = (ArrayList<String>)session.getAttribute("productlist"); //getAttribute를 사용하여 productlist를 가져온다.getAttribute는 object타입으로 반환 되기 때문해 형변환.
	
	if(list == null) //list가 비어있지 않다면.
		out.println("선택한 상품이 없습니다.!!!");
	else 
		for(String productname:list) //(String)로 받아도 될 것 같은데,,
			out.println(productname + "<br>");
	int sum = 0 ;
	
	if(list != null){
		for(String product :list){
			if("사과".equals(product)){
				sum += 500;
			}
			else if("귤".equals(product)){
				sum += 2000;
			}
			else{
				sum += 100;
			}
		}

	}
	out.print("현재까지 총금액: " + sum);
	
%>

</div>
</body>
</html>