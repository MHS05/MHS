<%@page import="mhs.dto.CommunityDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%
request.setCharacterEncoding("EUC-KR");
String uno = request.getParameter("uno");
String[] delNo = request.getParameterValues("delNo");

CommunityDTO dto = new CommunityDTO();

for(String no : delNo)
{
	if( !no.equals("selectall"))
	{
		dto.Delete(no);
	}
}


if(uno == null || uno.equals(""))
{
	%>
	<script>
		alert("�����Ǿ����ϴ�.")
		document.location.href = "userRlist.jsp";
	</script>
	<%
} else
{	
	%>
	<script>
		alert("�����Ǿ����ϴ�.")
		document.location.href = "userRlist.jsp?uno=<%= uno %>";
	</script>
	<%
}
%>