<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="../include/head.jsp" %>
<script type="text/javascript" src="../se2/js/service/HuskyEZCreator.js" charset="utf-8"></script>
<%
String kind = request.getParameter("kind");
if(kind == null) kind = "F";
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

if( loginVO == null)
{	
	//�α��� ���� ���� ��� ó��
	response.sendRedirect("communitylist.jsp");
	return;
}
%>
<script>
	window.onload = function()
	{
		$("#title").focus();
	}
	
	function DoWrite()
	{	
		if($("#title").val() == "")
		{
			alert("������ �Է��ϼ���.")
			$("#title").focus();
			return false;
		}
		
		if($("#note").val() == "")
		{
			alert("������ �Է��ϼ���.")
			$("#note").focus();
			return false;
		}
		
		if(confirm("�Խù��� ����Ͻðڽ��ϱ�?") == 0)
		{
			return false;
		}
		return true;
	}
	
$(document).ready(function()
{
  var fileTarget = $('.filebox .upload-hidden');

  fileTarget.on('change', function(){  // ���� ����Ǹ�
    if(window.FileReader){  // modern browser
      var filename = $(this)[0].files[0].name;
    } 
    else {  // old IE
      var filename = $(this).val().split('/').pop().split('\\').pop();  // ���ϸ� ����
    }
    
    // ������ ���ϸ� ����
    $(this).siblings('.upload-name').val(filename);
  });
}); 
</script>
<style>
	.submenu
	{
	font-size: 20px;
	}
	.btn-upload 
	{	
		width: 130px;
		height: 30px;
		background: #fff;
		border: 1px solid rgb(77,77,77);
		border-radius: 10px;
		font-weight: 200;
		cursor: pointer;
		display: flex;
		align-items: center;
		justify-content: center;
		&:hover 
		{
			background: rgb(77,77,77);
			color: #fff;
		}
	}
	
	#image {
	  display: none;
	}
	
	#submitbutton
	{	
		width:100px;
		height:30px; 
		font-size:15px;
		cursor:pointer;
		background-color:#4dd5b0;
		border:0;
		border-radius: 5px;
	}
	
	#cancelbutton
	{	
		width:100px;
		height:30px; 
		font-size:15px;
		cursor:pointer;
		background-color:lightgray;
		border:0;
		border-radius: 5px;
	}
</style>
<script>
window.onload=function()
{
	target=document.getElementById('image'); // file ���̵� ����
	target.addEventListener('change',function(){ // change �Լ�
		
		if(target.value.length){ // ���� ÷���� �����ϰ�� ���ϸ� ���
			$('#originName').html("<ins>"+target.files[0].name+"</ins>");
		}else{ //��ư Ŭ���� ���(���� ÷�� ���� ���)�Ҷ� ���ϸ� �Ⱥ��̰�
			$('#originName').html("");
		}
		
	});
}

function check() 
{	
	oEditors.getById["ir1"].exec("UPDATE_CONTENTS_FIELD", []);  
	//����Ʈ ������ ���� �ؽ�Ʈ�������� ����
	$("#write").submit();
}

</script>
		<form id="write" name="write" method="post" action="communitywriteok.jsp" enctype="multipart/form-data" onsubmit="return DoWrite();">
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
				<td colspan="4" height="50px"><h2><%= btitle %></h2></td>
			</tr>
			<tr>
				<td colspan="4" height="20px"><hr></td>
			<tr>
			<tr>
				<td colspan="4" height="50px"><h2>�ر۾���</h2></td>
			</tr>
			<tr>
				<td width="80px" height="50px">���� :</td>
				<td colspan="3"><input type="text" id="title" name="title" style="width:700px;height:30px;"></td>
			</tr>
			<tr>
				<td height="55px">���� :</td>
				<td width="320px">
					<select name="type" style="width:300px;height:30px;">
						<option id="type" name="type" value="F"  <%= kind.equals("F") ? "selected" : "" %>>�����Խ���</option>
						<option id="type" name="type" value="TY" <%= kind.equals("TY") ? "selected" : "" %>>�¾��ΰԽ���</option>
						<option id="type" name="type" value="TE" <%= kind.equals("TE") ? "selected" : "" %>>�����ΰԽ���</option>
						<option id="type" name="type" value="SY" <%= kind.equals("SY") ? "selected" : "" %>>�Ҿ��ΰԽ���</option>
						<option id="type" name="type" value="SE" <%= kind.equals("SE") ? "selected" : "" %>>�����ΰԽ���</option>
					</select>
				</td>
				<td width="135px">
					<label for="image">
					  <span class="btn-upload" style="padding: 0px 0px">�̹��� ���ε�</span>
					</label>
					<input type="file" name="image" id="image" accept="image/*">
				</td>
				<td>
					<p id="originName" style="display : inline-block"></p>
				</td>
			</tr>
			<tr>
				<td valign="top" height="200px">���� :</td>
				<td valign="top" colspan="3">
					<textarea name="ir1" id="ir1" rows="10" cols="100">�����Ϳ� �⺻���� ������ ��(���� ���)�� ���ٸ� �� value ���� �������� �����ø� �˴ϴ�.</textarea>
					<script id="smart" type="text/javascript">
						var oEditors = [];
						nhn.husky.EZCreator.createInIFrame({
						 oAppRef: oEditors,
						 elPlaceHolder: "ir1",
						 sSkinURI: "../se2/SmartEditor2Skin.html",
						 fCreator: "createSEditor2"
						});
					</script>
				</td>
			</tr>
			<tr>
				<td height="50px">÷������ :</td>
				<td colspan="3"><input id="attach" name="attach" type="file"></td>
			</tr>
			<tr>
				<td colspan="4" align="center" height="20px">
					<input type="button" id="submitbutton" onclick="check();" value="���" style="background-color:#4dd5b0;">&nbsp;
					<a href="communitylist.jsp"><input type="button" id="cancelbutton" value="���"></a>
				</td>
			</tr>
		</table>
		</form>
	</body>
<%@ include file="../include/tail.jsp" %>