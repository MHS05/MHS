<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="mhs.vo.*" %> 
<%@ page import="mhs.dto.*" %> 
<%
String no   	= request.getParameter("no");
String rno		= request.getParameter("rno");
String rnote	= request.getParameter("rnote");
UserVO loginVO  = (UserVO)session.getAttribute("login");

if(loginVO == null)
{
	out.println("�α������� ���� ������Դϴ�.");
	return;
}

//out.println("��۳���:" + rnote);
ReplyVO vo = new ReplyVO();
vo.setNo(no);
vo.setRno(rno);
vo.setRnote(rnote);

ReplyDTO dto = new ReplyDTO();
dto.Update(vo);

out.println("����� �����Ͽ����ϴ�.");
%>