<%@page import="mhs.dto.*"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%

String uno      = request.getParameter("uno");
String nick     = request.getParameter("nick");
String isretire = request.getParameter("isretire");

UserDTO dto = new UserDTO();


if(dto.membermodify(uno, nick, isretire) == true)
{	//������
	out.println("001");
} else
{	//�����ȵ�
	out.println("002");
}
%>