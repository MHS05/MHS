<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>나만의 건강 쇼핑몰</title>
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
						<a href="../constitution/test.jsp" ><ins>나의 체질 검사하기</ins></a>
						<div class="button" style="background-color: white; width:10px;"></div>
						홍길동님
						<div class="button" style="background-color: white; width:10px;"></div>
						<a href="../myPage/myPage.jsp"><ins>마이페이지</ins></a>
						<div class="button" style="background-color: white; width:10px;"></div>
						<a href="../main/index.jsp"><ins>로그아웃</ins></a>
					</td>
				</tr>
				<tr>
					<td class="nav">
						<div>
							<a href="../category/category.jsp"><h1>카테고리</h1></a>
						</div> 
						<div>
							<a href="../logino/community/communitylist.jsp"><h1>커뮤니티</h1></a>
						</div> 
						<div>
							<a href="../loginx/notice/noticelist.jsp"><h1>공지사항</h1></a>
						</div>
					</td>
				</tr>
			</table>
		</form>
		<table border="0" width="1150px" align="center">
			<tr>
				<td rowspan="25" width="200px">
				<td colspan="5"><h2>마이페이지</h2><hr></td>
			</tr>
			<tr>
				<td rowspan="24" width="30px"></td>
				<td colspan="5" style="font-size:25px">홍길동님이 작성한 글 목록<hr></td>
			</tr>
			<tr>
				<td align="center" width="100px">번호</td>
				<td align="center" width="400px">제목</td>
				<td align="center" width="75px">글쓴이</td>
				<td align="center" width="100px">작성일</td>
				<td align="center" width="50px">조회수</td>
			</tr>
			<tr>
				<td colspan="5"><hr></td>
			</tr>
			<tr>
				<td align="center">1</td>
				<td align="center"><a href="../logino/community/communityview.jsp">1번째 제목입니다.</a></td>
				<td align="center">홍길동</td>
				<td align="center">2023.11.30</td>
				<td align="center">10</td>
			</tr>
			<tr>
				<td colspan="5"><hr></td>
			</tr>
			<tr>
				<td align="center">2</td>
				<td align="center"><a href="../logino/community/communityview.jsp">2번째 제목입니다.</a></td>
				<td align="center">홍길동</td>
				<td align="center">2023.11.30</td>
				<td align="center">10</td>
			</tr>
			<tr>
				<td colspan="5"><hr></td>
			</tr>
			<tr>
				<td align="center">3</td>
				<td align="center"><a href="../logino/community/communityview.jsp">3번째 제목입니다.</a></td>
				<td align="center">홍길동</td>
				<td align="center">2023.11.30</td>
				<td align="center">10</td>
			</tr>
			<tr>
				<td colspan="5"><hr></td>
			</tr>
			<tr>
				<td align="center">4</td>
				<td align="center"><a href="../logino/community/communityview.jsp">4번째 제목입니다.</a></td>
				<td align="center">홍길동</td>
				<td align="center">2023.11.30</td>
				<td align="center">10</td>
			</tr>
			<tr>
				<td colspan="5"><hr></td>
			</tr>
			<tr>
				<td align="center">5</td>
				<td align="center"><a href="../logino/community/communityview.jsp">5번째 제목입니다.</a></td>
				<td align="center">홍길동</td>
				<td align="center">2023.11.30</td>
				<td align="center">10</td>
			</tr>
			<tr>
				<td colspan="5"><hr></td>
			</tr>
			<tr>
				<td align="center">6</td>
				<td align="center"><a href="../logino/community/communityview.jsp">6번째 제목입니다.</a></td>
				<td align="center">홍길동</td>
				<td align="center">2023.11.30</td>
				<td align="center">10</td>
			</tr>
			<tr>
				<td colspan="5"><hr></td>
			</tr>
			<tr>
				<td align="center">7</td>
				<td align="center"><a href="../logino/community/communityview.jsp">7번째 제목입니다.</a></td>
				<td align="center">홍길동</td>
				<td align="center">2023.11.30</td>
				<td align="center">10</td>
			</tr>
			<tr>
				<td colspan="5"><hr></td>
			</tr>
			<tr>
				<td align="center">8</td>
				<td align="center"><a href="../logino/community/communityview.jsp">8번째 제목입니다.</a></td>
				<td align="center">홍길동</td>
				<td align="center">2023.11.30</td>
				<td align="center">10</td>
			</tr>
			<tr>
				<td colspan="5"><hr></td>
			</tr>
			<tr>
				<td align="center">9</td>
				<td align="center"><a href="../logino/community/communityview.jsp">9번째 제목입니다.</a></td>
				<td align="center">홍길동</td>
				<td align="center">2023.11.30</td>
				<td align="center">10</td>
			</tr>
			<tr>
				<td colspan="5"><hr></td>
			</tr>
			<tr>
				<td align="center">10</td>
				<td align="center"><a href="../logino/community/communityview.jsp">10번째 제목입니다.</a></td>
				<td align="center">홍길동</td>
				<td align="center">2023.11.30</td>
				<td align="center">10</td>
			</tr>
			<tr>
				<td colspan="5"><hr></td>
			</tr>
			<tr>
				<td colspan="5" align="center">◀ 1 2 3 4 5 6 7 8 9 10 ▶</td>
			</tr>
		</table>
<%@ include file="../include/tail.jsp" %> 