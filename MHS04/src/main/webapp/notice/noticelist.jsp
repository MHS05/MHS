<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="../include/head.jsp" %> 
<%
String kind = request.getParameter("kind");
if(kind == null) kind = "N";
String btitle = "�������� �Խ���";

int page_no = 1;
//����¡ 4�ܰ� : �������κ��� ������ ��ȣ�� �޴´�. ex)index.jsp?page=3
try
{
	page_no = Integer.parseInt(request.getParameter("page"));
}catch(Exception e){}

ListDTO dto = new ListDTO();

//����¡ 1�ܰ�: ��ü �Խù� ������ ��´�.
int totalData = dto.GetTotal(kind,"");

//����¡ 2�ܰ� : ��ü ������ ������ ����Ѵ�.
int totalPage = totalData / 10;
if(totalData % 10 != 0)
{
	//10���� ���� �������� 0�� �ƴϸ�
	//��ü ������ ���� ����
	totalPage++;
}

ArrayList<CommunityVO> list = dto.GetList(page_no, kind, "");
%>
<table border="0" align="center" width="1200px">
	<tr>
		<td rowspan="26" width="20%" valign="top"></td>
		<td height="50px" colspan="5"><h2>��������</h2></td>
	</tr>
	<tr>
		<td colspan="5"><hr></td>
	<tr>
	<tr>
		<td align="center" width="50px">��ȣ</td>
		<td align="center" width="200px">����</td>
		<td align="center" width="75px">�۾���</td>
		<td align="center" width="100px">�ۼ���</td>
		<td align="center" width="50px">��ȸ��</td>
	</tr>
	<tr>
		<td colspan="5"><hr></td>
	</tr>
	<%
	int SeqNo = totalData - (page_no - 1) * 10;
	
	for(CommunityVO vo : list)
	{
	%>
	<tr>
		<td align="center"><%= SeqNo-- %></td>
		<td align="left"><a href="noticeview.jsp?kind=<%= kind %>&no=<%= vo.getNo() %>"><div class="div1"">
		<img src="../image/ha.png" style="width:18px; height:18px;">
			<%
			if(vo.getTitle().length() > 50)
			{
				%>
					<%= vo.getTitle().substring(0,35) %>...
				<%
			} else
			{
			%><%= vo.getTitle() %><%
			}
			%>
			</a>
			<%
				if( !vo.getRecount().equals("0"))
				{
					%><span style="padding: 0px 0px; background-color:white; color:#ff6600">(<%= vo.getRecount() %>)</span><%
							
				}			
			%>
			</div></a>
		</td>
		<td align="center">������</td>
		<td align="center"><%= vo.getWdate() %></td>
		<td align="center"><%= vo.getHit() %></td>
	</tr>
	<tr>
		<td colspan="5"><hr></td>
	</tr>
	<%
	}
	%>
	<tr>
		<td colspan="5" style="text-align:center;">
		<%
		//����¡ 5�ܰ� : ���� �� �������� ���� �� ������ ���
		//���� ������ ��ȣ�� 16�϶� ���� �� ������ : 11 , ���� �� ������ : 20 ���� ���
		int startBlock = ((page_no-1)/10)*10; //���� ��� ������
		startBlock += 1;
		int endBlock = startBlock  + 10 - 1;  //���� ��� ������
		if( endBlock > totalPage)
		{
			//���� ��� �������� ��ü ���������� ũ��....
		    endBlock = totalPage;
		}		
		
		//����¡ 6�ܰ� : ����  [ ������ ��ȣ ��� ] ����  �� ǥ���Ѵ�.
		//���� �� ǥ���ϱ�
		if(startBlock > 10)
		{
			%>
			<a href="noticelist.jsp?kind=<%= kind %>&page=<%= startBlock - 1 %>">����</a>
			<%					
		}		
		for(int i=startBlock; i <= endBlock; i++)
		{
			if( i == page_no )
			{
				//���� ��������
				%><a style="color:red;" href="index.jsp?kind=<%= kind %>&page=<%= i %>"><%= i %></a>&nbsp;<%
			}else
			{
				%><a href="noticelist.jsp?kind=<%= kind %>&page=<%= i %>"><%= i %></a>&nbsp;<%
			}
		}
		
		//���� �� ǥ���ϱ�
		if(endBlock < totalPage)
		{
			%>
			<a href="noticelist.jsp?kind=<%= kind %>&page=<%= endBlock + 1 %>">����</a>
			<%					
		}		
		%>
		</td>
	</tr>
</table>
<%@ include file="../include/tail.jsp" %>