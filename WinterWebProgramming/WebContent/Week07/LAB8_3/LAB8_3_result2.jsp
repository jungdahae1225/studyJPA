<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"  %>
<% request.setCharacterEncoding("UTF-8"); %>
<%! //선언부이다.
	String[] mChoices = {"hobby"};
	String[] hobbyNames = {"뉴스", "맛집", "책", "영화", "여행"};
	String[] telArea = {"010", "080", "070", "02"};
	String[] gNames = {"남", "여"};
	
	ArrayList<String> getParameterNames(HttpServletRequest request){ //getParameterNames를 재정의 한 것이다.
		int i = 0;
		ArrayList<String> arr = new ArrayList<String>();
		Enumeration<String> en = request.getParameterNames();//getParameterNames()로 return 되는 것이 Enumeration타입의 배열이다.
		
		//getParameterNames()로 넘어온 값들을 ArrayList 배열로 만들어주는 것이다.
		while(en.hasMoreElements()){
			String s = en.nextElement();
			arr.add(s);
		}
		return arr; //arr에는 변수명들이 들어가 있다.
	}
	
	//여러개 지정인 경우를 골라내기 위함
	boolean isMultipleChoice(String paramName){
		for(int i = 0; i < mChoices.length; i++){
			if(paramName.equals(mChoices[i]))
				return true;
		}
		return false;
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LAB8_3_교수님 결과 화면</title>
</head>
<body>
<div align="center">
	<%
		ArrayList<String> list = getParameterNames(request); //위에서 재정의한 getParameterNames에 해당 페이지로 넘어온 응답을 매개변수로 넣는다.
		
		//==================실제값X 넘어온 value으로만 출력=======================//
		//getParameterNames에서 return되는 arr안에 변수들의 이름이 저장되어있다.
		for(String str: list){ //파라미터 값을 그 줄의 제목으로 
			out.println(str + ": ");
			if(isMultipleChoice(str) == true){ //만일 중복값으로 넘어오는 데이터라면
				String values[] = request.getParameterValues(str);//getParameterValues로 받아온다.
				for(String value: values)
					out.print(value + "/ ");
			}
			else
				out.println(request.getParameter(str)); //중복으로 넘어오는 값이 아니면 getParameter로 받아와라
			out.println("<br>");
		}
		
		//==================실제값 출력 with 배열=======================//
		out.println("<hr>");
		out.println("<h2> Processing Parameters</h2>");
		
		for(String str:list){
			out.println(str + ":");//파라미터 값을 그 줄의 제목으로 
			if(isMultipleChoice(str) == true){//만일 중복값으로 넘어오는 데이터라면
				String values[] = request.getParameterValues(str);//getParameterValues로 받아온다."String형 배열로 넘어온다"
				for(String value: values)
					if(str.equals("hobby")) //중복으로 넘어오는 값의 변수 파라미터가 hobby라면
						out.println(hobbyNames[Integer.parseInt(value)] + "/");
					else
						out.println(value + "/");
			}
			else{//중복으로 넘어오는 값이 아니면 getParameter로 받아와라
				if(str.equals("gender")) //중복으로 넘어오는 값의 변수 파라미터가 "gender라면
					out.println(gNames[Integer.parseInt(request.getParameter(str))] + "/");
				else if(str.equals("phone1"))
					out.println(telArea[Integer.parseInt(request.getParameter(str))] + "/");
				else
					out.println(request.getParameter(str));
				out.println("<br>");
			}
		}
	%>
</div>	
</body>
</html>