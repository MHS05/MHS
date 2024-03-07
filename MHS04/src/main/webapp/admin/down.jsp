<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="../common/common.jsp" %> 
<%@ page import="java.io.*" %>
<%@ page import="java.net.*" %> 
<%@ page import="mhs.vo.*" %> 
<%@ page import="mhs.dto.*" %>   
<%
String no = request.getParameter("no");
if( no == null || no.equals("") )
{
	response.sendRedirect("adminnlist.jsp");
	return;
}

CommunityDTO dto = new CommunityDTO();
CommunityVO  vo  = dto.Read(no, false);
if( vo == null )
{
	response.sendRedirect("adminnlist.jsp");
	return;	
}

String phyname = vo.getPhyname();
String fname   = vo.getFname();

//÷�������� �ϵ��ũ���� �о �������� �����Ѵ�.
String fileName = uploadPath + "\\" + phyname;
//out.println(fileName);

//�������� ���ϸ��� ������.
fname = URLEncoder.encode(fname,"utf-8");	//
//System.out.println(fname);
response.setContentType("application/octet-stream");   //
response.setHeader("Content-Disposition","attachment; filename=" + fname);	//

File file = new File(fileName);
FileInputStream fileIn = new FileInputStream(file);
ServletOutputStream ostream = response.getOutputStream();

byte[] outputByte = new byte[4096];
//copy binary contect to output stream
while(fileIn.read(outputByte, 0, 4096) != -1)
{
	ostream.write(outputByte, 0, 4096);
}
fileIn.close();
ostream.flush();
ostream.close();
%>