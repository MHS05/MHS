<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="../include/head.jsp" %>
<%
String kind = request.getParameter("kind");
if(kind == null) kind = "F";
String btitle = "�����Խ���";
if(kind.equals("TY"))
{
	btitle = "�¾��ΰԽ���";
}
if(kind.equals("TE"))
{
	btitle = "�����ΰԽ���";
}
if(kind.equals("SY"))
{
	btitle = "�Ҿ��ΰԽ���";
}
if(kind.equals("SE"))
{
	btitle = "�����ΰԽ���";
}
String uno = request.getParameter("uno");
if(uno.equals("") || uno == null)
{
	response.sendRedirect("member.jsp");
	return;
}

UserDTO dto = new UserDTO();
UserVO vo = dto.memberInfo(uno);

int page_no = 1;
//����¡ 4�ܰ� : �������κ��� ������ ��ȣ�� �޴´�. ex)index.jsp?page=3
try
{
	page_no = Integer.parseInt(request.getParameter("page"));
}catch(Exception e){}

ListDTO ldto = new ListDTO();

//����¡ 1�ܰ�: ��ü �Խù� ������ ��´�.
int totalData = ldto.GetUserCTotal(uno);

//����¡ 2�ܰ� : ��ü ������ ������ ����Ѵ�.
int totalPage = totalData / 10;
if(totalData % 10 != 0)
{
	//10���� ���� �������� 0�� �ƴϸ�
	//��ü ������ ���� ����
	totalPage++;
}

ArrayList<CommunityVO> list = ldto.GetUserCList(page_no, uno);

%>
<script>
var selectedElementsCnt = 0; //üũ�� üũ�ڽ� ����

function getCheckedCnt()  
{
	// ���õ� ��� ��������
	const query = 'input[name="delNo"]:checked';
	const selectedElements = document.querySelectorAll(query);
	  
	  // ���õ� ����� ���� ����
	selectedElementsCnt = selectedElements.length;
}

//��ü����
function selectAll(selectAll)  
{
	getCheckedCnt();
	const checkboxes = document.getElementsByName("delNo");
	checkboxes.forEach((checkbox) => {
	    checkbox.checked = selectAll.checked;
	  })
}

function Dodelete() 
{
	if(selectedElementsCnt == "0")
	{
		alert("������ �Խù��� ���� ���ּ���.")
	} else {
		
		$("#clistForm").submit();
		
	}
}

</script>
<style>
	.dbutton
	{
		background-color: lightgray; 
		width: 70px; 
		height: 22px;
		float: right;
		margin-top: 42px;
		margin-right: 5px;
		font-size: small;
		text-align: center;
		padding-top: 5px;
		border-radius: 5px;
	}
</style>
<form id="clistForm" method="get" action="admincdelete.jsp">
<input type="hidden" id="uno" name="uno" value="<%= uno %>"> 
<table border="0" align="center" width="1200px">
	<tr>
		<td rowspan="25" width="250px"></td>
		<td colspan="4" height="10px">
			<a href="userclist.jsp?uno=<%= uno %>"><h2><b><%= vo.getNickname() %> ���� �ۼ��� �� ���</b></h2></a>
		</td>
		<td colspan="3" valign="bottom">
			<a href="javascript:Dodelete();"><div class="dbutton" style="margin-top: 22px">���û���</div></a>
		</td>
	</tr>
	<tr>
		<td colspan="6" height="5px">
			<hr>
		</td>
	</tr>
	<tr height="10px">
		<td align="center" width="10px">
			<input type="checkbox" value="all">
		</td>
		<td align="center" width="100px">��ȣ</td>
		<td align="center">����</td>
		<td align="center" width="180px">�۾���</td>
		<td align="center" width="100px">�ۼ���</td>
		<td align="center" width="50px">��ȸ��</td>
	</tr>
	<tr height="10px">
		<td colspan="6"><hr></td>
	</tr>
	<%
	if(list.size() == 0)
	{
		%>
		<tr>
			<td align="center" colspan="6">�ۼ��� ���� �����ϴ�.</td>
		</tr>
		<%
	}
	
	for(CommunityVO cvo : list)
	{
	%>
	<tr height="30px">
		<td align="center" width="10px">
		<input type="checkbox" name="delNo" id="delNo" value="<%= cvo.getNo() %>"  onclick='getCheckedCnt()'>
		</td>
		<td align="center"><%= cvo.getNo() %></td>
		<td align="left"><a href="../community/communityview.jsp?no=<%= cvo.getNo() %>" target="_blank">
			<div class="div1"">
				<%
				if(cvo.getTitle().length() > 36)
				{
					%>
						<%= cvo.getTitle().substring(0,35) %>...
					<%
				} else
				{
				%><%= cvo.getTitle() %><%
				}
				%>
				</a>
				<%
					if( !cvo.getRecount().equals("0"))
					{
						%><span style="padding: 0px 0px; background-color:white; color:#ff6600">(<%= cvo.getRecount() %>)</span><%
								
					}			
				%>
			</div></a>
		</td>
		<td align="center"><%= cvo.getNickname() %></td>
		<td align="center"><%= cvo.getWdate() %></td>
		<td align="center"><%= cvo.getHit() %></td>
	</tr>
	<tr height="10px">
		<td colspan="6"><hr></td>
	</tr>
	<%
	}
	%>
	<tr>
		<td colspan="6" align="center">
			<%
			//����¡ 5�ܰ� : ����, ���� �� ������ ���
			//���� ������ ��ȣ�� 16�϶� ���� �� ������ : 11, ���� �� ������ :20
			int startBlock = ((page_no-1)/10)*10; //���� ��� ������
			startBlock  += 1;
			int endBlock = startBlock + 10 - 1; //���� �� ������
			if(endBlock > totalPage)
			{
				//���� ��� �������� ��ü ���������� ũ��
				endBlock = totalPage;
			}
			
			//����¡ 6�ܰ� : ���� , ���� �� ǥ���Ѵ�.
			
			if( startBlock > 10)
			{
				%>
				<a href="userclist.jsp?uno=<%= uno %>&page=<%= startBlock - 1 %>">������</a>
				<%
				
			}
			
			for(int i = startBlock; i <= endBlock; i++)
			{	
				if( i == page_no )
				{
					%>
					<a style="color:red" "href="userclist.jsp?uno=<%= uno %>&page=<%= i %>"><%= i %></a>&nbsp;
					<%
				}else
				{
					%>
					<a href="userclist.jsp?uno=<%= uno %>&page=<%= i %>"><%= i %></a>&nbsp;
					<%
				}
			}
			
			//������ ǥ��
			
			if( endBlock < totalPage)
			{
				%>
				<a href="userclist.jsp?uno=<%= uno %>&page=<%= endBlock + 1 %>">������</a>
				<%
				
			}
			%>
		</td>
	</tr>
</table>
</form>

<%@ include file="../include/tail.jsp" %> 