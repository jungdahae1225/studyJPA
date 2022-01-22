<!-- 20190356 컴퓨터학과 정다해 => 크롬으로 실행하였습니다. -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제시된 타이틀명 없음</title>
</head>

<style>
	table{
		border-collapse:collapse;
		margin: 0 auto;
	}
	table, td, th {
		border:solid 1px black;
	}
	th{
		background-color: #ececec;
	}
	input.imageAlign { 
		vertical-align:middle; 
	}
	textarea {
	    width: 99%;
	    height: 7.25em;
  }
</style>

<body>
<!-- <img alt="title_img" src="img/title_img.GIF" width="100%" height="20%"> -->
<!-- 12행 2열 표만들기-->
<form name=form1 method="post" action="register.jsp">
	<table id="table">
		<tr>
			<th colspan="2">회원가입</th>
		</tr>
		<tr>
			<th>아이디</th>
			<td><input type=text name="id"><input type=image src="img/IdButton.GIF" class="imageAlign"></td>
		</tr>
		<tr>
			<th>패스워드</th>
			<td><input type=password name="pw"></td>
		</tr>
		<tr>
			<th>성별</th>
			<td>
				<input type=radio name=gender value=0>남
				<input type=radio name=gender value=1 checked="checked">여
			</td>
		</tr>
		<tr>
			<th>국적</th>
			<td><input type=text value="대한민국"><input type=image src="img/ConButton.GIF" class="imageAlign"></td>
		</tr>
		<tr>
			<th>휴대폰</th>
			<td>
				<select>
					<option value=1 selected> 010 </option>
					<option value=2> 016 </option>
					<option value=3> 019 </option>
				</select>
				-
				<input type=text maxlength="4" style="width:15%">
				-
				<input type=text maxlength="4" style="width:15%">
				
			</td>
		</tr>
		<tr>
			<th>이메일</th>
			<td><input type=text style="width:80%" name="email"></td>
		</tr>
		<tr>
			<th>생일</th>
			<td><input type="date" placeholder="연도-월-일" name="birth"></td>
		</tr>
		<tr>
			<th>관심분야</th>
			<td>
				<input type=checkbox name=hobby value=0>뉴스
				<input type=checkbox name=hobby value=1 checked="checked">맛집
				<input type=checkbox name=hobby value=2>책
				<input type=checkbox name=hobby value=3>영화
				<input type=checkbox name=hobby value=4>여행
			</td>
		</tr>
		<tr>
			<th>가입인사</th>
			<td>
				<textarea placeholder="회원들에게 간단한 가입인사를 남겨주세요"></textarea>
			</td>
		</tr>
		<tr>
			<th>증명사진</th>
			<td><input type=file></td>
		</tr>
		<tr>
			<th colspan="2"><input type=submit value=가입하기>&nbsp;<input type = "reset" value=다시작성 ></th>
		</tr>

		</table>
	</form>
</body>

</body>
</html>