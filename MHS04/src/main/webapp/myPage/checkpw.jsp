<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "mhs.vo.*" %>
<%@ page import = "mhs.dto.*" %>
<% 
String pw  = request.getParameter("pw");
if( pw == null || pw.equals("") )
{
	out.println("001"); //��й�ȣ�� �Էµ��� ����
	return;
}

UserDTO dto = new UserDTO();

if(dto.CheckPW(pw) == true)
{
	//��й�ȣ�� ����
	out.println("003");
}else
{
	//���� ��й�ȣ
	out.println("002");
}

%>