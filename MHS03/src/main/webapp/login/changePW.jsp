<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>��й�ȣ ����</title>
	</head>
	<body>
	<style>
	
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
		
		a
		{
			text-decoration: none;
			color: black;
		}
	
	</style>
	<form type="post" action="changePWOK.jsp">
		<table width="360px" align="center" border="0" style="margin-top: 20px">
			<tr>
				<td	align="center" colspan="2">
					<h1>��й�ȣ �����ϱ�</h1>
				</td>
			</tr>
			<tr height="80px">
				<td	align="center" colspan="2">
				</td>
			</tr>
			<tr height="50px">
				<td	align="center" width="140px">
					���ο� ��й�ȣ*
				</td>
				<td>
					<input type="text" placeholder="��й�ȣ�� �Է����ּ���">
				</td>
			</tr>
			<tr height="50px">
				<td	align="center">
					��й�ȣ Ȯ��*
				</td>
				<td>
					<input type="text" placeholder="��й�ȣ�� �ѹ� �� �Է����ּ���">
				</td>
			</tr>
			<tr height="80px">
				<td colspan="2">
				</td>
			</tr>
			<tr height="50px">
				<td	align="center" colspan="2">
					<a href="login.jsp"><span> ��й�ȣ ����</span></a>
					<span style="background-color: lightgray" onclick="window.close()">���</span>
				</td>
			</tr>
		</table>
	</form>
	</body>
</html>