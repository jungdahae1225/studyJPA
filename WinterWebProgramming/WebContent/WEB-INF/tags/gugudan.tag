<%@ tag language="java" pageEncoding="UTF-8"%>
<!-- 컴퓨터학과 20190356 정다해 크롬 -->
<style>
	table {
		border: 1px solid;
	}
	td,th { 
		border: 1px solid black;
	}
	td{width: 100px}
</style>
<h2><jsp:doBody/></h2>
<hr>
	<form>
		<table>
			<tr>
				<%
					for(int i = 2 ; i < 6 ; i ++){
						out.print("<td>");
						for(int j = 1 ; j < 10 ; j ++){
							out.print( i + " * " + j + " = " + (i * j) +"<br>");
						}
						out.print("</td>");
					}
				%>
			</tr>
			
			<tr>
				<%
					for(int i = 6 ; i < 10 ; i ++){
						out.print("<td>");
						for(int j = 1 ; j < 10 ; j ++){
							out.print( i + " * " + j + " = " + (i * j) +"<br>");
						}
						out.print("</td>");
					}
				%>
			</tr>
		</table>
	</form>