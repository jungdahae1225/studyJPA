<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<html>
<head>
	<title>ch05 : add.jsp - 세션 등록 역할</title>
</head>

<body>
<%
	request.setCharacterEncoding("UTF-8");
	String productname = request.getParameter("product"); //선택한 상품을 param으로 가져오고
	
	@SuppressWarnings("unchecked") //(ArrayList<String>)으로 형변환을 할 때 워닝이 나올 수 있는데, 이걸 없애줌(필수x)
	ArrayList<String> list = (ArrayList<String>)session.getAttribute("productlist"); //세션에 productlist라는 세션이 이미 있는지
	
	if(list == null) { //list가 없으면 productlist라는 이름의 새로운 list 만들어주고
		list = new ArrayList<String>();
	
		//저장해야 하는 값이 여러개(상품 여러개)이므로, list형태로 저장한다.
		session.setAttribute("productlist",list); //새로 만들어준 list를 세션으로 등록
	}
	
	list.add(productname);//이미 있으면 그냥 가져온 param을 추가

%>
	<script>
		alert("<%=productname %>이(가)추가 되었습니다.!!");
		history.go(-1); //그냥 바로 전 화면으로 가고자 할 때. cf) 특정화면으로 가고자 하는 경우 response.sendRedirect("넘어가고자하는 특정페이지")
	</script>
</body>
</html>