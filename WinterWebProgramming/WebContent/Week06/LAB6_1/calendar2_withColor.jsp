<!-- 20190356 컴퓨터학과 정다해 => 크롬으로 실행하였습니다. -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ page import="java.util.Calendar"%>
    <%@ page import="java.time.LocalDateTime, java.time.LocalDate" %>
  <!-- <style>
   table {
		width: 500px;
		border: 1px solid;
	}
	td,th { 
		border: 1px solid black;
	}
	</style>-->
<%
	Calendar cal = Calendar.getInstance();

	int nowyear = cal.get(Calendar.YEAR);//현재 년도
	int nowmonth = cal.get(Calendar.MONTH) + 1;//현재 달
	
	String fyear = request.getParameter("YEAR");//param으로 넘어온 년도
	String fmonth = request.getParameter("MONTH");//param으로 넘어온 달

	int year = nowyear;// 값이 넘어오지 않으면 오늘 날짜를 지정하기 위해서 초기화는 now변수 애들로
	int month = nowmonth;
	
	//param값이 null이 아니면
	if(fyear != null){
		year = Integer.parseInt(fyear); //value로 넘어오는 값은 모두 String으로 넘어온다
	}
	
	if(fmonth != null){
		month = Integer.parseInt(fmonth);
	}
	//====달력의 year와 month 설정 끝====//
			
			
	cal.set(year,month-1,1);//셋팅 끝난 애들로 날짜객체 다시 셋팅 cal패키지의 month는 원래 숫자달보다 -1로 설정 되어있음. ex.1월은 0
	
	year = cal.get(Calendar.YEAR);
	month = cal.get(Calendar.MONTH) + 1;
	
	int endDay = cal.getActualMaximum(Calendar.DAY_OF_MONTH);//해당 월에 끝나는 날짜
	int week = cal.get(Calendar.DAY_OF_WEEK); //1일이 시작하는 요일 구하기 (그만큼 빈칸 넣기 위함)
%>

<h2><%=year %>년 <%=month %>월</h2>
<hr>
<table class="t1">
	<tr>
		<td style="color: red;">일</td>
		<td>월</td>
		<td>화</td>
		<td>수</td>
		<td>목</td>
		<td>금</td>
		<td style="color: blue;">토</td>
	</tr>
	
	<tr>
		<!-- 날짜가 시작할 때까지 빈칸 넣기 -->
		<%for(int i = 1; i < week;i++){ %>
			<td height="20">&nbsp;</td>
		<%}%>
		
	<%for(int j = 1; j <= endDay; j++){
		week++; //week는 요일 = 일요일부터 1 현재 week = 4++
		if(week % 7 == 2){ //현재로 따지면 week가 5부터 시작하고 => 9일때 줄바꿔서 새로운 줄에 날짜 출력
	%>
	</tr>
	
	<tr>
		<%} //if(week % 7 == 2){ 닫는괄호%>
		
			<%if(week % 7 == 2){ %>
				<td style="color: red;"><%=j%></td>
			<%} else if(week % 7 == 1){ %>
				<td style="color: blue;"><%=j%></td>
			<%}else{ %>
				<td style="color: black;"><%=j%></td>
			<%} 
	}%>
	</tr>
</table>

















