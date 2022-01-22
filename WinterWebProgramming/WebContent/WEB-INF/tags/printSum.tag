<%@ tag language="java" pageEncoding="UTF-8"%>
<!-- 태그 속성 만들기 -->
<%@ attribute name="border"%>
<%@ attribute name="textcolor"%>

<%
	int sum = 0;
	for(int i = 0; i <= 100; i++){
		sum += i;
	}
%>
<table>

	<tr>
		<td style="color:<%= session.getAttribute("color")%>; boder: <%= session.getAttribute("border")%>">1부터 100까지의 합: <%=sum %> </td>
	</tr>
</table>

