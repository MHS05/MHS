<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="mhs.dao.smtp" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>pw ã��</title>
		<script src="../js/jquery-3.7.1.js"></script>
	</head>
	<style>
	input
	{
		width:97%; 
		height:35px;
	}
	span
	{
		
		padding: 7px 30px;
		background-color : #4dd5b0;
		border-radius: 15px;
		cursor: pointer;
	}
	.button
	{
		text-decoration: none;
		color: black;
	}
	
	a
	{
		text-decoration: none;
		color: black;
	}
	</style>
	<body>
	<script>
	window.onload=function()
	{
		$("#id").focus();
		$("#id,#email,#emailnum").keyup(function(event)
		{
			if (event.keyCode == 13) 
			{
				searchid();
			}
		});
	}
	
	//���̵� ��ȿ�� �˻�
	$(function(){
       $("#id").keyup(function (event) {
            regexp = /[\{\}\[\]\/?.,;:|\)*~`!^\-_+<>@\#$%&\\\=\(\'\"]/g;
            v = $(this).val();
            if (regexp.test(v)) {
                $("#limitid").html("Ư�����ڴ� ��� �Ұ����Դϴ�.");
                $("#limitid").css("color","red");
                $(this).val(v.replace(regexp, ''));
            }
        });
	});
	
	//�̸��� ������ȣ ������
	function sendmail()
	{
		$.ajax({
			type : "post",
			url  : "sendmail.jsp",
			data : 
			{
				email : $("#email").val(),
			},					
			dataType : "html",
			success : function(data) 
			{
				data = data.trim();
				if(data == "001")
				{
					alert("�̸����� �Է����ּ���");
				}
				if(data == "002")
				{
					alert("�̸��� �߼ۿ� ���� �߽��ϴ�.");
				}
				else
				{
					$("#hiddennum").val(data);
				}
			} 
		});		
	}
	
	var checkcheck = 0; 
	function emailNumCheck()
	{
		if( $("#emailnum").val() == "" || $("#hiddennum").val() == "" )
		{
			alert("���� ����");
			checkcheck = 0;
			return;
		}
		if( $("#emailnum").val() == $("#hiddennum").val() )
		{
			alert("���� ����");
			$("#newpw").css("display","");
			$("#newpwcheck").css("display","");
			checkcheck = 1;
			return;
		}
		if( $("#emailnum").val() != $("#hiddennum").val() )
		{
			alert("���� ����");
			checkcheck = 0;
			return;
		}
	}
	
	//��й�ȣ ��ȿ�� �˻�
	function safetyPasswordPattern(str) 
	{
        var pass = str.value;
        var message = "";
        var color = "";
        var checknum = 0;
        var checksmall = 0;
        var checkbig = 0;
        var checktuk = 0;
        // �Է°��� ������쿡�� ����
        if(pass.length) 
        {
            // �ִ� �Է� ���ڼ��� �����Ѵ�.
            if(pass.length < 8 || pass.length > 12) 
            {
                message = "�ּ� 8�� �̻�, �ִ� 12�� ����";
                color = "#FF0000";
            }
            // ���ڿ��� ���̰� 8 ~ 16 �ΰ��
            else 
            {
                // ��й�ȣ ���ڿ��� ���� ���� ���� �˻�
                var pattern1 = /[0-9]/;  // ����
                if(pattern1.test(pass) == false) 
                {
                    checknum = checknum + 1;
                }
                // ��й�ȣ ���ڿ��� ���� �빮�� ���� ���� �˻�
                var pattern3 = /[A-Z]/;
                if(pattern3.test(pass) == false) 
                {
                    checkbig = checkbig + 1;
                }
                // ��й�ȣ ���ڿ��� Ư������ ���� ���� �˻�
                var pattern4 = /[~!@#$%^&*()_+|<>?:{}]/;  // Ư������
                if(pattern4.test(pass) == false) 
                {
                    checktuk = checktuk + 1;
                }

                if(checknum == 1 || checkbig == 1 || checktuk == 1) 
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
	
	function searchpw()
	{
		if($("#id").val() == "")
		{
			$("#limitid").html("���̵� �Է��ϼ���.");
			$("#limitid").css("color","red");
			$("#id").focus();
			return;
		}
		if($("#email").val() == "")
		{
			$("#limitemail").html("�̸����� �Է��ϼ���.");
			$("#limitemail").css("color","red");
			$("#email").focus();
			return;
		}
		if($("#emailnum").val() == "")
		{
			$("#limitemailnum").html("������ȣ�� �Է��ϼ���.");
			$("#limitemailnum").css("color","red");
			$("#emailnum").focus();
			return;
		}
		if( $("#pw").val() != $("#pwcheck").val() )
		{
			alert("��й�ȣ�� ��ġ���� �ʽ��ϴ�.");
			return;
		}
		
		$.ajax({
			type : "post",
			url  : "idcheck.jsp",
			data : 
			{
				id : $("#id").val(),
			},					
			dataType : "html",
			success : function(data) 
			{
				data = data.trim();
				if( data == "002" )
				{
					alert("���� �̸��Դϴ�.");
				}
				else{}
			} 
		});
		
		$.ajax({
			type : "post",
			url  : "pwmodify.jsp",
			data : 
			{
				id : $("#id").val(),
				pw : $("#pw").val(),
			},					
			dataType : "html",
			success : function(data) 
			{
				data = data.trim();
				if( data == "001")
				{
					alert("��й�ȣ�� �Է��ϼ���.");
				}
				else
				{
					alert("������ �Ϸ�Ǿ����ϴ�.");
				}
			} 
		});
		
	}
	</script>
	<form method="post" action="">
		<table width="400px" align="center" border="0" style="margin-top: 20px">
			<tr>
				<td	align="center" colspan="3">
					<h1>��й�ȣ ã��</h1>
				</td>
			</tr>
			<tr height="80px">
				<td	align="center" colspan="3"></td>
			</tr>
			<tr height="50px">
				<td	align="center" width="125px">
					���̵�*
				</td>
				<td>
					<input type="text" id="id" name="id" maxlength="12" placeholder="���̵� �Է����ּ���">
					<div id="limitid" style="font-size:15px;"></div>
				</td>
			</tr>
			<tr height="50px">
				<td	align="center">
					�̸���*
				</td>
				<td>
					<input type="text" name="email" id="email" placeholder="�̸����� �Է����ּ���" style="width: 95%; height: 30px">
					<div id="limitemail" style="font-size:15px;"></div>
				</td>
				<td>
					<input type="button" value="����" onclick="sendmail()" style="width: 100%; height: 30px">
				</td>
			</tr>
			<tr>
				<td	align="center">
					������ȣ*
				</td>
				<td>
					<input type="hidden" id="hiddennum" name="hiddennum">
					<input type="text" name="emailnum" id="emailnum" placeholder="������ȣ�� �Է����ּ���." style="width: 95%; height: 30px">
					<div id="limitemailnum" style="font-size:15px;"></div>
				</td>
				<td>
					<input type="button" name="numcheck" id="numcheck" value="Ȯ��" onclick="emailNumCheck()" style="width: 100%; height: 30px">
				</td>
			</tr>
			<tr id="newpw" style="display:none;">
				<td	align="center">
					���ο� ��й�ȣ*
				</td>
				<td>
					<input type="password" name="pw" id="pw" maxlength="12" onkeyup="safetyPasswordPattern(this);" placeholder="���ο� ��й�ȣ�� �Է����ּ���." style="width: 95%; height: 30px">
					<div id="limitpw" style="font-size:15px;"></div>
				</td>
			</tr>
			<tr id="newpwcheck" style="display:none;">
				<td	align="center">
					��й�ȣ Ȯ��*
				</td>
				<td>
					<input type="password" name="pwcheck" id="pwcheck" maxlength="12" placeholder="��й�ȣ�� �Է����ּ���." style="width: 95%; height: 30px">
					<div id="limitepwcheck" style="font-size:15px;"></div>
				</td>
			</tr>
			<tr height="80px">
				<td colspan="3">
				</td>
			</tr>
			<tr height="50px">
				<td	align="center" colspan="3">
					<span onclick="searchpw()"> ����</span>
					<span style="background-color: lightgray" onclick="window.history.back()">���</span>
				</td>
			</tr>
		</table>
	</form>
	</body>
</html>