<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="../include/loginohead.jsp" %>
		<form method="get" action="../loginocommunity/communitylist.jsp">
		<table border="0" align="center" width="1200px">
			<tr>
				<td rowspan="20" width="20%" valign="top" height="800px">
					<table  border="0" align="left" width="200" >
						<tr>
							<td valign="top"><a href="../loginocommunity/communitylist.jsp"><h1><u>Ŀ�´�Ƽ</u></h1></a></td>
						</tr>
						<tr height="50px">
							<td valign="top" style="font-size: 20px;"><a href="../loginocommunity/communitylist.jsp" style="text-decoration:underline;"><b>�����Խ���</b></a></td>
						</tr>
						<tr height="50px">
							<td valign="top" style="font-size: 20px;"><a href="../loginocommunity/communitylist.jsp"><b>�¾��ΰԽ���</b></a></td>
						</tr>
						<tr height="50px">
							<td valign="top" style="font-size: 20px;"><a href="../loginocommunity/communitylist.jsp"><b>�����ΰԽ���</b></a></td>
						</tr>
						<tr height="50px">
							<td valign="top" style="font-size: 20px;"><a href="../loginocommunity/communitylist.jsp"><b>�Ҿ��ΰԽ���</b></a></td>
						</tr>
						<tr height="50px">
							<td valign="top" style="font-size: 20px;"><a href="../loginocommunity/communitylist.jsp"><b>�����ΰԽ���</b></a></td>
						</tr>
					</table>
				</td>
				<td colspan="2" height="50px"><h2>�����Խ���</h2></td>
			</tr>
			<tr>
				<td colspan="2" height="20px"><hr></td>
			<tr>
			<tr>
				<td colspan="2" height="50px"><h2>�ر۾���</h2></td>
			</tr>
			<tr>
				<td width="80px" height="50px">���� :</td>
				<td><input type="text" style="width:700px;height:30px;"></td>
			</tr>
			<tr>
				<td height="50px">���� :</td>
				<td>
					<select name="type" style="width:300px;height:30px;">
						<option value="">�����Խ���</option>
						<option value="">�¾��ΰԽ���</option>
						<option value="">�����ΰԽ���</option>
						<option value="">�Ҿ��ΰԽ���</option>
						<option value="">�����ΰԽ���</option>
					</select>
				</td>
			</tr>
			<tr>
				<td valign="top" height="200px">���� :</td>
				<td valign="top">
				<textarea cols="100" rows="30"></textarea>
				<input type="image">
				</td>
			</tr>
			<tr>
				<td height="50px">÷������ :</td>
				<td><input type="file"></td>
			</tr>
			<tr>
				<td colspan="3" align="center" height="20px">
					<input type="submit" value="���" style="background-color:#4dd5b0;">&nbsp
					<a href="../loginocommunity/communitylist.jsp"><input type="submit" value="���" style="background-color:#4dd5b0;"></a>
				</td>
			</tr>
		</table>
		</form>
	</body>
<%@ include file="../include/tail.jsp" %>