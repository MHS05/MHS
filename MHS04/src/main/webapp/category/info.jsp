<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="../include/head.jsp" %>
<%
String kind = request.getParameter("kind");
if(kind == null) kind = "V"; 
String pno = request.getParameter("pno");
if( pno == null || pno.equals("") )
{
	response.sendRedirect("category.jsp");
	return;
}

String ptitle = "ä��";	//vegetable
if(kind.equals("F")) 		
{
	ptitle = "����"; 		//fruit
}
if(kind.equals("H"))		
{
	ptitle = "�ǰ���ǰ"; 	//healthfood
}
if(kind.equals("S"))		 
{
	ptitle = "����";		//seafood
}
if(kind.equals("M"))		 
{
	ptitle = "����";		//meat
}
CategoryDTO dto = new CategoryDTO();
CategoryVO  vo  = dto.Read(pno);
if( vo == null )
{
	//�ش� �Խù� ��ȣ�� �����Ͱ� ����
	%>
	<script>
		alert("�ش� �Խù��� ��ȸ �� �� �����ϴ�.");
		document.location = "category.jsp";
	</script>
	<%
	return;
}
%>
<style>
	.submenu
	{
	font-size: 20px;
	}
	
	#button
	{
	}
</style>
<script>

function GoBack()
{
	 history.back();
}

</script>
		<table border="0" align="center" width="1200px" height="1000px">
			<tr>
				<td height="60px">
					<div><a href="category.jsp"><font style="font-size: xx-large; font-weight: bold;"><u>ī�װ�</u></font></a></div> 
				</td>
				<td colspan="2"><font style="margin-left:50px; font-size: xx-large; font-weight: bold;"><%=vo.getPname() %></u></font></td>
			</tr>
			<tr>
				<td rowspan="10" width="20%" valign="top">
					<div style="width: 220px; height: 300px; box-shadow: 3px 3px 3px 3px lightgray;"> 
						<table border="0" align="left" width="200px" height="50px">
							<tr height="50px">
							<td class="submenu">
							<image width="30px" height="30px" src="../image/vegetable.png">
							<a href="category.jsp?kind=V">
							<%
							if(kind.equals("V")){
							%>
							<b><u>ä��</u></b>&nbsp;</a></td><%
							}else{
							%>
							<b>ä��</b></a></td><%
							}%>
						</tr>
						<tr height="50px">
							<td class="submenu">
								<image width="30px" height="30px" src="../image/fruit.png">
								<a href="category.jsp?kind=F">
								<%
								if(kind.equals("F")){
								%>
								<b><u>����</u></b></a></td><%
								}else{
								%>
								<b>����</b></a></td><%
								}%>
						</tr>
						<tr height="50px">
							<td class="submenu">
								<image width="30px" height="30px" src="../image/health.png">
								<a href="category.jsp?kind=H">
								<%
								if(kind.equals("H")){
								%>
								<b><u>�ǰ���ǰ</u></b></td><%
								}else{
								%>
								<b>�ǰ���ǰ</b></a></td><%
								}%>
						</tr>
						<tr height="50px">
							<td class="submenu">
								<image width="30px" height="30px" src="../image/fish.png">
								<a href="category.jsp?kind=S">
								<%
								if(kind.equals("S")){
								%>
								<b><u>����</u></b></td><%
								}else{
								%>
								<b>����</b></a></td><%
								}%>
						</tr>
						<tr height="50px">
							<td class="submenu">
								<image width="30px" height="30px" src="../image/meat.png">
								<a href="category.jsp?kind=M">
								<%
								if(kind.equals("M")){
								%>
								<b><u>����</u></b></td><%
								}else{
								%>
								<b>����</b></a></td><%
								}%>
						</tr>
						</table>
					</div>
				</td>
			</tr>
			<tr>
				<td rowspan="6" align="center" width="400px" valign="top">
					<img src="categoryimagedown.jsp?pno=<%= vo.getPno() %>" width="350px" height="500px">
					<div style="margin-top: 30px; margin-left:50px; font-size: x-large; line-height:50px; text-align: left;">
						Į�θ� : <%= vo.getCalorie() %> Kcal <font style="font-size: large;">(100g ��)</font> <br>
						<%
						
						if( !vo.getPtype().equals("M"))
						{
							if( Integer.parseInt(vo.getMonth_start()) <= 12)
							{
							%>
							��ö : <%= vo.getMonth_start() %>�� ~ <%= vo.getMonth_end() %>������ <br> <%
							}
							%>
							ü�� : <%= vo.getPcon() %><br>
							���� : <%= vo.getPgender() %><br>
							���� : <%= vo.getTag_age() %> <%
						}
						%>
					</div>
				</td>
				<td><h2>1.�⺻����</h2></td>
			</tr>
			<tr>
				<td style="height:200px"><b><%=vo.getInfo().replace("\n", "<br>\n") %></b></td>
			</tr>
			<tr>
				<td><h2>2.��������</h2></td>
			</tr>
			<tr>
				<td style="height:200px"><b><%=vo.getTakeinfo().replace("\n", "<br>\n") %></b></td>
			</tr>
			<tr>
				<td><h2>3.���Ÿ�ũ</h2></td>
			</tr>
			<tr>
				<td height="100px">
				<a href=<%=vo.getLink() %> target="_blank" style="font-size:20px;">
				<u>Go to the link �����ø�</u></a>
				</td>
			</tr>
			<tr>
				<td colspan="3" height="50px">
				</td>
			</tr>
			<tr>
				<td colspan="3" align="center">
					<a href="javascript:GoBack();"><span id="span2">���</span></a>
				</td>
			</tr>
		</table>
<%@ include file="../include/tail.jsp" %> 