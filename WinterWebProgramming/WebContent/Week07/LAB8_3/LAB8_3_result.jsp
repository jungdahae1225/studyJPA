<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"  %>
<% request.setCharacterEncoding("UTF-8"); %>
<%! //선언부이다.
	String[] mChoices = {"hobby"};
	String[] hobbyNames = {"뉴스", "맛집", "책", "영화", "여행"};
	String[] telArea = {"010", "080", "070", "02"};
	String[] gNames = {"남", "여"};
	
	ArrayList<String> getParameterNames(HttpServletRequest request){
		int i = 0;
		ArrayList<String> arr = new ArrayList<String>();
		Enumeration<String> en = request.getParameterNames();
		
		while(en.hasMoreElements()){
			String s = en.nextElement();
			arr.add(s);
		}
		return arr;
	}
	
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
<title>LAB8_3</title>
</head>
<body>
<div align="center">
	<table id="t1">
		<tr>
			<td>이름 :</td>
			<td><%=request.getParameter("id")%><br></td>
		</tr>
		<tr>
			<td>직업 :</td>
			<td><%=request.getParameter("pw")%><br></td>
		</tr>
		<tr>
			<td>성별 :</td>
			<td><%=request.getParameter("gen")%><br></td>
		</tr>
		<tr>
			<td>국가 :</td>
			<td><%=request.getParameter("nation")%><br></td>
		</tr>
		
		<tr>
			<td>전화번호1 :</td>
			<td><%=request.getParameter("phone1")%><br></td>
		</tr>
		
		<tr>
			<td>전화번호2 :</td>
			<td><%=request.getParameter("phone2")%><br></td>
		</tr>
		
		<tr>
			<td>전화번호3 :</td>
			<td><%=request.getParameter("phone3")%><br></td>
		</tr>
		
		<tr>
			<td>이메일 :</td>
			<td><%=request.getParameter("email")%><br></td>
		</tr>
		
		<tr>
			<td>생일 :</td>
			<td><%=request.getParameter("birth")%><br></td>
		</tr>
		
		<tr>
			<td>관심분야 :</td>
			<td><!-- 여러개가 넘어오면 배열로 넘어온다. 따라서 넘어오는 값을 받아 줘야 한다. -->
				<%
					String favorites[] = request.getParameterValues("hobby");
					for( int i = 0; i < favorites.length; i++)
						out.print(favorites[i] + "/ ");
						
					//for(String item: favorites)
						//out.print(item + "<br>");
				%>
			</td>
		</tr>
	</table>
	
	<%
		ArrayList<String> list = getParameterNames(request);
		for(String str: list){
			out.println(str + ": ");
			if(isMultipleChoice(str) == true){
				String values[] = request.getParameterValues(str);
				for(String value: values)
					out.print(value + "/ ");
			}
			else
				out.println(request.getParameter(str));
			out.println("<br>");
		}
		out.println("<hr>");
		out.println("<h2> Processing Parameters</h2>");
		
		for(String str:list){
			out.println(str + ":");
			if(isMultipleChoice(str) == true){
				String values[] = request.getParameterValues(str);
				for(String value: values)
					if(str.equals("hobby"))
						out.println(hobbyNames[Integer.parseInt(value)] + "/");
					else
						out.println(value + "/");
			}
			else{
				if(str.equals("gender"))
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