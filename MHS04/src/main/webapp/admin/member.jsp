<%@page import="mhs.dto.ListDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="mhs.vo.UserVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="../admininclude/head.jsp" %> 
<%
String isretire = request.getParameter("isretire");
String newest	= request.getParameter("newest");
String gender   = request.getParameter("gender");
String key      = request.getParameter("key");
if(newest == null)   newest   = "";
if(isretire == null) isretire = "";
if(gender == null)   gender   = "";
if(key == null)      key   	  = "";

int page_no = 1;
//����¡ 4�ܰ� : �������κ��� ������ ��ȣ�� �޴´�. ex)index.jsp?page=3
try
{
	page_no = Integer.parseInt(request.getParameter("page"));
}catch(Exception e){}

ListDTO dto = new ListDTO();

//����¡ 1�ܰ�: ��ü �Խù� ������ ��´�.
int totalData = dto.GetuTotal(isretire,key,gender);

//����¡ 2�ܰ� : ��ü ������ ������ ����Ѵ�.
int totalPage = totalData / 10;
if(totalData % 10 != 0)
{
	//10���� ���� �������� 0�� �ƴϸ�
	//��ü ������ ���� ����
	totalPage++;
}

ArrayList<UserVO> list = dto.GetuList(page_no, isretire , key, newest, gender);
%>
<script>

window.onload = function() 
{
	$("#key").keyup(function (event)
	{
		if (event.keyCode == 13) 
		{
			DoSearch();
		}
		
	});
}

function DoSearch() 
{
	var nick = $("#key").val();
	if(nick == null || nick == "")
	{
		alert("�˻�� �Է��� �ּ���.");
		return;
	}
	
	document.location.href = "member.jsp?gender=<%= gender %>&isretire=<%= isretire %>&newest=<%= newest %>&key="+nick;
}

function ChangeGender() 
{
	$("#memberGender").css('display','none');
	$("#gender").css('display','');
}

function DoSearchGender() 
{
	var gen = $("#gender").val();
	document.location.href = "member.jsp?gender=" + gen + "&isretire=<%= isretire %>&newest=<%= newest %>&key=<%= key %>";
}

</script>
<tr>
	<td colspan="11"><a href="member.jsp"><font style="font-size: 30px; font-weight: bold;">����� ����</font></a>
		<span style="background-color: white; padding: 0 0; margin-left: 560px">
			<%
			if( key == null || key.equals(""))
			{
				%>
				<input type="text" id="key" name="key" placeholder="�г��Ӱ˻�" style="width:100px;">
				<%
			} else
			{
				%>
				<input type="text" id="key" name="key" value="<%= key %>" style="width:100px;">
				<%
			}
			%>
			<input type="button" value="�˻�" onclick="DoSearch();">
		</span>
		<hr>
	</td>
</tr>
<tr height="30px">
	<td align="center" width="70px">
		<%
			if(newest.equals("newest"))
			{
				%>
					<a href="member.jsp?gender=<%= gender %>&isretire=<%= isretire %>&key=<%= key %>">ȸ����ȣ��</a>
				<%
			}else
			{
				%>
					<a href="member.jsp?gender=<%= gender %>&isretire=<%= isretire %>&newest=newest&key=<%= key %>">ȸ����ȣ��</a>
				<%	
			}
		%>
	</td>
	<td align="center" width="110px">���̵�</td>
	<td align="center" width="110px">�г���</td>
	<td align="center" width="70px">�̸�</td>
	<td align="center" width="55px">
		<select name="gender" id="gender" onchange="DoSearchGender();" style="display: none; width: 54px; height: 25px" >
			<option value="" <%= gender.equals("") ? "selected" : "" %>>����</option>
			<option value="M" <%= gender.equals("M") ? "selected" : "" %>>����</option>
			<option value="W" <%= gender.equals("W") ? "selected" : "" %>>����</option>
		</select>
		<%
			if(gender == null || gender.equals(""))
			{
				%>
					<a href="javascript:ChangeGender();" id="memberGender">����</a>
				<%
			}else if(gender.equals("M"))
			{
				%>
					<a href="javascript:ChangeGender();" id="memberGender"><font color="red"><b>����</b></font></a>
				<%	
			} else if(gender.equals("W"))
			{
				%>
					<a href="javascript:ChangeGender();" id="memberGender"><font color="red"><b>����</b></font></a>
				<%	
			}
		%>
	</td>
	<td align="center" width="80px">�������</td>
	<td align="center" width="70px">����ü��</td>
	<td align="center" width="80px">������</td>
	<td align="center" width="40px">
		<%
			if(isretire.equals("Y"))
			{
				%>
					<a href="member.jsp?gender=<%= gender %>&newest=<%= newest %>&key=<%= key %>"><font color="red"><b>Ż��</b></font></a>
				<%
			}else
			{
				%>
					<a href="member.jsp?gender=<%= gender %>&isretire=Y&newest=<%= newest %>&key=<%= key %>">Ż��</a>
				<%	
			}
		%>
	</td>
	<td align="center" width="20px"></td>
</tr>
<tr>
	<td colspan="11"><hr></td>
</tr>
<%

if(list.size() == 0)
{
	%>
	<tr height="50px">
		<td align="center" colspan="11">ȸ���� �����ϴ�.</td>
	</tr>
	<%
}


for(UserVO vo : list)
{
	%>
		<tr>
			<td align="center"><%= vo.getUno() %></td>
			<td align="center">
				<a href="memberpage.jsp?uno=<%= vo.getUno() %>"><%= vo.getId() %></a>
			</td>
			<td align="center">
				<a href="memberpage.jsp?uno=<%= vo.getUno() %>"><%= vo.getNickname() %></a>
			</td>
			<td align="center"><%= vo.getName() %></td>
			<td align="center"><%= vo.getGender() %></td>
			<td align="center"><%= vo.getBirth() %></td>
			<td align="center">
			<%
			if(vo.getCon().equals("���� ü�� �˻��ϱ�"))
			{
				%>X<%
			}else
			{
				%>
					<%= vo.getCon() %>
				<%
			}
			%>
			</td>
			<td align="center"><%= vo.getJoindate() %></td>
			<td align="center"><%= vo.getIsretire() %></td>
			<td valign="middle">
				<a href="memberpage.jsp?uno=<%= vo.getUno() %>">
				<img src="../image/setup.png" style="width:20px; height: 20px"></a>
			</td>
		</tr>
		<tr>
			<td colspan="11"><hr></td>
		</tr>
	<%
}
%>
<tr>
	<td colspan="11" align="center">
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
				<a href="member.jsp?gender=<%= gender %>&page=<%= startBlock - 1 %>&isretire=<%= isretire %>&newest=<%= newest %>&key=<%= key %>">������</a>
				<%
				
			}
			
			for(int i = startBlock; i <= endBlock; i++)
			{	
				if( i == page_no )
				{
					%>
					<a style="color:red" "href="member.jsp?gender=<%= gender %>&page=<%= i %>&isretire=<%= isretire %>&newest=<%= newest %>&key=<%= key %>"><%= i %></a>&nbsp;
					<%
				}else
				{
					%>
					<a href="member.jsp?&page=<%= i %>&gender=<%= gender %>&isretire=<%= isretire %>&newest=<%= newest %>&key=<%= key %>"><%= i %></a>&nbsp;
					<%
				}
			}
			
			//������ ǥ��
			
			if( endBlock < totalPage)
			{
				%>
				<a href="member.jsp?gender=<%= gender %>&page=<%= endBlock + 1 %>&isretire=<%= isretire %>&newest=<%= newest %>&key=<%= key %>">������</a>
				<%
			}
		%>
	</td>
</tr>
<%@ include file="../admininclude/tail.jsp" %> 