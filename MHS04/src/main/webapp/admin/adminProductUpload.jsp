<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="../admininclude/head.jsp" %> 
<%
if( loginVO == null)
{	
	//�α��� ���� ���� ��� ó��
	response.sendRedirect("../category/category.jsp");
	return;
}

String kind = request.getParameter("kind");
if(kind == null) kind = "V";

%>
<script>
window.onload = function()
{
	$("#title").focus();
}

function setThumbnail(event) {
	
	$("#btn-upload").css('display','none')
	
    var reader = new FileReader();

    reader.onload = function(event) {
      var img = document.createElement("img");
      img.style.width = '250px';
      img.style.height = '300px';
      img.setAttribute("src", event.target.result);
      document.querySelector("td#upload").appendChild(img);
    };
	
    reader.readAsDataURL(event.target.files[0]);
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


</script>
<style>
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
		height:50px; 
		font-size:17px;
		cursor:pointer;
		background-color:#4dd5b0;
		border:0;
		border-radius: 5px;
	}
	
	#cancelbutton
	{	
		width:100px;
		height:50px; 
		font-size:17px;
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
</script>
	<form name="upload" method="post" action="adminProductUploadok.jsp" enctype="multipart/form-data" onsubmit="return DoWrite();">
		<tr>
			<td colspan="12"><h2><b>��ǰ���</b></h2><hr></td>
		</tr>
		<tr>
			<td rowspan="7" align="center" id="upload" width="260px" height="310px">
				<label for="image">
					<span class="btn-upload" id="btn-upload" style="padding: 0px 0px" >�̹��� ���ε�</span>
				</label>
				<input type="file" name="image" id="image" accept="image/*" onchange="setThumbnail(event);">
			</td>
		</tr>
		<tr>
			<td colspan="1">����</td>
			<td colspan="1">
				<select name="ptype">
					<option value="">ī�װ�</option>
					<option value="V" <%= kind.equals("V") ? "selected" : "" %>>ä��</option>
					<option value="F" <%= kind.equals("F") ? "selected" : "" %>>����</option>
					<option value="H" <%= kind.equals("H") ? "selected" : "" %>>�ǰ���ǰ</option>
					<option value="S" <%= kind.equals("S") ? "selected" : "" %>>����</option>
					<option value="M" <%= kind.equals("M") ? "selected" : "" %>>����</option>
				</select>
			</td>
			<td>
				Į�θ�
			</td>
			<td>
				<input type="text" name="calorie" id="calorie" style="width:50px;">(100g��)
			</td>
		<tr>
			<td>��ǰ��</td>
			<td>
				<input type="text" id="pname" name="pname" style="width:100px">
			</td>
			<td colspan="2">
				<input type="text" id="month_start" name="month_start" style="width:50px">��(����) ~ 
				<input type="text" id="month_end" name="month_end" style="width:50px">��(��)
			</td>
		</tr>
		<tr>
			<td>����</td>
			<td>
				<select name="age">
					<option id="age" name="age" value="">����</option>
					<option id="age" name="age" value="10">10��</option>
					<option id="age" name="age" value="20">20��</option>
					<option id="age" name="age" value="30">30��</option>
					<option id="age" name="age" value="40">40��</option>
					<option id="age" name="age" value="50">50��</option>
					<option id="age" name="age" value="60">60��</option>
				</select>
			</td>
			<td>�±�(����)</td>
			<td>
				<select name="tag_age" id="tag_age" style="width:100px; height:30px;" onchange="dosearch();">
	          		   <option value="">����</option>
			           <option value="10��">10��</option>
			           <option value="20��">20��</option>
			           <option value="30��">30��</option>
			           <option value="40��">40��</option>
			           <option value="50��">50��</option>
			           <option value="60��">60��</option>
		         </select>
			</td>
		</tr>
		<tr>
			<td>����</td>
			<td>
				<select name="pgender">
					<option id="pgender" name="pgender" value="">����</option>
					<option id="pgender" name="pgender" value="����">����</option>
					<option id="pgender" name="pgender" value="����">����</option>
					<option id="pgender" name="pgender" value="����ҹ�">����ҹ�</option>
				</select>
			</td>
			<td>�±�(����)</td>
			<td>
				<input id="tag_pgender" name="tag_pgender" type="text">
			</td>
		</tr>
		<tr>
			<td>ü��</td>
			<td>
				<select name="pcon">
					<option id="pcon" name="pcon" value="">ü��</option>
					<option id="pcon" name="pcon" value="�¾���">�¾���</option>
					<option id="pcon" name="pcon" value="������">������</option>
					<option id="pcon" name="pcon" value="�Ҿ���">�Ҿ���</option>
					<option id="pcon" name="pcon" value="������">������</option>
				</select>
			</td>
			<td>�±�(ü��)</td>
			<td>
				<input id="tag_pcon" name="tag_pcon" type="text">
			</td>
		</tr>
		<tr>
			<td>��ũ<hr></td>
			<td colspan="3">
				<input id="link" name="link" type="text" style="width:300px"><hr>
			</td>
		</tr>
		<tr>
			<td colspan="5">1. �⺻���� �� ȿ��<hr></td>
		</tr>
		<tr>
			<td colspan="5">
				<textarea id="info" name="info" cols="120" rows="15"></textarea>
			</td>
		</tr>
		<tr>
			<td colspan="5">2. ��������<hr></td>
		</tr>
		<tr>
			<td colspan="5">
				<textarea id="takeinfo" name="takeinfo" cols="120" rows="15"></textarea>
			</td>
		</tr>
		<tr>
			<td colspan="5" align="center"> 
				<input type="submit" id="submitbutton" value="�Ϸ�">&emsp;
				<input type="button" id="cancelbutton" value="���" onclick="window.history.back()">
			</td>
		</tr>
	</form>
<%@ include file="../admininclude/tail.jsp" %> 