<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
String uno = request.getParameter("uno");
String con = request.getParameter("con");
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>�Ҿ���</title>
	</head>
	<script>
		function send() 
		{
			location.href="soyanginf.jsp?uno=" + <%= uno %>;
		}
	</script>
	<body>
		<table border="0" align="center" width="1200px">
			<tr>
				<td style="width:350px; height:150px; font-size:40px"><img src="../image/write.jpg"><b>ü���˻� ���</b></td>
				<td style="color:#1ABC9C; font-size:50px"><b>�Ҿ���</b></td>
			</tr>
			<tr>
				<td colspan="3" style="font-size:32px">
					<ul>
						<li>�Ҿ����� �񴢻��ı� ��ȯ�̳�, ���°���, ���� ������ ���� ����մϴ�.<br><br></li>
						<li>�̽��ϰ� �������̳� ä�ҷ�, �����, �̳�����, �����, ����, ����, ���� ���� ������ Ư�� ������⳪ �ػ� ���� ���� �����ϸ� �����ϴ�.<br><br></li>
						<li>�ڱؼ� �����̳� ���� ���� ������ ���Ѵ�.<br><br></li>
						<li>���ν� ����, ����, ��, ����, ����, ����, ī�� ���� �ڱؼ� ���İ� �߰��, �����, �����, ���Ұ��, ��, �λ�, ����, ħ�� �� �������İ� ����� ���� �ʽ��ϴ�.</li>
					</ul>
				</td>
			</tr>
			<tr>
				<td colspan="2" height="50px"></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="button" value="���� ���� ���� �� �˾ƺ��� >" onclick="send();" style="width:250px; height:50px; font-size:17px; background-color:#BEBEBE">
				</td>
			</tr>
		</table>
	</body>
</html>