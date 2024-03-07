<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="../admininclude/head.jsp" %> 
						<tr>
							<td colspan="3">
								<h2><b>상품삭제</b></h2>
								<hr>
							</td>
						</tr>
						<tr>
							<td>
							<table border="0" align="center" width="400px" height="200px" style="background-color:#EDEDED">
								<tr>
									<td colspan="2" align="center" style="font-size:23px">상품을 삭제하시겠습니까?</td>
								</tr>
								<tr>
									<td align="center">
									 	<a href="adminProductDeleteOk.jsp">
									 		<input type="button" value="확인" style="width:150px; height:50px; font-size:17px; background-color:#4dd5b0;">
									 	</a>
									 	<a href="admin.jsp">
									 		<input type="button" value="취소" style="width:150px; height:50px; font-size:17px;">
									 	</a>
									</td>
								</tr>
							</table>
							</td>
						</tr>
<%@ include file="../admininclude/tail.jsp" %> 