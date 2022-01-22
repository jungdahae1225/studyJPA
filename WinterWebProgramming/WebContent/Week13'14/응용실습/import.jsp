<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
  <title>ch11 : import</title>
</head>

<body style="background-color: yellow;">
	<h3>&lt;c:import&gt;</h3>
	
	다음은 import 를 이용해 포함한 것입니다.<HR>
	
	<c:import url="product_list.jsp" var="myurl" />
	
	${myurl}
	<hr>
	
	<c:out value="${myurl}" escapeXml="false"/>
	<HR>
</body>
</html>