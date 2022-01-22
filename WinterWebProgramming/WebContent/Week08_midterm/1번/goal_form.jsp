<!-- 컴퓨터학과 20190356 정다해 크롬 -->
<!-- goal_form.jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form name=goal_form method=post action=action.jsp>
		<table style="margin: auto;">
			<tr> <!-- 형식을 위해 한 줄 안에 다시 테이블 -->
				<td>
					<table style="border: 1px solid; width:800px;">
						<tr>
							<td><h2 style="color: purple;">개인정보</h2></td>
						</tr>
						
						<tr>
							<th style="text-align: left;">분기</th>
							<td>
								<select required="required">
									<option value=0 selected> 1분기 </option>
									<option value=1> 2분기 </option>
									<option value=2> 3분기 </option>
									<option value=3> 4분기 </option>
								</select>
								-
								<input type=text maxlength="4" style="width:15%" placeholder="시작 달" required="required">
								-
								<input type=text maxlength="4" style="width:15%" placeholder="끝나는 달" required="required">
								
							</td>
						</tr>
						
						<tr>
							<th style="text-align: left;">행복지수</th>
							<td><input type=text placeholder="비율로 작성(예: 50%)" name="happy" required="required"></td>
						</tr>
						<tr>
							<th style="text-align: left;">메모</th>
							<td>
								<textarea  rows="5" cols="50" placeholder="남기고 싶은 것"></textarea>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<!-- -----------------------------여기까지가 윗줄----------------------------------------- -->
			
			<tr> <!-- 형식을 위해 한 줄 안에 다시 테이블 -->
				<td>
					<table style="border: 1px solid; width:800px;">
						<tr>
							<td><h2 style="color: purple;">목표</h2></td>
						</tr>
						
						<tr>
							<td><input type="checkbox" name="goal" value="0">투자수익률</td>
							
							<td>
								<input type=text maxlength="4" style="width:15%" value="0" name="invest">%
							</td>
						</tr>
						
						<tr>
							<td><input type="checkbox" name="goal" value="1">여행하기</td>
							
							<td>
								<input type=text maxlength="4" style="width:15%" value="0" name="travel">회
							</td>
						</tr>
						
						<tr>
							<td><input type="checkbox" name="goal" value="2">공연 및 영화보기</td>
							
							<td>
								<input type=text maxlength="4" style="width:15%" value="0" name="movie">회
							</td>
						</tr>
						
						<tr>
							<td><input type="checkbox" name="goal" value="3" >책읽기</td>
							
							<td>
								<input type=text maxlength="4" style="width:15%" value="0" name="book">권
							</td>
						</tr>
					</table>
				</td>
			</tr>
			
			<tr style="text-align: center;">
				<td><input type=submit value=저장하기>&nbsp;<input type = "reset" value=다시작성 ></td>
			</tr>
		</table>
	</form>
</body>
</html>