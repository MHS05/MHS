<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="../admininclude/head.jsp" %> 
						<tr>
							<td colspan="6">
								<a href="adminnlist.jsp"><h2><b>��������</b></h2></a>
								<hr>
							</td>
						</tr>
						<tr>
							<td class="td" colspan="3" height="30px">�ر۾���</td>
						</tr>
						<tr>
							<td class="td" width="85px" height="30px" align="center">���� :</td>
							<td colspan="2"><input type="text" style="width:715px;height:20px;"></td>
						</tr>
						<tr>
							<td class="td" height="50px" align="center" valign="top">���� :</td>
							<td width="720px">
								<textarea cols="100" rows="15"></textarea>
							</td>
							<td valign="top"><img src="../image/��.png" style="width: 25px; height: 25px;"></td>
						</tr>
						<tr>
							<td class="td" height="50px">÷������ :</td>
							<td colspan="2">
							<input type="file"></td>
						</tr>
						<tr>
							<td colspan="3" align="center">
								<input type="button" value="�ۼ��Ϸ�" style="width:100px; height:35px;">&nbsp;
								<input type="button" value="���" onclick="window.history.back()" style="width:100px; height:35px">
							</td>
						</tr>
<%@ include file="../admininclude/tail.jsp" %> 