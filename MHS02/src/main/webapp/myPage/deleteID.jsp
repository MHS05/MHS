<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>������ �ǰ� ���θ�</title>
	</head>
	<body>
	<style>
		.button
		{
			background-color: lightgray;
			text-align: center;
			vertical-align : middle;
			padding-top : 4px;
			height: 25px;
			width : 80px;
			float:right;
			border-radius: 15px;
		}
	
		.nav
		{
			background-color: #4dd5b0;

		}
		.nav div
		{
			float:left; 
			margin-left: 60px;

		}
		a, .nav div a, .month 
		{
			text-decoration: none;
			color: black;
		}
		
	</style>
		<form>
			<table border="0" width="1200px" align="center">
				<tr>
					<td rowspan="2" width="250px">
						<a href="../main/index2.jsp"><img style="width:250px; height: 200px;" src="../image/logo.png"></a>
					</td>
					<td colspan="4" height="50px" align="right" valign="bottom" style="font-size: 14px; font-weight: 700;">
						<a href="../constitution/test.jsp"><ins>���� ü�� �˻��ϱ�</ins></a>
						<div class="button" style="background-color: white; width:10px;"></div>
						ȫ�浿��
						<div class="button" style="background-color: white; width:10px;"></div>
						<a href="../myPage/myPage.jsp"><ins>����������</ins></a>
						<div class="button" style="background-color: white; width:10px;"></div>
						<a href="../main/index.jsp"><ins>�α׾ƿ�</ins></a>
					</td>
				</tr>
				<tr>
					<td class="nav">
						<div>
							<a href="../category/category.jsp"><h1>ī�װ�</h1></a>
						</div> 
						<div>
							<a href="../logino/community/communitylist.jsp"><h1>Ŀ�´�Ƽ</h1></a>
						</div> 
						<div>
							<a href="../loginx/notice/noticelist.jsp"><h1>��������</h1></a>
						</div>
					</td>
				</tr>
			</table>
		</form>
		<table border="0" align="center" width="1200px">
			<tr>
				<td rowspan="4" width="300px"></td>
			</tr>
			<tr>
				<td colspan="2"><h1>ȸ��Ż��</h1><hr></td>
			</tr>
			<tr>
				<td width="300px" align="center"><h4>��й�ȣ</h4></td>
				<td><input type="password" style="height:25px"></td>
			</tr>
			<tr>
				<td width="300px" align="center"><h4>��й�ȣ Ȯ��</h4></td>
				<td><input type="password" style="height:25px"></td>
			</tr>
			<tr> 
				<td colspan="3" align="center" height="100px">
					<a href="deleteOK.jsp">
						<input type="button" value="�Ϸ�" style="width:100px; height:50px; font-size:15px; background-color:#4dd5b0;"></a>&emsp;
					<a href="myPage.jsp">
						<input type="button" value="���" style="width:100px; height:50px; font-size:15px;"></a>
				</td>
			</tr>
		</table>
<%@ include file="../include/tail.jsp" %> 