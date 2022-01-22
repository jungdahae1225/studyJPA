<!-- 20190356 컴퓨터학과 정다해 => 크롬으로 실행하였습니다. -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Calendar"%>
<%@ page import="java.time.LocalDateTime, java.time.LocalDate" %>
   
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LAB5_2</title>
</head>
<body>
	<%
		Calendar cal = Calendar.getInstance(); //Calendar클래스 객체를 생성하면 오늘날짜가 기준날짜로 설정됨
		int year = cal.get(Calendar.YEAR);
		int month = cal.get(Calendar.MONTH) + 1;
		int date = cal.get(Calendar.DATE);
		int day = cal.get(Calendar.DAY_OF_WEEK); //요일
		
		String strday = "";
		switch(day){ //일요일이 1
			case 1: strday="일";break;
			case 2: strday="월";break;
			case 3: strday="화";break;
			case 4: strday="수";break;
			case 5: strday="목";break;
			case 6: strday="금";break;		 	
			case 7: strday="토";break;
		}
		
		cal.set(2021, Calendar.DECEMBER, 1); //이번 달은 12월 - 기준날짜 다시 조정
		int start = cal.getMinimum(Calendar.DATE);
		int end = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
		int startDay = cal.get(Calendar.DAY_OF_WEEK);
		
		cal.set(2020, Calendar.JANUARY, 23); //코로나가 시작된 날 - 기준날짜 다시 조정
		 
		int coday = cal.get(Calendar.DAY_OF_WEEK); //요일구하기
		
		strday = "";
		switch(coday){
			case 1: strday="일";break;
			case 2: strday="월";break;
			case 3: strday="화";break;
			case 4: strday="수";break;
			case 5: strday="목";break;
			case 6: strday="금";break;		 	
			case 7: strday="토";break;
		}
		 
	 %>
	 
	 <p>오늘은 <%=year %>년 <%=month %>월 <%=date %>일 <%=strday %>요일입니다</p>
	 <p>이번달은 <%=start %>일부터 시작하여 <%=end %>일에 끝납니다.</p>
	 <p>코로나 시작은 2020년 1월23일은 <%=strday %>요일입니다</p>
</body>
</html>