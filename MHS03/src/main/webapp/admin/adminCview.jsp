<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="../admininclude/head.jsp" %> 
						<tr>
							<td colspan="3" height="50px"><h2>자유게시판</h2></td>
						</tr>
						<tr>
							<td colspan="3" height="20px"><hr></td>
						<tr>
						<tr>
							<td colspan="3" height="50px"><h2>제목입니다.</h2></td>
						</tr>
						<tr>
							<td width="70px" height="20px">글쓴이</td>
							<td width="90px" height="20px">조회수 3회</td>
							<td height="20px">2023.12.01</td>
						</tr>
						<tr>
							<td colspan="3" height="20px"><hr></td>
						<tr>
						<tr>
							<td colspan="3" heigth="500px" valign="top">
							<img style="width:250px; height: 200px;" src="../image/logo.png">
							<br>
							없는 사막이다 보이는 끝까지 찾아다녀도 목숨이 있는 때까지 방황하여도 보이는 것은 거친 모래뿐일 것이다 이상의 꽃이 없으면 쓸쓸한 인간에 남는 것은 영락과 부패 뿐이다 낙원을 장식하는 천자만홍이 어디 있으며 인생을 풍부하게 하는
							</td>
						</tr>
						<tr>
							<td colspan="3" align="right" height="20px">
							<a href="adminclist.jsp"><input type="submit" value="삭제"></a></td>
						<tr>
						<tr>
							<td colspan="3" height="20px"><hr></td>
						<tr>
						<tr>
							<td height="20px">첨부파일:</td>
							<td colspan="2" height="20px">index.jsp</td>
						</tr>
						<tr>
							<td colspan="3" height="20px"><hr></td>
						<tr>
						<tr>
							<td height="60px" width="100%" colspan="3" style="background-color:lightgrey;">
							홍길동
							<br>
							댓글내용 ~~~~~~~~~~~~~~~~~
							<div style="float: right;"><input type="submit" value="답글">&nbsp<input type="submit" value="삭제"></div>
							</td>
						</tr>
						<tr>
							<td height="60px" width="100%" colspan="3" style="background-color:lightgrey;">
								성춘향
								<br>
								댓글내용 ~~~~~~~~~~~~~~~~~
								<div style="float: right;"><input type="submit" value="답글">&nbsp<input type="submit" value="삭제"></div>
							</td>
						</tr>
						<tr>
							<td colspan="3" width="100%" height="50px" align="right" valign="top">
								<br>
								<form action="reply.jsp" method="get">
									<div style="float:left;">관리자</div>
								    <div style="width:100%;">
								    <textarea name="opinion" style="width:100%; height: 50px; text-align: left;">
								    </textarea><input type="submit" value="등록"></div><br>
								</form>
							</td>
						</tr>
						<tr>
							<td align="center" colspan="3" height="20px">
								<a href="adminclist.jsp"><span>목록</span></a>
							</td>
						</tr>
<%@ include file="../admininclude/tail.jsp" %> 