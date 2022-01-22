<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<!DOCTYPE html>
<%
	// 변수설정
	int result = 0;
	
// 웹페이지 요청이 post 인 경우에만 수행 즉 form 을 통해 전달된것만 수행
	// 초기 로딩시 오류방지
	if(request.getMethod().equals("POST")) { //post로 들어오는 값에 대해
		// 연산자를 가지고 옴.
		String op = request.getParameter("operator"); //post로 들어온 폼태그 안의 operator 파라미터에 대해
		
		// input태그는 문자열 형태로 전달되게 되는데 이를 int 로 변환해야 연산이 가능.
		int num1 = Integer.parseInt(request.getParameter("num1"));//post로 들어온 폼태그 안의 num1 파라미터에 대해
		int num2 = Integer.parseInt(request.getParameter("num2"));//post로 들어온 폼태그 안의 num2 파라미터에 대해
		
		// 각 연산자별 처리
		if(op.equals("+")) {
			result = num1+num2;
		}
		else if(op.equals("-")) {
			result = num1-num2;
		}
		else if(op.equals("*")) {
			result = num1 * num2;
		}
		else if(op.equals("/")) {
			result = num1 / num2;
		}
	}
%>

<html>
<head>
	<meta charset="UTF-8">
	<title>ch03 : 계산기</title>
</head>
<body>
	<div align="center">
	<h3>계산기</h3>
	<hr>
	
	<form name=form1 method=post>
		<input type="text" name ="num1" width=200 size="5">
		
		<select name="operator">
			<option selected>+</option>
			<option>-</option>
			<option>*</option>
			<option>/</option>
		</select>
		
		<input type="text" name="num2" width=200 size="5">
		<input type="submit" name="B1" value="계산" > <input type="reset" value="다시입력" name="B2">
	</form>
	<hr>
	계산결과 : <%=result %> <!--위의 jsp로직에서 만들어진 result를 가져오는 것이다.-->
	</div>
</body>
</html>