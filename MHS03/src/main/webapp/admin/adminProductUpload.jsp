<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="../admininclude/head.jsp" %> 
						<tr>
							<td colspan="12"><h2><b>상품등록</b></h2><hr></td>
						</tr>
						<tr>
							<td rowspan="7" align="center"><img src="../image/logo.png" width="100px"; height="100px"><br><br>
							<input type="button" value="사진교체" style="width:80px; height:25px">
							</td>
						</tr>
						<tr>
							<td colspan="1">구분</td>
							<td colspan="1">
								<select name="category">
									<option value="">카테고리</option>
									<option value="">채소</option>
									<option value="">과일</option>
									<option value="">건강식품</option>
									<option value="">수산</option>
									<option value="">정육</option>
								</select>
							</td>
							<td colspan="2" rowspan="2">
								<input type="text" style="width:50px">월(시작) ~ <input type="text" style="width:50px">월(끝)
							</td>
						</tr>
						<tr>
							<td>상품이름</td>
							<td>
								<input type="text" style="width:100px">
							</td>
						</tr>
						<tr>
							<td>나이</td>
							<td>
								<select name="age">
									<option value="">나이</option>
									<option value="">20대</option>
									<option value="">30대</option>
									<option value="">40대</option>
									<option value="">50대</option>
									<option value="">60대</option>
								</select>
							</td>
							<td>태그(나이)</td>
							<td>
								<input type="text">
							</td>
						</tr>
						<tr>
							<td>성별</td>
							<td>
								<select name="sex">
									<option value="">성별</option>
									<option value="">남자</option>
									<option value="">여자</option>
									<option value="">남녀불문</option>
								</select>
							</td>
							<td>태그(성별)</td>
							<td>
								<input type="text">
							</td>
						</tr>
						<tr>
							<td>체질</td>
							<td>
								<select name="constitution">
									<option value="">체질</option>
									<option value="">태양인</option>
									<option value="">태음인</option>
									<option value="">소양인</option>
									<option value="">소음인</option>
								</select>
							</td>
							<td>태그(체질)</td>
							<td>
								<input type="text">
							</td>
						</tr>
						<tr>
							<td>링크<hr></td>
							<td colspan="3">
								<input type="text" style="width:300px"><hr>
							</td>
						</tr>
						<tr>
							<td colspan="5">1. 기본정보 및 효능<hr></td>
						</tr>
						<tr>
							<td colspan="5">
								<textarea>내용을 입력해주세요.</textarea>
							</td>
						</tr>
						<tr>
							<td colspan="5">2. 섭취정보<hr></td>
						</tr>
						<tr>
							<td colspan="5">
								<textarea>내용을 입력해주세요.</textarea>
							</td>
						</tr>
						<tr>
							<td colspan="5">3.영양성분 (100g 기준)<hr></td>
						</tr>
						<tr>
							<td colspan="5">
								<table border="1" align="center" width="600">
									<tr>
										<td style="width:90px; height:50px"></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
									</tr>
									<tr>
										<td style="width:60px; height:50px"></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
									</tr>
									<tr>
										<td style="width:60px; height:50px"></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
									</tr>
									<tr>
										<td style="width:60px; height:50px"></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
									</tr>
								</table><hr>
							</td>
						</tr>
						<tr>
							<td colspan="5" align="center"> 
								<a href="admincategory.jsp">
									<input type="button" value="완료" style="width:100px; height:50px; font-size:17px; background-color:#4dd5b0";>
								</a>&emsp;
								<a href="admincategory.jsp">
									<input type="button" value="취소" style="width:100px; height:50px; font-size:17px;">
								</a>
							</td>
						</tr>	
<%@ include file="../admininclude/tail.jsp" %> 