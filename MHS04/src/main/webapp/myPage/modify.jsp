<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="../include/head.jsp" %> 
<%
String uno  = request.getParameter("uno");
String con  = request.getParameter("con");
String pw   = request.getParameter("pw");
String nick = request.getParameter("nickname");

UserDTO dto = new UserDTO();
UserVO vo = dto.Read(uno);
%>
<script>
	var nickcheck   = 1;
	var checknum    = 0;
	var checkbig    = 0;
	var checktuk    = 0;
	var checklength = 0;


	function retest() 
	{
		window.open('../constitution/cTest.jsp?uno=<%= loginVO.getUno() %>', '', 'width=2000, height=1000');
		 $('#mycon').css('display', 'none');
		 $('#dcon').css('display', 'none');
		 $('#choicecon').css('display', '');
	}
	
    function cancel() 
    {
        $('#dcon').css('display', 'none');
        $('#test').css('display', 'none');
        $('#mycon').css('display', 'block');
        $('#retest').css('display', 'block');
    }
    
    function changepw() 
    {
        $('#mypw').css('display', 'none');
        $('#pwchange').css('display', '');
        $('#pwcheck').css('display', '');
    }
    
    function pwcancel() 
    {
        $('#pwchange').css('display', 'none');
        $('#pwcheck').css('display', 'none');
        $('#mypw').css('display', '');
    }
    
    function changenick() 
    {
    	nickcheck = 0;
        $('#mynick').css('display', 'none');
        $('#nickch').css('display', '');
    }
    
    function nickcancel() 
    {
    	nickcheck = 1;
        $('#nickch').css('display', 'none');
        $('#mynick').css('display', '');
    }
    
	function setChildValue(con)
	{	
		//�˾�â(�ڽ�â)���� �� ���� �ޱ�
		document.getElementById("constitution").value = con;
	}
	

	//��й�ȣ ��ȿ�� �˻�
	function safetyPasswordPattern(str) 
	{
        var pass       = str.value;
        var message    = "";
        var color      = "";
        // �Է°��� ������쿡�� ����
        if(pass.length) 
        {
            // �ִ� �Է� ���ڼ��� �����Ѵ�.
            if(pass.length < 8) 
            {
                message = "�ּ� 8�� �̻�, �ִ� 12�� ����";
                color = "#FF0000";
            	checklength = checklength + 1;
            }
            // ���ڿ��� ���̰� 8 ~ 16 �ΰ��
            else 
            {
                checklength = 0;
                // ��й�ȣ ���ڿ��� ���� ���� ���� �˻�
                var pattern1 = /[0-9]/;  // ����
                if(pattern1.test(pass) == false) 
                {
                    checknum = checknum + 1;
                } else
                {
                	 checknum = 0;
                }
                // ��й�ȣ ���ڿ��� ���� �빮�� ���� ���� �˻�
                var pattern3 = /[A-Z]/;
                if(pattern3.test(pass) == false) 
                {
                    checkbig = checkbig + 1;
                } else
                {
                	checkbig = 0;
                }
                // ��й�ȣ ���ڿ��� Ư������ ���� ���� �˻�
                var pattern4 = /[~!@#$%^&*()_+|<>?:{}]/;  // Ư������
                if(pattern4.test(pass) == false) 
                {
                    checktuk = checktuk + 1;
                } else
                {
                	checktuk = 0;
                }

                if(checknum != 0 || checkbig != 0 || checktuk != 0 || checklength != 0) 
                {
                    message = "����, ���� �빮��, Ư�����ڸ� �����ؼ� �Է����ּ���.";
                    color = "#FF0000";
                } 
            }
        }
        else 
        {
            message = "��й�ȣ�� �Է��� �ּ���";
            color = "#FF0000";
        }
        document.getElementById("limitpw").innerHTML = message;
        document.getElementById("limitpw").style.color = color;
    }
	
	function modifypw()
	{
		if( checknum != 0 || checkbig != 0 || checktuk != 0 || checklength != 0 )
		{
			alert("��й�ȣ�� Ȯ���ϼ���.");
			return;
		}
		
		if( $("#pw").val() == "" ) //pw��� �̸��� pw�� ���� �޾Ƽ� ���̸� �Ʒ� ���
		{	
			alert("������ ��й�ȣ�� �Է��ϼ���."); //������ ��й�ȣ�� �Է��ϼ���.��� ��� ���
			$("#pw").focus();
			return;
		}
		
		if( $("#pwch").val() == "" )
		{	
			alert("Ȯ���� ��й�ȣ�� �Է��ϼ���.");
			$("#pwch").focus();
			return;
		}
		
		if( $("#pw").val() != $("#pwch").val() )
		{	
			alert("��й�ȣ�� ��ġ���� �ʽ��ϴ�.");
			$("#pwch").focus();
			return;
		}
		
		pw = $("#pw").val();
		
		$.ajax({
			type     : "post",
			url      : "pwmodifyok.jsp?pw=" + pw +"&uno=" + <%= vo.getUno() %>,
			dataType : "html"       ,
			success : function(data)
			{
				// ����� ���������� �̷�������� �� �Լ��� Ÿ�Եȴ�.
				data = data.trim();
				alert("��й�ȣ�� �����Ǿ����ϴ�.");
		        $('#pwchange').css('display', 'none');
		        $('#pwcheck').css('display', 'none');
		        $('#mypw').css('display', '');
			}
		});
		return;
	}
	
	function safetynickPattern(str) 
	{
		var pass = str.value;
        var message = "";
        var color = "";
        
    	 // �Է°��� ������쿡�� ����
        if(pass.length) 
        {
	     	// �Է°��� ����, �ѱ�, ������ ��쿡�� ����
	      	var nickpattern = /[\{\}\[\]\/?.,;:|\)*~`!^\-_+<>@\#$%&\\\=\(\'\"]/g;
	        if(nickpattern.test(pass)) 
	        {
	        	pass = pass.replace(nickpattern, '');
	        	console.log("NICK:" + pass);
	        	$("#nick").val(pass);
	        	//str.value = pass;
	        	message = "Ư�����ڴ� �̿��� �� �����ϴ�.";
	            color = "#FF0000";
	        }	        
        }   	 
        else 
        {
            message = "Ư�����ڴ� �̿��� �� �����ϴ�.";
            color = "#FF0000";
        }
     
        document.getElementById("limitnick").innerHTML   = message;
        document.getElementById("limitnick").style.color = color;
	}
	
	
	
	function checknick()
	{
		nick = $("#nick").val();
		
		$.ajax({
			type     : "get",
			url      : "../login/nickcheck.jsp?nick=" + nick +"&uno=" + <%= vo.getUno() %>,
			dataType : "html"       ,
			success : function(data)
			{
				// ����� ���������� �̷�������� �� �Լ��� Ÿ�Եȴ�.
				data = data.trim();
				if( data == "003" )
				{
					alert("�ߺ��� �г����Դϴ�.");
					nickcheck = 0;
					return;
				} else
				{
					alert("��밡���� �г��� �Դϴ�.");
					nickcheck = 1;
				}
			}
		});
	}
	
	function mypage()
	{
		location.href="myPage.jsp?uno=" + <%= uno %>;		
	}
	
	function modifycon()
	{
		if( $("#nick").val() == "" ) 
		{	
			alert("������ �г����� �Է��ϼ���."); 
			$("#nick").focus();
			return;
		}
		
		con = $("#constitution").val();
		nick = $("#nick").val();
		
		if( nickcheck == 1 )
		{
			$.ajax({
				type     : "post",
				url      : "modifycon.jsp?nick=" + nick + "&con=" + con +"&uno=" + <%= vo.getUno() %>,
				dataType : "html"       ,
				success : function(data)
				{
					// ����� ���������� �̷�������� �� �Լ��� Ÿ�Եȴ�.
					data = data.trim();
					alert("�����Ǿ����ϴ�.");
			        location.href="modify.jsp?uno=" + <%= uno %>;
				}
			});
		} else
		{
			alert("�г��� �ߺ� üũ�� ���ּ���");
		}
	}
</script>
<style>

	input[type=button]
	{
		
		cursor:pointer;
		background-color:lightgray;
		border:0;
		border-radius: 5px;
	
	}
</style>
		<table border="0" width="1200px" align="center" style="margin-top: 10px">
			<tr>
				<td rowspan="12" width="300px"></td>
				<td colspan="3" align="left"> 
					<h2>ȸ����������</h2>
					<hr>
				</td>
				<td rowspan="11" width="100px"></td>
			</tr>
			<tr>
				<td width="120px" height="50px">���̵�*</td>
				<td><%= vo.getId() %></td>
				<td></td>
			</tr>
			<tr style="display:;" id="mypw">
				<td height="50px">��й�ȣ*</td>
				<td id="userpw">********</td>
				<td width="400px">
					<input type="button" onclick="javascript:changepw();" value="��й�ȣ ����" style="height:30px; font-size:15px">
				</td>
			</tr>
			<tr style="display:none;" id="pwchange">
				<td height="50px">���� ��й�ȣ*</td>
				<td>
					<input type="password" id="pw" maxlength="12" style="width:200px;height:20px;" onkeyup="safetyPasswordPattern(this)">
					<div id="limitpw" style="font-size:15px;"></div>
				</td>
				<td width="400px"></td>
			</tr>
			<tr style="display:none;" id="pwcheck">
				<td height="50px">��й�ȣ Ȯ��*</td>
				<td>
					<input type="password" id="pwch" style="width:200px; height:20px">
				</td>
				<td>
					<input type="button" value="��й�ȣ ����" onclick="modifypw();" style="height:30px; font-size:15px">
					<input type="button" value="���" style="height:30px; font-size:15px" onclick="javascript:pwcancel();">
				</td>
			</tr>
			<tr>
				<td height="50px">�̸�*</td>
				<td><%= vo.getName() %></td>
				<td></td>
			</tr>
			<tr id="mynick">
				<td height="50px">�г���*</td>
				<td id="usernick"><%= vo.getNickname() %></td>
				<td>
					<input type="button" value="�г��� ����" onclick="changenick();" style="height:30px; font-size:15px">
				</td>
			</tr>
			<tr id="nickch" style="display: none">
				<td height="50px">�г���*</td>
				<td>
					<input type="text" id="nick" name="nick" value="<%= vo.getNickname() %>" onkeyup="safetynickPattern(this);" style="width:250px; height:25px">
					<div id="limitnick" style="font-size:15px;"></div>
				</td>
				<td>
					<input type="button" value="�ߺ�Ȯ��" onclick="javascript:checknick();" style="height:30px; font-size:15px">
					<input type="button" value="���" style="height:30px; font-size:15px" onclick="javascript:nickcancel();">
				</td>
			</tr>
			<tr>
				<td height="50px">����*</td>
				<td><%= vo.getGender() %></td>
				<td></td>
			</tr>
			<tr>
				<td height="50px">�������*</td>
				<td><%= vo.getBirth() %></td>
				<td></td>
			</tr>
			<tr>
				<td height="50px">���� ü��*</td>
				<td>
					<%
					if( !vo.getCon().equals("���� ü�� �˻��ϱ�") )
					{
						%>
						<div name="mycon" id="mycon"><%= vo.getCon() %></div>
						<%
					}
					else
					{
					%>
					<div name="dcon" id="dcon">
						<select name="constitution" id="constitution" style="width: 150px; height: 30px ">
							<option value="���� ü�� �˻��ϱ�">����</option>	
							<option value="�¾���">�¾���</option>	
							<option value="������">������</option>	
							<option value="�Ҿ���">�Ҿ���</option>	
							<option value="������">������</option>
						</select>
					</div>
					<%
					}
					%>
					<div name="choicecon" id="choicecon" style="display:none;">
						<select name="constitution" id="constitution" style="width: 150px; height: 30px ">
							<option <%= loginVO.getCon().equals("���� ü�� �˻��ϱ�") ? "selected" : "" %> value="���� ü�� �˻��ϱ�">����</option>	
							<option <%= loginVO.getCon().equals("�¾���") ? "selected" : "" %> value="�¾���">�¾���</option>	
							<option <%= loginVO.getCon().equals("������") ? "selected" : "" %> value="������">������</option>	
							<option <%= loginVO.getCon().equals("�Ҿ���") ? "selected" : "" %> value="�Ҿ���">�Ҿ���</option>	
							<option <%= loginVO.getCon().equals("������") ? "selected" : "" %> value="������">������</option>
						</select>
					</div>
				</td>
				<td>
					<div name="retest" id="retest">
					<a href="javascript:retest();">
					<input type="button" style="height:30px; font-size:15px" value="���� ü�� ��˻��ϱ�"></a>
					</div> 
				</td>
			</tr>
			<tr>
				<td height="50px">�̸���*</td>
				<td><%= vo.getEmail() %></td>
				<td></td>
			</tr>
			<tr height="50px">
				<td colspan="3"></td>
			</tr>
			<tr>
				<td colspan="3" align="center">
						<input type="button" value="�����Ϸ�" onclick="modifycon();" style="width:100px; height:30px; font-size:15px; background-color:#4dd5b0;">
					<a href="myPage.jsp?uno=<%= uno %>">
						<input type="button" value="���" style="width:100px; height:30px; font-size:15px"></a>
				</td>
			</tr>
		</table>
<%@ include file="../include/tail.jsp" %> 