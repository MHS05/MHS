<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="mhs.dto.UserDTO"%>
<%@page import="mhs.vo.UserVO"%>
<%
String name = request.getParameter("name");

UserDTO dto = new UserDTO();

if( name == null || name.equals("") )
{
	out.println("001"); //�̸��� �Էµ��� �ʾҽ��ϴ�.
	return;
}

if( dto.CheckName(name) == true)
{
	//�ִ� �̸�
	UserVO vo = dto.readname(name);
	String result = vo.getId();
	out.print(result);
} 
else
{
	//���� �̸�
	out.println("002");
}
%>
