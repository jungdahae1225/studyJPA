<%@ tag body-content="scriptless" pageEncoding="UTF-8"%>

<!-- 태그 속성 만들기 -->
<%@ attribute name="border"%>
<%@ attribute name="bgcolor"%>

<jsp:useBean id="product" class="week12.Product"/>

<!-- <jsp:doBody/> 는 JSP 파일에서 item 태그 안에 body로 쓰인 <mytag:item border=3 bgcolor=red> 재고현황 </mytag:item> 재고현황이 출력되게 된다. -->
<h2><jsp:doBody/></h2>

<table border="${border}" style="background-color: ${bgcolor}; width: 50%" >
	<%
		for(String item:product.getProductList())
				out.print("<tr><td>" + item + "</td></tr>");
	%>
</table>