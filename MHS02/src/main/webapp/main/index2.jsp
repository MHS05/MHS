<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%
Calendar now = Calendar.getInstance();
int nowmonth = now.get(Calendar.MONTH) + 1;     // 메인에 보여줄 현재 월 받기
int day      = now.get(Calendar.DAY_OF_MONTH);  // 메인에 보여줄 현재 일 받기
int curmonth = nowmonth;						// 현재 월 받아서 for 문에서 i 값하고 비교

String month = request.getParameter("month");   // 메인에서 월 선택 하면 넘어오는 값 받기

if( month == null || month.equals(""))          
{
	// 넘어오는 값이 null 이거나 빈값이면 메인으로으로 변경
	response.sendRedirect("index2.jsp?month=" + nowmonth);
	return;
} else
{
	//값이 있는 경우 int로 변환해서 curmonth로 대입
	try
	{
		curmonth = Integer.parseInt(month);
		if(curmonth > 12)
		{
			//변환한 값이 12보다 큰경우 현재월 값으로 대입
			curmonth = nowmonth;
		}
	}catch(Exception e){}
}

String p = request.getParameter("p");
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>나만의 건강 쇼핑몰</title>
		<link rel="stylesheet" href="mhs.css">
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
						<a href="index2.jsp"><img style="width:250px; height: 200px;" src="../image/logo.png"></a>
					</td>
					<td colspan="4" height="50px" align="right" valign="bottom" style="font-size: 14px; font-weight: 700;">
						<a href="../constitution/test.jsp"><ins>나의 체질 검사하기</ins></a>
						<div class="button" style="background-color: white; width:10px;"></div>
						홍길동님
						<div class="button" style="background-color: white; width:10px;"></div>
						<a href="../myPage/myPage.jsp"><ins>마이페이지</ins></a>
						<div class="button" style="background-color: white; width:10px;"></div>
						<a href="index.jsp"><ins>로그아웃</ins></a>
					</td>
				</tr>
				<tr>
					<td class="nav">
						<div>
							<a href="../category/category.jsp"><h1>카테고리</h1></a>
						</div> 
						<div>
							<a href="../loginocommunity/communitylist.jsp"><h1>커뮤니티</h1></a>
						</div> 
						<div>
							<a href="../notice/nlist.jsp"><h1>공지사항</h1></a>
						</div>
					</td>
				</tr>
			</table>
		</form>
		<table border="0" width="1200px" align="center">
			<tr height="50px">
				<td rowspan="5" width="100px">
				</td>				
				<td align="center">
					<p style="font-size: 200%;">
						<b>당신의 건강을 저희에게 맡겨 보시겠어요?</b>
					</p>
				</td>
			</tr>
				
			<tr>
				<td align="center">
					<h3>오늘은 <%= nowmonth %>월 <%= day %>일 입니다. &nbsp;&nbsp;몸에 좋은 제철 음식을 소개합니다</h3>
				</td>
			</tr>
			<tr height="50px">
				<td align="center" style="font-size: 20px;" >
					<%
					for(int i = 1; i <= 12; i++)
					{
						%>
						<a class="month" href="index2.jsp?month=<%= i %>&p=all"> 
							<%
							if(curmonth == i) //curmonth 값이 i 값과 같을 경우 굵게 표시  
							{
							%><b><%= i %>월</b><%
							} else
							{
							%><%= i %>월
							<%
							}
							%>
						</a>&nbsp;&nbsp;
							<%
					}
					%>
				</td>
			</tr>
				<tr height="30px">
					<td align="center" style="font-size: 20px;">
					&emsp;&emsp;<a class="month" href="index.jsp">◀</a>&emsp;&emsp;
					<a class="month" href="index.jsp">전체</a>&emsp;&emsp;
					<a class="month" href="index.jsp">굴</a>&emsp;&emsp;
					<a class="month" href="index.jsp">사과</a>&emsp;&emsp;
					<a class="month" href="index.jsp">홍합</a>&emsp;&emsp;
					<a class="month" href="index.jsp">꼬막</a>&emsp;&emsp;
					<a class="month" href="index.jsp">배추</a>&emsp;&emsp;
					<a class="month" href="index.jsp">무</a>&emsp;&emsp;
					<a class="month" href="index.jsp">대하</a>&emsp;&emsp;
					<a class="month" href="index.jsp">▶</a>&emsp;&emsp;
					</td>
				</tr>
				<tr>
					<td colspan="5">
				<table border="0" width="700px" align="center">
				<tr>
					<td align="center">
						<a href="index.jsp">
						<img src="../image/굴.png"><br>
						굴</a><br>
						9~12월
					</td>
					<td align="center">
						<a href="index.jsp">
						<img src="../image/사과.png"><br>
						사과</a><br>
						10~12월
					</td>
					<td align="center">
						<a href="index.jsp">
						<img src="../image/홍합.png"><br>
						홍합</a><br>
						10~12월
					</td>
					<td align="center">
						<a href="index.jsp">
						<img src="../image/꼬막.png"><br>
						꼬막</a><br>
						11~3월
					</td>
					<td align="center">
						<a href="index.jsp">
						<img src="../image/배추.png"><br>
						배추</a><br>
						11~12월
					</td>
				</tr>
				<tr>
					<td colspan="5">
					<hr>
					</td>
				</tr>
				<tr>
					<td align="center">
						<a href="index.jsp">
						<img src="../image/무.png"><br>
						무</a><br>
						10~12월
					</td>
					<td align="center">
						<a href="index.jsp">
						<img src="../image/늙은호박.png"><br>
						늙은호박</a><br>
						10~12월
					</td>
					<td align="center">
						<a href="index.jsp">
						<img src="../image/대하.png"><br>
						대하</a><br>
						9~12월
					</td>
					<td align="center">
						<a href="index.jsp">
						<img src="../image/삼치.png"><br>
						삼치</a><br>
						10~2월
					</td>
					<td align="center">
						<a href="index.jsp">
						<img src="../image/유자.png"><br>
						유자</a><br>
						11~12월
					</td>
				</tr>
				</table>
				</td>
				</tr>
		</table>
<%@ include file="../include/tail.jsp" %> 