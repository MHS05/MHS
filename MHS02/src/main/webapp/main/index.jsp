<%@page import="java.util.Calendar"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="../include/head.jsp" %> 

<%
Calendar now = Calendar.getInstance();
int nowmonth = now.get(Calendar.MONTH) + 1;     // ���ο� ������ ���� �� �ޱ�
int day      = now.get(Calendar.DAY_OF_MONTH);  // ���ο� ������ ���� �� �ޱ�
int curmonth = nowmonth;						// ���� �� �޾Ƽ� for ������ i ���ϰ� ��

String month = request.getParameter("month");   // ���ο��� �� ���� �ϸ� �Ѿ���� �� �ޱ�

if( month == null || month.equals(""))          
{
	// �Ѿ���� ���� null �̰ų� ���̸� ������������ ����
	response.sendRedirect("index.jsp?month=" + nowmonth);
	return;
} else
{
	//���� �ִ� ��� int�� ��ȯ�ؼ� curmonth�� ����
	try
	{
		curmonth = Integer.parseInt(month);
		if(curmonth > 12)
		{
			//��ȯ�� ���� 12���� ū��� ����� ������ ����
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
						<b>����� �ǰ��� ���񿡰� �ð� ���ðھ��?</b>
					</p>
				</td>
			</tr>
				
			<tr>
				<td align="center">
					<h3>������ <%= nowmonth %>�� <%= day %>�� �Դϴ�. &nbsp;&nbsp;���� ���� ��ö ������ �Ұ��մϴ�</h3>
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
							if(curmonth == i) //curmonth ���� i ���� ���� ��� ���� ǥ��  
							{
							%><b><%= i %>��</b><%
							} else
							{
							%><%= i %>��
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
					&emsp;&emsp;<a class="month" href="index.jsp">��</a>&emsp;&emsp;
					<a class="month" href="select.jsp"><b>��ü</b></a>&emsp;&emsp;
					<a class="month" href="select.jsp">��</a>&emsp;&emsp;
					<a class="month" href="select.jsp">���</a>&emsp;&emsp;
					<a class="month" href="select.jsp">ȫ��</a>&emsp;&emsp;
					<a class="month" href="select.jsp">����</a>&emsp;&emsp;
					<a class="month" href="select.jsp">����</a>&emsp;&emsp;
					<a class="month" href="select.jsp">��</a>&emsp;&emsp;
					<a class="month" href="select.jsp">����</a>&emsp;&emsp;
					<a class="month" href="select.jsp">��</a>&emsp;&emsp;
					</td>
				</tr>
				<tr>
					<td colspan="5">
				<table border="0" width="700px" align="center">
				<tr>
					<td align="center">
						<a href="select.jsp">
						<img src="../image/��.png"><br>
						��</a><br>
						9~12��
					</td>
					<td align="center">
						<a href="select.jsp">
						<img src="../image/���.png"><br>
						���</a><br>
						10~12��
					</td>
					<td align="center">
						<a href="select.jsp">
						<img src="../image/ȫ��.png"><br>
						ȫ��</a><br>
						10~12��
					</td>
					<td align="center">
						<a href="select.jsp">
						<img src="../image/����.png"><br>
						����</a><br>
						11~3��
					</td>
					<td align="center">
						<a href="select.jsp">
						<img src="../image/����.png"><br>
						����</a><br>
						11~12��
					</td>
				</tr>
				<tr>
					<td colspan="5">
					<hr>
					</td>
				</tr>
				<tr>
					<td align="center">
						<a href="select.jsp">
						<img src="../image/��.png"><br>
						��</a><br>
						10~12��
					</td>
					<td align="center">
						<a href="select.jsp">
						<img src="../image/����ȣ��.png"><br>
						����ȣ��</a><br>
						10~12��
					</td>
					<td align="center">
						<a href="select.jsp">
						<img src="../image/����.png"><br>
						����</a><br>
						9~12��
					</td>
					<td align="center">
						<a href="select.jsp">
						<img src="../image/��ġ.png"><br>
						��ġ</a><br>
						10~2��
					</td>
					<td align="center">
						<a href="select.jsp">
						<img src="../image/����.png"><br>
						����</a><br>
						11~12��
					</td>
				</tr>
				</table>
				</td>
				</tr>
		</table>
<%@ include file="../include/tail.jsp" %> 