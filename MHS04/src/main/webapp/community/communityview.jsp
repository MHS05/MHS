<%@ page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="../include/head.jsp" %>
<%
String kind = request.getParameter("kind");
if(kind == null) kind = "F";
String no = request.getParameter("no");
if( no == null || no.equals("") )
{
	response.sendRedirect("communitylist.jsp");
	return;
}

String page_no = request.getParameter("page");
if(page_no == null || page_no.equals("")) page_no = "";

String btitle = "�����Խ���";
if(kind.equals("TY"))
{
	btitle = "�¾��ΰԽ���";
}
if(kind.equals("TE"))
{
	btitle = "�����ΰԽ���";
}
if(kind.equals("SY"))
{
	btitle = "�Ҿ��ΰԽ���";
}
if(kind.equals("SE"))
{
	btitle = "�����ΰԽ���";
}

CommunityDTO dto = new CommunityDTO();
CommunityVO  vo  = dto.Read(no, true);
if( vo == null )
{
	//�ش� �Խù� ��ȣ�� �����Ͱ� ����
	%>
	<script>
		alert("�ش� �Խù��� ��ȸ �� �� �����ϴ�.");
		document.location = "communitylist.jsp";
	</script>
	<%
	return;
}
%>
<script>

window.onload = function() 
{
	$("#rnote").keyup(function (e){
	   var content = $(this).val()
	   length = content.length;
	   $("#rcount").html(length);
	});
}


function DoDelete()
{
	if( confirm("�ش� �Խù��� ���� �Ͻðڽ��ϱ�?") == 0)
	{
		return;	
	}
	document.location = "communitydelete.jsp?kind=<%=kind %>&no=<%= no %>";
}

//��� ���
function AddReply()
{
	if( $("#rnote").val() == "" )
	{
		alert("����� �Է��ϼ���.");
		$("#rnote").focus();
		return;
	}
	
	$.ajax({
		type : "post",
		url: "addreply.jsp",
		data :
		{
			no : "<%= no %>",
			rnote : $("#rnote").val()
		},		
		dataType : "html",	
		success : function(data) 
		{
			data = data.trim();
			alert(data);
			document.location = "communityview.jsp?no=<%= no %>";
		}				
	});		
}
//��ۻ���
function DeleteReply(rno)
{
	if(confirm("�ش� ����� �����Ͻðڽ��ϱ�?") == false)
	{
		return;	
	}	
	$.ajax({
		type : "get",
		url: "delreply.jsp?rno=" + rno,
		dataType : "html",	
		success : function(data) 
		{
			data = data.trim();
			alert(data);
			document.location = "communityview.jsp?no=<%= no %>";
		}
	});	
}

//��� ����
function ModifyReply(rno)
{
	if(confirm("�ش� ����� �����Ͻðڽ��ϱ�?") == false)
	{
		return;	
	} else 
	{
		$("#"+rno+"myrnote").css('display', 'none');
		$("#"+rno+"myrdate").css('display', 'none');
		$("#"+rno).css('display', '');
		$("#"+rno+"readd").css('display', '');
		$("#rnoteModify").focus();
	}
}

function modifyCancel(rno)
{
		$("#"+rno).css('display', 'none');
		$("#"+rno+"readd").css('display', 'none');
		$("#"+rno+"myrnote").css('display', '');
		$("#"+rno+"myrdate").css('display', '');
}

function ReAddReply(rno)
{
	if( $("#rnoteModify").val() == "" )
	{
		alert("����� �Է��ϼ���.");
		$("#rnoteModify").focus();
		return;
	}
	
	$.ajax({
		type : "post",
		url: "modifyreply.jsp",
		data :
		{	
			no : "<%= no %>",
			rno : rno,
			rnote : $("#rnoteModify").val()
		},		
		dataType : "html",	
		success : function(data) 
		{
			data = data.trim();
			alert(data);
			document.location = "communityview.jsp?no=<%= no %>";
		}				
	});		
}


</script>
<style>
	.submenu
	{
	font-size: 20px;
	}
	
	#listbutton
	{	
		width:100px;
		height:30px; 
		font-size:15px;
		cursor:pointer;
		background-color:#4dd5b0;
		border:0;
		border-radius: 5px;
	}
	#deletebutton
	{	
		width:60px;
		height:30px; 
		font-size:15px;
		cursor:pointer;
		background-color:lightgray;
		border:0;
		border-radius: 5px;
	}
	#modifybutton
	{	
		width:60px;
		height:30px; 
		font-size:15px;
		cursor:pointer;
		background-color:lightgray;
		border:0;
		border-radius: 5px;
	}
	
	#readdbutton
	{	
		width:50px;
		height:25px; 
		cursor:pointer;
		background-color:#4dd5b0;
		border:0;
		border-radius: 5px;
	}
	
	#remodifybutton
	{	
		width:50px;
		height:25px; 
		cursor:pointer;
		background-color:lightgray;
		border:0;
		border-radius: 5px;
	}

	#redeletebutton
	{	
		width:50px;
		height:25px; 
		cursor:pointer;
		background-color:lightgray;
		border:0;
		border-radius: 5px;
	}
	
	td {word-break:break-all; word-wrap:break-word;}
</style>
		<table border="0" align="center" width="1200px">
			<tr>
				<td rowspan="26" width="20%" valign="top">
					<div><a href="communitylist.jsp"><h1><u>Ŀ�´�Ƽ</u></h1></a></div> 
					<div style="width: 220px; height: 300px; box-shadow: 3px 3px 3px 3px lightgray;">
						<table border="0" align="left" width="200px" height="50px">
							</tr>
							<tr height="50px">
								<td class="submenu">
								<image width="30px" height="30px" src="../image/free.png">
								<a href="communitylist.jsp?kind=F" >
								<%
								if(kind.equals("F")){
								%>
								<b><u>�����Խ���</u></b></a></td><%
								}else{
								%>
								<b>�����Խ���</b></a></td><%
								}%>
							</tr>
							<tr height="50px">
								<td class="submenu">
								<image width="30px" height="30px" src="../image/ty.png">
								<a href="communitylist.jsp?kind=TY">
								<%
								if(kind.equals("TY")){
								%>
								<b><u>�¾��ΰԽ���</u></b></a></td><%
								}else{
								%>
								<b>�¾��ΰԽ���</b></a></td><%
								}%>
							</tr>
							<tr height="50px">
								<td class="submenu">
								<image width="30px" height="30px" src="../image/te.png">
								<a href="communitylist.jsp?kind=TE">
								<%
								if(kind.equals("TE")){
								%>
								<b><u>�����ΰԽ���</u></b></a></td><%
								}else{
								%>
								<b>�����ΰԽ���</b></td><%
								}%>
							</tr>
							<tr height="50px">
								<td class="submenu">
								<image width="30px" height="30px" src="../image/sy.png">
								<a href="communitylist.jsp?kind=SY">
								<%
								if(kind.equals("SY")){
								%>
								<b><u>�Ҿ��ΰԽ���</u></b></a></td><%
								}else{
								%>
								<b>�Ҿ��ΰԽ���</b></td><%
								}%>
							</tr>
							<tr height="50px">
								<td class="submenu">
								<image width="30px" height="30px" src="../image/se.png">
								<a href="communitylist.jsp?kind=SE">
								<%
								if(kind.equals("SE")){
								%>
								<b><u>�����ΰԽ���</u></b></a></td><%
								}else{
								%>
								<b>�����ΰԽ���</b></td><%
								}%>
							</tr>
						</table>
					</div>
				</td>
				<td colspan="5" height="50px"><a href="communitylist.jsp?kind=<%= kind %>"><h2><%= btitle %></h2></a></td>
			</tr>
			<tr>
				<td colspan="5" height="20px"><hr></td>
			<tr>
			<tr>
				<td colspan="5" height="50px"><h2><%= vo.getTitle() %></h2></td>
			</tr>
			<tr>
				<td colspan="3" align="left" height="20px">�ۼ��� : <%= vo.getNickname() %></td>
				<td colspan="1" align="right" width="200px" height="20px">|&nbsp;��ȸ�� : <%= vo.getHit() %>ȸ&nbsp;&nbsp;|</td>
				<td colspan="1" align="center" width="220px"height="20px">�ۼ��� : <%= vo.getWdate() %></td>
			</tr>
			<tr>
				<td colspan="5" height="20px"><hr></td>
			<tr>
			<tr>
				<td colspan="5"  valign="top">
				<%
				if( vo.getImage() != null && !vo.getImage().equals("") )
				{
					%>
						<img style="width:40%;height:40%;" src="imagedown.jsp?no=<%= no %>"><br>
						<%= vo.getNote().replace("\n","<br>\n") %>	
					<%
				}else
				{
					%>
						<%= vo.getNote().replace("\n","<br>\n") %>
					<%
				}
				%>
				</td>
			</tr>
			<tr>
				<td colspan="5" align="right" height="20px">
				<%
				if(loginVO != null && loginVO.getId().equals(vo.getId()))
				{
					%>
					<a href="communitymodify.jsp?kind=<%=kind %>&no=<%= no %>&uno=<%= loginVO.getUno() %>"><input type="button" id="modifybutton" value="����"></a>&nbsp;
					<a href="javascript:DoDelete();"><input type="button" id="deletebutton" value="����" style="background-color: #FD7064;"></a>
					<%
				}
				%>
				</td>
			<tr>
			<tr>
				<td colspan="5" height="20px"><hr></td>
			<tr>
			<tr>
				<td colspan="5" width="100px" height="20px" align="left">÷������ : 
				<%
				if( vo.getFname() != null && !vo.getFname().equals("") )
				{
					%><a href="down.jsp?no=<%= no %>"><%= vo.getFname() %></a><%
				}else
				{
					%>��ϵ� ÷�������� �����ϴ�.<%
				}
				%>
				</td>
			</tr>
			<tr>
				<td colspan="5" height="5px"><hr></td>
			</tr>
		<tr>
		<td colspan="5" valign="top">
		<table width="100%" border="0">
			<tr>
			<%
			if( loginVO != null)
			{
				%>
				<tr>
					<td align="center" style="width:200px; height:30px; background-color:lightgrey;">
					<%= loginVO.getNickname() %>
					</td>
					<br>
					<td colspan="3" width="400px"><input type="text" id="rnote" name="rnote" maxlength="50" style="width:99%; height: 25px" placeholder="����� �Է����ּ��� (50�� ����)"></td>
					<td align="right">
					<font style="color:gray; font-size: 12px">
						<div style="float:left ; width:25px; background-color: white;">
							<span id="rcount" style="cursor:default;padding: 0px 0px;  margin-right:7px; background-color: white;">0</span><br>
							<span style="cursor:default; padding: 0px 0px; margin-right:0px; background-color: white;">/ 50</span>
						</div>
					</font>
						<input type="button" id="readdbutton" onclick="AddReply();" value="���">&emsp;&nbsp;
					</td>
				</tr>
				<%
			}
			ReplyDTO rdto = new ReplyDTO();
			ArrayList<ReplyVO> rlist = rdto.GetList(no);
			
			for(ReplyVO rvo : rlist)
			{
				String rno   	 = rvo.getRno();
				String rid   	 = rvo.getId();
				String rname 	 = rvo.getName();
				String rnote     = rvo.getRnote();
				String rdate     = rvo.getRdate();
				String rnickname = rvo.getNickname();
				%>
				<tr>
					<td align="center" width="200px"><%= rnickname %></td>
					<td id="<%= rno %>" colspan="3" style="display: none"><!-- ������ư ������ ���� -->
						<input type="text" id="rnoteModify" name="rnoteModify" style="width:99%; height: 25px" value="<%= rvo.getRnote()%>">
					</td>
					<td id="<%= rno %>readd" align="left" style="display: none">
						<input type="button" id="readdbutton" onclick="ReAddReply('<%= rno %>');" value="����">
						<input type="button" id="redeletebutton" onclick="modifyCancel('<%= rno %>');" value="���">
					</td>
					<td id="<%= rno %>myrnote" colspan="3"><%= rnote %> <!-- ������ư ������ ����� -->
				    <%
					if(loginVO != null && loginVO.getId().equals(rid))
					{
						%> 			
							[ <a href="javascript:ModifyReply('<%= rno %>')"><ins>����</ins></a> ]
							[ <a href="javascript:DeleteReply('<%= rno %>')"><ins>����</ins></a> ]
						<%
					}
					%>
					</td>
					<td id="<%= rno %>myrdate" width="110px" align="left"><%= rdate %></td>
				</tr>	
				<%
			}
			%>
			<tr>
				<td align="center" colspan="5" height="100px">
				<a href="communitylist.jsp?kind=<%= kind %>&page=<%= page_no %>"><input type="button" id="listbutton" value="���" style="background-color:#4dd5b0;"></a>
				</td>
			</tr>
		</table>
		</td>
		</tr>
		</table>
	</body>
<%@ include file="../include/tail.jsp" %>