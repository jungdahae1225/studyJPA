<!-- 20190356 컴퓨터학과 정다해 => 크롬으로 실행하였습니다. -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>    

<jsp:useBean id="addr" class="week11.AddrBean" scope="page"/>    
<!-- scope을 application으로 주면 톰캣을 종료하지 않으면 데이터 지속됨. -->
<jsp:setProperty property="*" name="addr"/>

<jsp:useBean id="am" class="week11.AddrManager" scope="application"/>    
<%
	am.add(addr);//전체 주소록에 한 번 추가
	
	//================그룹별로 저장하기===================//
	if(addr.getGroup().equals("가족"))
		am.add_family(addr);
	if(addr.getGroup().equals("친구"))
		am.add_friend(addr);
	if(addr.getGroup().equals("직장"))
		am.add_company(addr);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>addr_add.jsp</title>
</head>
<style>
table {
		text-align: center;
	}
</style>
<body>
<div align=center>
	<h2>등록내용</h2>
	
	<table>
		<tr>
			<td>이름 : <%=addr.getUsername() %></td>
		</tr>
		
		<tr>		
			<td>전화번호 : <%=addr.getTel() %></td>
		</tr>
		
		<tr>
			<td>이메일 : <%=addr.getEmail() %></td>
		</tr>
		
		<tr>
			<td>성별 : <%=addr.getSex() %> 그룹 : <%=addr.getGroup() %></td>
		</tr>

	</table>
	<hr>
	
	<a href="addr_list.jsp">전체 목록보기</a> &nbsp; <a href="addr_list_group.jsp">그룹별 목록보기</a>
</div>
</body>
</html>