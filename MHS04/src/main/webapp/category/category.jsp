<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="../include/head.jsp" %>
<%
String kind = request.getParameter("kind");
if(kind == null) kind = "V"; 
%>
<script>
var curPageNo = 1;
window.onload = function()
{
	GetImgPage(curPageNo);
	
	$(window).scroll(function(){
		if ($("body").height() <= ($(window).height() + $(window).scrollTop())) 
		{
			//��ũ�ѹٰ� ������â �Ʒ��ʿ� �������
			curPageNo++;
			GetImgPage(curPageNo);
		}			
	});
	
	$("#key").keyup(function (event)
			{
				if (event.keyCode == 13) 
				{
					doSearch();
				}
				
			});
}

function GetImgPage(pageNo)
{
	age     = $("#tag_age").val();
	pgender = $("#tag_pgender").val();
	pcon    = $("#tag_pcon").val();
	key     = $("#key").val();
	
	param   = "age=" + age;
	param  += "&pgender=" + pgender;
	param  += "&pcon=" + pcon;
	param  += "&key=" + key;
	param  += "&kind=<%= kind %>&page=" + pageNo;
	
	$.ajax({
		type : "get",
		url: "impage.jsp?" + param,
		dataType : "html",	
		success : function(data) 
		{		
			data = data.trim();
			if(data != "NODATA")
			{
				$("#imgList").append(data);
			} else
			{
				$("#NoList").html("<td colspan='6' align='center' height='300px'>��ȸ�� �ڷᰡ �����ϴ�.</td>");
			}
		}
	});
}

function doSearch() 
{
	$("#imgList").html("");
	curPageNo = 1;
	GetImgPage(curPageNo);
}

</script>
<style>
	.submenu
	{
		font-size: 20px;
	}
	
	#fixed 
	{
		position: fixed;
		bottom: 10px;
		right: 10px;
		width: 100px;
		padding: 5px;
		color: white;
	}
</style>
<div id="fixed" style="width:50px; height: 50px;">
	<a href="#top"><img style="width:50px; height: 50px;" src="../image/topbutton.png"></a>
</div>
<table border="0" align="center" width="1200px">
	<tr>
		<td height="60px">
			<div><a href="category.jsp"><font style="font-size: xx-large; font-weight: bold;"><u>ī�װ�</u></font></a></div> 
		</td>
		<td align="left" height="60px">
			 <select name="tag_age" id="tag_age" style="width:100px; height:30px;" onchange="doSearch();">
          		   <option value="">����</option>
		           <option value="10��">10��</option>
		           <option value="20��">20��</option>
		           <option value="30��">30��</option>
		           <option value="40��">40��</option>
		           <option value="50��">50��</option>
		           <option value="60��">60��</option>
	         </select>
	         <select name="tag_pgender" id="tag_pgender" style="width:100px; height:30px;" onchange="doSearch();">
	           	   <option value="">����</option>
		           <option value="����">����</option>
		           <option value="����">����</option>
		           <option value="����ҹ�">����ҹ�</option>
	         </select>
	         <select name="tag_pcon" id="tag_pcon" style="width:100px; height:30px;" onchange="doSearch();">
	           	   <option value="">ü��</option>
		           <option value="�¾���">�¾���</option>
		           <option value="������">������</option>
		           <option value="�Ҿ���">�Ҿ���</option>
		           <option value="������">������</option>
	         </select>
	    </td>
	    <td colspan="2" align="right">
	    	<input type="hidden" id="kind" name="kind" value="<%= kind %>">
			<input type="text" id="key" name="key" value="" placeholder="�˻��� �Է�" style="width:150px; height:30px;">
			<input type="button" value="�˻�" style="width:50px; height:30px;" onclick="doSearch();">
		</td>
	</tr>
	<tr>
		<td rowspan="4" width="20%" valign="top" >
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
	<tr>
		<td colspan="4">
			<table style="width:100%;">
				<tr>
					<td>		 	
						<table border="0" style="width:100%;" id="imgList">				
						</table>							
					</td>
				</tr>	
			</table>
		</td>
	</tr>
	<tr id="NoList">
	</tr>
</table>
<%@ include file="../include/tail.jsp" %> 