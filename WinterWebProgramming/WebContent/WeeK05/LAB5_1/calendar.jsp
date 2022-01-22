<!-- 20190356 컴퓨터학과 정다해 => 크롬으로 실행하였습니다. -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String week[] = {"월","화","수","목","금","토","일"};
	String color[] = {"red","black","black","green","black","black","blue"};
	out.print("<table class='t1'>");
	out.print("<tr>");
	
	for(int i =0; i < 7; i++) //td는 가운데 정렬이 안된다. th는 가운데 정렬, 굵은 글씨
		out.print("<th style='color:" + color[i] + ";'>" + week[i] +"</th>");
	//css는 항상 ;로 끝나야 한다. 주의
	out.print("</tr>");
	
	
	for(int i = 0 ; i < 5 ; i++){//줄
		out.print("<tr>");
		for(int j = 0 ; j < 7 ; j++)//칸
			out.print("<td> &nbsp; </td>"); //제목이 아니라서 굵지 않아도 됨
		out.print("</tr>");	
	}
	out.print("</table>");
	
%>
