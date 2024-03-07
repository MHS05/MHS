<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.*" %>    
<%@ page import="java.io.*" %>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ include file="../include/head.jsp"%>
<%@ include file="../common/common.jsp" %> 
<%
//���ε尡 ������ �ִ� ���� ũ�⸦ �����Ѵ�.
int size = 10 * 1024 * 1024;

MultipartRequest multi = new MultipartRequest(request,uploadPath,size,
		"euc-kr",new DefaultFileRenamePolicy());

String title = multi.getParameter("title");
String type  = multi.getParameter("type");
String note  = multi.getParameter("note");
String image = (String)multi.getFilesystemName("image"); //����
String phyimage = ""; //������
String fname = (String)multi.getFilesystemName("attach"); //����
String phyname = ""; //������


if (image != null)
{
	//������ ������ �̸����� �����Ѵ�.
	phyimage = UUID.randomUUID().toString();
	
	//���� �̸� ����
	String orgImage = uploadPath + "\\" + image;
	String newImage = uploadPath + "\\" + phyimage;
	
	File srcFile    = new File(orgImage);
	File targetFile = new File(newImage);
	srcFile.renameTo(targetFile);
	
	out.println("���� ���ϸ� : " + orgImage + "<br>");
	out.println("�ٲ� ���ϸ� : " + newImage + "<br>");
}

if(fname != null)
{
	//������ ������ �̸����� �����Ѵ�.
	phyname = UUID.randomUUID().toString();
	
	//���� �̸� ����
	String orgName = uploadPath + "\\" + fname;
	String newName = uploadPath + "\\" + phyname;
	
	File srcFile    = new File(orgName);
	File targetFile = new File(newName);
	srcFile.renameTo(targetFile);
	
	out.println("���� ���ϸ� : " + orgName + "<br>");
	out.println("�ٲ� ���ϸ� : " + newName + "<br>");
}

CommunityVO vo = new CommunityVO();
vo.setId(loginVO.getId());
vo.setTitle(title);
vo.setUno(loginVO.getUno());
vo.setType(type);
vo.setNote(note);
if(image != null)
{
	vo.setImage(image);
	vo.setPhyimage(phyimage);
}
if(fname != null)
{
	vo.setFname(fname);
	vo.setPhyname(phyname);
}

CommunityDTO dto = new CommunityDTO();
dto.Insert(vo);

response.sendRedirect("adminnview.jsp?no=" +vo.getNo());
%>


