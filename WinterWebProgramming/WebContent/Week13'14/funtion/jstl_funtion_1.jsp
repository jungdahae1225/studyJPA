<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>함수</title>
</head>
<body>
	<p>java 문자열 검색
	<p>Hello, Java Server Pages! => ${fn:contains("Hello, Java Server Pages!", "java")}
	<p>hello, java server pages! => ${fn:containsIgnoreCase("hello, java server pages!", "java")}
	
	<c:set var="str" value="Java Server Pages"/>
	<p>문자열 출력(원래대로) : ${str}
	<p>문자열 출력(소문자로): ${fn:toLowerCase(str)}
	<p>문자열 출력(대문자로): ${fn:toUpperCase(str)}
	<p>문자열 길이 : ${fn:length(str)}
	<br>
	
	<c:set var="phone" value="010-abc-defg"/>
	<p>indexOf(phone, str2) : ${fn:indexOf(phone, "abc")}
	<p>substring(phone, 4, 7) : ${fn:substring(phone, 4, 7)}
	<p>substringAfter(phone, "abc") : ${fn:substringAfter(phone, "abc")}
	<p>substringBefore(phone, "abc") : ${fn:substringBefore(phone, "abc")}
	<p>startsWith(phone, "abc") : ${fn:startsWith(phone,"abc")}
	<p>startsWith(phone, "010") : ${fn:startsWith(phone,"010")}
	<p>replace(array, src, dest) : ${fn:replace(phone,"defg","jstl")}
	
	<c:set var="array" value="${fn:split(phone, '-')}"/>
</body>
</html>