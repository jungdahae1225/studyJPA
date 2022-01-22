<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- jstl을 쓰려면 lib 다운 해줘야함 in WEB-INF_lib에(톰캣 사이트) -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>core out(이하 cout)</title>
</head>

<body>
	<h2>JSTL예제_JSTL은 표현어와 함께 많이 쓰인다.</h2>
	<hr>
	<h3>set:변수에 값을 할당하는 일, out:출력하는일</h3>
	
	<!-- var는 변수명, value는 이 변수명에 들어갈 변수값 (태그, 일반 문자열, 표현식 모두 가능)-->
	<c:set var="language1" value="<h2>JSP</h2>"/>
	<c:set var="language2" value="Python"/>
	
	<!-- 표현식에 배열을 쓰면 이클립스는 에러를 내는데 실행 하는데는 상관 없으니 그냥 써라.-->
	<c:set var="intArray" value="${[1, 2, 3, 4, 5]}"/>
	<c:out value="web programming"/><br>
	
	<!-- escapeXml="true"이면 value 속 태그인식. escapeXml="false"이면 value 속 태그도 모두 문자열로 인식. -->
	<c:out value="${language1}" escapeXml="true"/><br>
	그냥 이렇게 출력해도 된다. 그래서 굳이 out으로 출력하지 않고 주로 그냥 표현식으로 출력한다.( 문자열 속 h2태그가 적용 되어있으니, h2태그가 적용되어 출력) ${language1}
	
	<c:out value="${language2}"/><br>
	그냥 이렇게 출력해도 된다. (h2태그가 적용되어 출력X language2는 현재 태그로 감싸있지 않음) 
	${language2}
	
	<c:out value="${intArray[0]}"/><br>
	
	<!-- ----------------------------조건문----------------------------- -->
	
	<!-- ""안에 들어가는 따옴표는 다르게!! ,, if문의 결과를 var의 변수에 담는다. 참이면 닫는 태그 전까지의 코드가 실행된다-->
	<c:if test="${language2 == 'Python'}" var="result">
		test result : ${result}
		if문이 true라 출력되는 중입니다. success
		false라면 아무것도 출력되지 않을 것입니다.(if 태그 속 코드가 아무것도 실행 안됨.)
		거짓일 때도 코드를 실행하고 싶다면 choose를 써라라
	</c:if>
	
	<h3>choose, when, otherwise</h3>
	<c:choose>
		<c:when test="${language2 == 'Python'}">
			choose구문속 해당 when이 참이라면 이 줄을 출력한다.
			language2 == 'Python'입니다.
		</c:when>
		
		<c:when test="${language2 == 'JSP'}">
			choose구문속 해당 when이 참이라면 이 줄을 출력한다.
			language2 == 'JSP'입니다.
		</c:when>
		
		<c:otherwise>
			이도저도 아니라면, 즉 자바의 else와 비슷한 역할을 한다.
		</c:otherwise>
	</c:choose>
</body>
</html>