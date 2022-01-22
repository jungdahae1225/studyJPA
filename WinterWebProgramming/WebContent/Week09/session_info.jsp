<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>세션 정보를 얻어오는 메서드를 사용하는 예제</h3>
	
	<%
		//고유한 세션 객체의 ID를 되돌려준다.
		String id_str = session.getId();
	
		//세션에 마지막으로 엑세스한 시간을 되돌려 준다.
		long lastTime = session.getLastAccessedTime();
		
		//세션이 생성된 시간을 되돌려 준다.
		long createdTime = session.getCreationTime();
		
		//새션이 마지막으로 액세스한 시간에서 세션이 생성된 시간을 빼면 웹사이트에 머문 시간이 계산 된다.
		long time_used = (lastTime - createdTime) / 60000;
		
		//세션의 유효시간 얻어오기
		int inactive = session.getMaxInactiveInterval() / 60;
		
		//세션이 새로 만들어졌는지를 알려준다.
		boolean new_session = session.isNew();
	%>
	
	[1]세션 ID: [<%=session.getId() %>]입니다.<br/><hr/>
	[2]웹사이트에 머문시간: <%=time_used %>분입니다.<br/><hr/>
	[3]세션의 유효시간: <%=inactive %>분입니다.<br/><hr/>
	[4]세션이 새로 만들어졌는지 여부:
	<%
		if(new_session)
			out.print("새롭게 세션을 만들었네요.");
	
		else
			out.print("이미 세션이 존재했습니다.");
	%>
</body>
</html>