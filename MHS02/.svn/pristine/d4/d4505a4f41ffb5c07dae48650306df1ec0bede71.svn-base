<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="../include/head.jsp" %>
<%
Calendar now = Calendar.getInstance();
int nowmonth = now.get(Calendar.MONTH) + 1;     // 메인에 보여줄 현재 월 받기
int day      = now.get(Calendar.DAY_OF_MONTH);  // 메인에 보여줄 현재 일 받기
int curmonth = nowmonth;						// 현재 월 받아서 for 문에서 i 값하고 비교

String month = request.getParameter("month");   // 메인에서 월 선택 하면 넘어오는 값 받기

if( month == null || month.equals(""))          
{
	// 넘어오는 값이 null 이거나 빈값이면 메인으로으로 변경
	response.sendRedirect("select.jsp?month=" + nowmonth);
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
						<a class="month" href="index.jsp?month=<%= i %>&p=all"> 
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
					<a class="month" href="index.jsp"><b>굴</b></font></a>&emsp;&emsp;
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
					<tr height="20px">
						<td colspan="2">
						</td>
					</tr>
					<tr>
						<td rowspan="5" align="center" valign="middle" width="200px">
							<img src="../image/굴.png" width="150px" height="150px" >
						</td>
						<td rowspan="5" width="40px">
						</td>
						<td style="font-weight: bold; font-size: 20px">
							굴
						</td>
					</tr>
					<tr>
						<td>
							<span id="a" style="color:red; font-weight: bold;">9~12월</span> 
							<span id="a">칼로리</span> 
							<span id="a">97Kcal</span>(100g)
						</td>
					</tr>
					<tr>
						<td>
							바다의 우유라 불리는 굴은 영양이 가득한 재료입니다.<br>
							바다의 맛도 챙기고 건강도 챙기는 일석이조 먹거리!<br> 
							카사노바도 즐겨먹었다는 건강 먹거리랍니다.
						</td>
					</tr>
					<tr>
						<td>
							<a href="../category/info.jsp" ><font color="blue"><ins>자세히 보기</ins></font></a>
						</td>
					</tr>
				</table>
				</td>
				</tr>
		</table>
<%@ include file="../include/tail.jsp" %> 