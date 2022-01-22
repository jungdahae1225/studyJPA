<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- jstl을 쓰려면 lib 다운 해줘야함 in WEB-INF_lib에(톰캣 사이트) -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form>
		<select name="sel">
			<option>-</option>
			<!-- ${param.sel == 'a' ? 'selected':''}이게 필요한 이유는 선택 한 이후 select박스 속에서 하나 선택하면
			그게 선택이 되어야 하는데 이걸 써주지 않으면 선택해도 결과는 나오나 box 속에는 계속 첫번째 애가 보임
			이게 없어도 실행은 돼야함 -->
			<option ${param.sel == 'a' ? 'selected':''}>a</option>
			<option ${param.sel == 'b' ? 'selected':''}>b</option>
			<option ${param.sel == 'c' ? 'selected':''}>c</option>
			<option ${param.sel == 'd' ? 'selected':''}>d</option>
			<option ${param.sel == 'e' ? 'selected':''}>e</option>
		</select>
		<input type="submit" value="선택">
	</form>
	<hr>
	
	<c:choose>
		<c:when test="${param.sel == 'a'}">
			a를 선택
		</c:when>
		<c:when test="${param.sel == 'b'}">
			b를 선택
		</c:when>
		<c:when test="${param.sel == 'c'}">
			c를 선택
		</c:when>
		
		<c:otherwise>
			a,b,c외 다른 거 선택
		</c:otherwise>
	</c:choose>
	
</body>
</html>