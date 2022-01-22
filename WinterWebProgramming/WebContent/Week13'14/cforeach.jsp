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
	<h2>JSTL예제_forEach구문</h2>
	<c:set var="intArray" value="${[1, 2, 3, 4, 5]}"/>
	
	<!-- intArray에 들어있는 값을 하나씩 출력하기 begin="5" end="10"이거는 필수가 아니다.-->
	<c:forEach var="num" varStatus="i" items="${intArray}" begin="1" end="2">
		${num}<br>
		varStatus에 대해 구해볼 수 있는 값
		현재 해당 인덱스에 대한 실제 값 = i.current : ${i.current}<br>
		진짜 인덱스 값: i.index : ${i.index}<br>
		1부터 시작하여 몇 번째 = i.count : ${i.count}<br>
		해당 변수값이 첫번째 값인지 = i.first : ${i.first}<br>
		해당 변수값이 마지막 값인지 = i.last : ${i.last}<br>
		시작값(초기값) = i.begin : ${i.begin}<br>
	</c:forEach>
</body>
</html>