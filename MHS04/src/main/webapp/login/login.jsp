<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>�α���</title>
		<script src="../js/jquery-3.7.1.js"></script>
	</head>
	<body>
	<style>
	a 
	{
		text-decoration: none;
		color: black;
	}
	
	input
	{
		width:97%; 
		height:35px;
	}
	
	span
	{
		
		padding: 7px 30px;
		background-color : #4dd5b0;
		border-radius: 15px;
		cursor: pointer;
	
	}
	
			.button
		{
			text-decoration: none;
			color: black;
		}
	
	</style>
<script>
	window.onload = function()
	{
		$("#id").focus();
		
		$("#id,#pw").keyup(function (event)
		{
			if (event.keyCode == 13) 
			{
				DoLogin();
			}
			
		});
	}
	
	function DoLogin()
    {	
		if( $("#id").val() == "")
		{
			//alert("���̵� �Է��ϼ���.");
			$("#msg").html("���̵� �Է��ϼ���.");
			$("#id").focus();
			return;
		}
		if( $("#pw").val() == "")
		{
			//alert("��й�ȣ�� �Է��ϼ���.");
			$("#msg").html("��й�ȣ�� �Է��ϼ���.");
			$("#pw").focus();
			return;
		}		
    	$("#loginform").submit();
    }
</script>
	<form id="loginform" name="loginform" method="get" action="loginok.jsp">
		<table width="360px" align="center" border="0" style="margin-top: 20px">
			<tr height="70px">
				<td	align="center" colspan="2">
					<h1>�α���</h1>
				</td>
			</tr>
			<tr>
				<td	align="center" colspan="2" height="120px">
					<img src="../image/loginimage.png" style="width:100px; height:100px">
				</td>
			</tr>
			<tr height="10px">
				<td colspan="2" >
				</td>
			</tr>
			<tr height="50px">
				<td	align="center">
					���̵�
				</td>
				<td>
					<input type="text" id="id" name="id" maxlength="12" placeholder="���̵� �Է��� �ּ���">
				</td>
			</tr>
			<tr height="50px">
				<td	align="center">
					��й�ȣ
				</td>
				<td>
					<input type="password" id="pw" name="pw" maxlength="12" placeholder="��й�ȣ�� �Է��� �ּ���">
				</td>
			</tr>
			<tr height="25px">
				<td	align="center" colspan="2">
				<div id="msg" style="color:#ff6600"></div>
				</td>
			</tr>			
			<tr>
				<td	align="center" colspan="2">
					<a href="selectID.jsp">���̵� ã��</a>
				</td>
			</tr>
			<tr>
				<td	align="center" colspan="2">
					<a href="selectPW.jsp">��й�ȣ ã��</a>
				</td>
			</tr>
			<tr height="10px">
				<td colspan="2" >
				</td>
			</tr>
			<tr height="50px">
				<td	align="center" colspan="2">
					<a href="javascript:DoLogin();"><span>�α���</span></a> <!-- Ŭ���ϸ� setParentText ���� -->
					<span style="background-color: lightgray" onclick="window.close()">���</span>
				</td>
			</tr>
		</table>
	</form>
	</body>
</html>