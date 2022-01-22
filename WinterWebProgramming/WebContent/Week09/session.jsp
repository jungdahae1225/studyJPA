<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		if(session.isNew()){ //boolean isNew() 클라이언트 세션 ID를 할당하지 않은 경우 true 값을 리턴 한다. 새로운 세션이지를 확인할 때 사용한다.
			out.println("<script> alert('세션이 해제되어 다시 설정합니다.')</script>");
			//웹 브라우저가 완전 종료 되지 않는 이상 세션이 유지된다. - 웹브라우저에 따라 달라진다.
			session.setAttribute("login", "홍길동");
		}
	%>
	<%= session.getAttribute("login") %> 님 환영합니다.<br>
	1. 세션 ID: <%= session.getId() %><br> <!-- 브라우저단위로 새로 생성됨 -->
	2. 세션 유지시간: <%=session.getMaxInactiveInterval() %><br>
	
<!-- 
- String getId()

각 접속에 대한 세션 고유 ID 를 문자열 형태로 반환

- long getCreationTime()

세션이 생성된 시간을 January 1 ,1970 GMT 부터 long 형 밀리세컨드 값으로 반환

- long getLastAccessedTime()

웹 브라우저의 요청이 마지막으로 시도된 시간을 long 형 ms 값으로 반환

- int getMaxInactiveInterval()

세션 유지 시간을 초로 반환. 기본 값은 30분으로 지정된다.

- void setMaxInactiveInterval(int interval)

세션을 유지할 시간을 interval에 설정된 초기 값으로 설정

- void invalidate()

현재 세션을 종료. 세션관련 모든 값 삭제

- boolean isNew()

클라이언트 세션 ID를 할당하지 않은 경우 true 값을 리턴 한다. 새로운 세션이지를 확인할 때 사용한다.

- void setAttribute(String key, Object value)

주어진 key속성의 값을 value로 지정한다.

- Enumeration getAttributeNames()

모든 속성의 이름을 구한다.

- Object getAttribute(String key)

주어진 key속성의 값을 얻어낸다.

- void removeAttribute(String key)

주어진 key속성의 값을 제거한다. -->
</body>
</html>