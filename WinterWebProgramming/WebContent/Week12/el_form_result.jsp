<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>el_form_result</title>
</head>
<body>
	<div align="center">
	<!-- getparam대신 표현식 -->
	<p> id: ${param.id} </p>
	<p> pw: ${param.pw} </p>
	
	<!-- getparamValues대신 표현식 -->
	<!-- 여러개일 때 paramValues.이름[인덱스] -->
	<p> hobby:  <br/>
				${paramValues.hobby[0]} <br/>
				${paramValues.hobby[1]} <br/>
				${paramValues.hobby[2]} <br/>
				${paramValues.hobby[3]} <br/>
	</p>
	
	</div>
</body>
</html>