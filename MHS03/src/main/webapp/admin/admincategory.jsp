<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="../admininclude/head.jsp" %> 
					<tr>
						<td width="30px" align="right" valign="middle">
								<input type="checkbox" style="width: 20px; height: 20px" value="a">
							</td>
						<td align="center" height="50px">
							<select name="age" style="width:80px; height:30px;">
					            <option value="">나이</option>
					            <option value="10">10대</option>
					            <option value="20">20대</option>
					            <option value="30">30대</option>
					            <option value="30">40대</option>
					            <option value="30">50대</option>
					            <option value="30">60대</option>
					         </select>
					         <select name="sex" style="width:80px; height:30px;">
					            <option value="">성별</option>
					            <option value="M">남자</option>
					            <option value="F">여자</option>
					            <option value="MF">남녀불문</option>
					         </select>
					         <select name="constitution" style="width:80px; height:30px;">
					            <option value="">체질</option>
					            <option value="taeyangin">태양인</option>
					            <option value="taeeumin">태음인</option>
					            <option value="soyangin">소양인</option>
					            <option value="soeumin">소음인</option>
					         </select>
						   </td>
						   <td align="left" valign="middle" colspan="2" >
							   	<a href="adminProductUpload.html">
										<div class="abutton" style="background-color: #4dd5b0">등록하기</div></a>
							   	<a href="admincategory.html">
										<div class="abutton" style="background-color: ligthgray">선택삭제</div></a>
						   </td>
						   <td colspan="2" align="right" >
								<input type="text" placeholder="검색어 입력" style="width:150px; height:30px;">
								<button style="width:50px; height:30px;">검색</button>
							</td>
						</tr>
						<tr>
							<td width="30px" align="right" valign="top">
								<input type="checkbox" style="width: 20px; height: 20px" value="a">
							</td>
							<td align="center">
								<a href="admininfo.jsp"><img src="../image/블루베리.jpeg" width="250px" height="300px"><br>
								블루베리</a><br>
							</td>
							<td width="30px" align="right" valign="top">
								<input type="checkbox" style="width: 20px; height: 20px" value="a">
							</td>
							<td align="center">
								<a href="admininfo.jsp"><img src="../image/사과(2).jpg" width="250px" height="300px"><br>
								사과</a><br>
							</td>
							<td width="30px" align="right" valign="top">
								<input type="checkbox" style="width: 20px; height: 20px" value="a">
							</td>
							<td align="center">
								<a href="admininfo.jsp"><img src="../image/포도.jpeg" width="250px" height="300px"><br>
								포도</a><br>
							</td>
						</tr>
						<tr>
							<td width="30px" align="right" valign="top">
								<input type="checkbox" style="width: 20px; height: 20px" value="a">
							</td>
							<td align="center">
								<a href="admininfo.jsp"><img src="../image/배.jpg" width="250px" height="300px"><br>
								배</a><br>
							</td>
							<td width="30px" align="right" valign="top">
								<input type="checkbox" style="width: 20px; height: 20px" value="a">
							</td>
							<td align="center">
								<a href="admininfo.jsp"><img src="../image/멜론.jpg" width="250px" height="300px"><br>
								멜론</a><br>
							</td>
							<td width="30px" align="right" valign="top">
								<input type="checkbox" style="width: 20px; height: 20px" value="a">
							</td>
							<td align="center">
								<a href="admininfo.jsp"><img src="../image/사과(1).jpg" width="250px" height="300px"><br>
								사과</a><br>
							</td>
						</tr>
<%@ include file="../admininclude/tail.jsp" %> 