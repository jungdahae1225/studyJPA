<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- 자바 bean을 가져오고,  class="week11.LoginBean" 이 클래스를 별칭(id)으로 scope="page" 생존 범위 한 페이지 내에서 사용할 것이다.-->
<jsp:useBean id="login" class="week11.LoginBean" scope="page"/>

<!-- jsp폼에서 받은 정보를 자바클래스로 보내기(setProperty) 어디로(name) = 위에서 만든 별칭으로. 
자바의 변수명과 jsp의 입력 name을 같은 걸 쓴다면 property="*" => 이름이 같은 변수에 모두 매칭 할 거다.
만일 변수명과 jsp에서 설정한 name이 다르다면 param ="jsp form의 변수를" property="자바의 변수에 매칭 할 거다." -->
<jsp:setProperty property="*" name="login"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 결과 출력</title>
</head>
<body>
<%
	if(login.checkUser())
		out.print("로그인 성공");
	else
		out.print("로그인 실패");
%>

	<!--자바클래스에서 정보 가지고 나오기(getProperty)-->
	사용자 아이디: <jsp:getProperty property="username" name="login"/> <br>
	사용자 비밀번호: <jsp:getProperty property="passwd" name="login"/> <br>
</body>
</html>