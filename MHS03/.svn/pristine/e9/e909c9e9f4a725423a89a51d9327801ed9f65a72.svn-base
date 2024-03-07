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
		
		span
		{
			
			padding: 7px 30px;
			background-color : #4dd5b0;
			border-radius: 15px;
			cursor: pointer;
		
		}
		
		.join td
		{
			font-size: 20px;
		
		}
	
		.join tr
		{
			height: 50px;
		
		}
		
		#a
		{
		
			padding: 0px 0px;
			background-color : white;
			border-radius: 15px;
			cursor: pointer;
		
		}
	</style>
	<script>
	
		window.addEventListener('message', function (event) {
		    if (event.data === 'reload')
		    {
		        location.reload();
		    }
		}, false);
		
	</script>
		<form>
			<table border="0" width="1200px" align="center">
				<tr>
					<td rowspan="2" width="250px">
						<a href="../main/index.jsp"><img style="width:250px; height: 200px;" src="../image/logo.png"></a>
					</td>
					<td colspan="4" height="50px" align="right">
						<a href="../login/join.jsp"><div class="button">회원가입</div></a>
						<div class="button" style="background-color: white; width:10px;"></div>
						<a href="../login/login.jsp" onClick="window.open(this.href, '', 'width=380, height=540'); return false;"><div class="button">로그인</div></a>
					</td>
				</tr>
				<tr>
					<td class="nav">
						<div>
							<a href="../category/category.jsp"><h1>카테고리</h1></a>
						</div> 
						<div>
							<a href="../loginxcommunity/communitylist.jsp"><h1>커뮤니티</h1></a>
						</div> 
						<div>
							<a href="../loginxnotice/noticelist.jsp"><h1>공지사항</h1></a>
						</div>
					</td>
				</tr>
			</table>
		</form>