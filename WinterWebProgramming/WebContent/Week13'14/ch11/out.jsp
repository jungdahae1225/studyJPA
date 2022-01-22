<%@page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <title>ch11 : out</title>
</head>
<body bgcolor="#FFFFFF">

<h3>&lt;c:out&gt;</h3>

<table border="1">
  <c:forEach var="member" items="${members}"> <!-- 자바 코드에서 세션에 members라고 작성해둠 -->
    <tr>
	  <td>${member.name}</td>
	  <td><c:out value="${member.email}" escapeXml="false">
			<font color=red>email 없음</font>
			</c:out>
	  </td>
	</tr>
  </c:forEach>
</table>
</body>
</html>
