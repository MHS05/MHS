<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
String uno = request.getParameter("uno");
String con = request.getParameter("con");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ü���˻� �׽�Ʈ</title>
<script src="jquery-3.7.1.js"></script>
</head>
<body>
<style>
	#result 
	{
		border: none;
		width: 150px;
		height: 50px;
		background-color: #4dd5b0;
		border-radius: 15px;
		font-size: 17px;
	}
	
	#reset 
	{
		border: none;
		width: 150px;
		height: 50px;
		background-color: #BEBEBE;
		border-radius: 15px;
		font-size: 17px;
	}
	
	td 
	{
		font-size: 30px;
	}
	
	section 
	{
		height: 80vh;
		display: flex;
		align-items: center;
		justify-content: center;
	}
	
	input[type=radio]
	{
	
	width: 1.5em;
	height: 1.5em;
	
	}
	
</style>
<script>
	//18��~20�� ���� ���ý� ��ũ�� ��������
	function GoToScroll(name) 
	{
		if(name == "r")
		{
		    var location = document.querySelector("." + name).offsetTop;
		    window.scrollTo({top: location, behavior: 'smooth'});
		} else if(name == "s")
		{	
			if(        $("input:radio[name='q_19_1']:checked").length == 1
					&& $("input:radio[name='q_19_2']:checked").length == 1 
					&& $("input:radio[name='q_19_3']:checked").length == 1 
					&& $("input:radio[name='q_19_4']:checked").length == 1 
					&& $("input:radio[name='q_19_5']:checked").length == 1 
					&& $("input:radio[name='q_19_6']:checked").length == 1 
					&& $("input:radio[name='q_19_7']:checked").length == 1 
				)
			{
			    var location = document.querySelector("." + name).offsetTop;
			    window.scrollTo({top: location - 300, behavior: 'smooth'});
			}
		}else if(name == "t")
		{	
			if($("input:radio[name='q_20_1']:checked").length == 1
					&& $("input:radio[name='q_20_2']:checked").length == 1 
					&& $("input:radio[name='q_20_3']:checked").length == 1 
					&& $("input:radio[name='q_20_4']:checked").length == 1 
					&& $("input:radio[name='q_20_5']:checked").length == 1 
					&& $("input:radio[name='q_20_6']:checked").length == 1 
					&& $("input:radio[name='q_20_7']:checked").length == 1 
			)
			{
			    var location = document.querySelector("." + name).offsetTop;
			    window.scrollTo({top: location - 300, behavior: 'smooth'});
			}
		}else if(name == "u")
		{	
			if($("input:radio[name='q_21_1']:checked").length == 1
					&& $("input:radio[name='q_21_2']:checked").length == 1 
					&& $("input:radio[name='q_21_3']:checked").length == 1 
					&& $("input:radio[name='q_21_4']:checked").length == 1 
					&& $("input:radio[name='q_21_5']:checked").length == 1 
					&& $("input:radio[name='q_21_6']:checked").length == 1 
					&& $("input:radio[name='q_21_7']:checked").length == 1 
			)
			{
			    var location = document.querySelector("." + name).offsetTop;
			    window.scrollTo({top: location - 300, behavior: 'smooth'});
			}
		} 

	}
	
	//1~17������ ���ý� ��ũ�� ��������
	function goToScroll(name) 
	{
		var location = document.querySelector("." + name).offsetTop;
  		window.scrollTo({top: location - 400, behavior: 'smooth'});
	}
	
	
	//������ ������ ��� ���ϱ�
	function go_insert() {

		j = 0;
		for (var i = 0; i < form3.q_1.length; i++) {
			if (form3.q_1[i].checked == true) {
				j = 1
			}
		}
		if (j == 0) {
			alert("1�� ������ Ǯ���ּ���")
			var location = document.querySelector("." + "first").offsetTop;
  			window.scrollTo({top: location - 400, behavior: 'smooth'});
			return;
		}

		j = 0;
		for (var i = 0; i < form3.q_2.length; i++) {
			if (form3.q_2[i].checked == true) {
				j = 1
			}
		}
		if (j == 0) {
			alert("2�� ������ Ǯ���ּ���")
			var location = document.querySelector("." + "a").offsetTop;
  			window.scrollTo({top: location - 400, behavior: 'smooth'});
			return;
		}

		j = 0;
		for (var i = 0; i < form3.q_3.length; i++) {
			if (form3.q_3[i].checked == true) {
				j = 1
			}
		}
		if (j == 0) {
			alert("3�� ������ Ǯ���ּ���")
			var location = document.querySelector("." + "b").offsetTop;
  			window.scrollTo({top: location - 400, behavior: 'smooth'});
			return;
		}

		j = 0;
		for (var i = 0; i < form3.q_4.length; i++) {
			if (form3.q_4[i].checked == true) {
				j = 1
			}
		}
		if (j == 0) {
			alert("4�� ������ Ǯ���ּ���")
			var location = document.querySelector("." + "c").offsetTop;
  			window.scrollTo({top: location - 400, behavior: 'smooth'});
			return;
		}

		j = 0;
		for (var i = 0; i < form3.q_5.length; i++) {
			if (form3.q_5[i].checked == true) {
				j = 1
			}
		}
		if (j == 0) {
			alert("5�� ������ Ǯ���ּ���")
			var location = document.querySelector("." + "d").offsetTop;
  			window.scrollTo({top: location - 400, behavior: 'smooth'});
			return;
		}

		j = 0;
		for (var i = 0; i < form3.q_6.length; i++) {
			if (form3.q_6[i].checked == true) {
				j = 1
			}
		}
		if (j == 0) {
			alert("6�� ������ Ǯ���ּ���")
			var location = document.querySelector("." + "e").offsetTop;
  			window.scrollTo({top: location - 400, behavior: 'smooth'});
			return;
		}

		j = 0;
		for (var i = 0; i < form3.q_7.length; i++) {
			if (form3.q_7[i].checked == true) {
				j = 1
			}
		}
		if (j == 0) {
			alert("7�� ������ Ǯ���ּ���")
			var location = document.querySelector("." + "f").offsetTop;
  			window.scrollTo({top: location - 400, behavior: 'smooth'});
			return;
		}

		j = 0;
		for (var i = 0; i < form3.q_8.length; i++) {
			if (form3.q_8[i].checked == true) {
				j = 1
			}
		}
		if (j == 0) {
			alert("8�� ������ Ǯ���ּ���")
			var location = document.querySelector("." + "g").offsetTop;
  			window.scrollTo({top: location - 400, behavior: 'smooth'});
			return;
		}

		j = 0;
		for (var i = 0; i < form3.q_9.length; i++) {
			if (form3.q_9[i].checked == true) {
				j = 1
			}
		}
		if (j == 0) {
			alert("9�� ������ Ǯ���ּ���")
			var location = document.querySelector("." + "h").offsetTop;
  			window.scrollTo({top: location - 400, behavior: 'smooth'});
			return;
		}

		j = 0;
		for (var i = 0; i < form3.q_10.length; i++) {
			if (form3.q_10[i].checked == true) {
				j = 1
			}
		}
		if (j == 0) {
			alert("10�� ������ Ǯ���ּ���")
			var location = document.querySelector("." + "i").offsetTop;
  			window.scrollTo({top: location - 400, behavior: 'smooth'});
			return;
		}

		j = 0;
		for (var i = 0; i < form3.q_11.length; i++) {
			if (form3.q_11[i].checked == true) {
				j = 1
			}
		}
		if (j == 0) {
			alert("11�� ������ Ǯ���ּ���")
			var location = document.querySelector("." + "j").offsetTop;
  			window.scrollTo({top: location - 400, behavior: 'smooth'});
			return;
		}

		j = 0;
		for (var i = 0; i < form3.q_12.length; i++) {
			if (form3.q_12[i].checked == true) {
				j = 1
			}
		}
		if (j == 0) {
			alert("12�� ������ Ǯ���ּ���")
			var location = document.querySelector("." + "k").offsetTop;
  			window.scrollTo({top: location - 400, behavior: 'smooth'});
			return;
		}

		j = 0;
		for (var i = 0; i < form3.q_13.length; i++) {
			if (form3.q_13[i].checked == true) {
				j = 1
			}
		}
		if (j == 0) {
			alert("13�� ������ Ǯ���ּ���")
			var location = document.querySelector("." + "l").offsetTop;
  			window.scrollTo({top: location - 400, behavior: 'smooth'});
			return;
		}

		j = 0;
		for (var i = 0; i < form3.q_14.length; i++) {
			if (form3.q_14[i].checked == true) {
				j = 1
			}
		}
		if (j == 0) {
			alert("14�� ������ Ǯ���ּ���")
			var location = document.querySelector("." + "m").offsetTop;
  			window.scrollTo({top: location - 400, behavior: 'smooth'});
			return;
		}

		j = 0;
		for (var i = 0; i < form3.q_15.length; i++) {
			if (form3.q_15[i].checked == true) {
				j = 1
			}
		}
		if (j == 0) {
			alert("15�� ������ Ǯ���ּ���")
			var location = document.querySelector("." + "n").offsetTop;
  			window.scrollTo({top: location - 400, behavior: 'smooth'});
			return;
		}

		j = 0;
		for (var i = 0; i < form3.q_16.length; i++) {
			if (form3.q_16[i].checked == true) {
				j = 1
			}
		}
		if (j == 0) {
			alert("16�� ������ Ǯ���ּ���")
			var location = document.querySelector("." + "o").offsetTop;
  			window.scrollTo({top: location - 400, behavior: 'smooth'});
			return;
		}

		j = 0;
		for (var i = 0; i < form3.q_17.length; i++) {
			if (form3.q_17[i].checked == true) {
				j = 1
			}
		}
		if (j == 0) {
			alert("17�� ������ Ǯ���ּ���")
			var location = document.querySelector("." + "p").offsetTop;
  			window.scrollTo({top: location - 400, behavior: 'smooth'});
			return;
		}

		j = 0;
		for (var i = 0; i < form3.q_18.length; i++) {
			if (form3.q_18[i].checked == true) {
				j = 1
			}
		}
		if (j == 0) {
			alert("18�� ������ Ǯ���ּ���")
			var location = document.querySelector("." + "q").offsetTop;
  			window.scrollTo({top: location - 400, behavior: 'smooth'});
			return;
		}

		j = 0;
		for (var i = 0; i < form3.q_19_1.length; i++) {
			if (form3.q_19_1[i].checked == true) {
				j = 1
			}
		}
		if (j == 0) {
			alert("19 ������ ��� Ǯ���ּ���")
			var location = document.querySelector("." + "r").offsetTop;
  			window.scrollTo({top: location - 400, behavior: 'smooth'});
			return;
		}

		j = 0;
		for (var i = 0; i < form3.q_19_2.length; i++) {
			if (form3.q_19_2[i].checked == true) {
				j = 1
			}
		}
		if (j == 0) {
			alert("19 ������ ��� Ǯ���ּ���")
			var location = document.querySelector("." + "r").offsetTop;
  			window.scrollTo({top: location - 400, behavior: 'smooth'});
			return;
		}

		j = 0;
		for (var i = 0; i < form3.q_19_3.length; i++) {
			if (form3.q_19_3[i].checked == true) {
				j = 1
			}
		}
		if (j == 0) {
			alert("19 ������ ��� Ǯ���ּ���")
			var location = document.querySelector("." + "r").offsetTop;
  			window.scrollTo({top: location - 400, behavior: 'smooth'});
			return;
		}

		j = 0;
		for (var i = 0; i < form3.q_19_4.length; i++) {
			if (form3.q_19_4[i].checked == true) {
				j = 1
			}
		}
		if (j == 0) {
			alert("19 ������ ��� Ǯ���ּ���")
			var location = document.querySelector("." + "r").offsetTop;
  			window.scrollTo({top: location - 400, behavior: 'smooth'});
			return;
		}

		j = 0;
		for (var i = 0; i < form3.q_19_5.length; i++) {
			if (form3.q_19_5[i].checked == true) {
				j = 1
			}
		}
		if (j == 0) {
			alert("19 ������ ��� Ǯ���ּ���")
			var location = document.querySelector("." + "r").offsetTop;
  			window.scrollTo({top: location - 400, behavior: 'smooth'});
			return;
		}

		j = 0;
		for (var i = 0; i < form3.q_19_6.length; i++) {
			if (form3.q_19_6[i].checked == true) {
				j = 1
			}
		}
		if (j == 0) {
			alert("19 ������ ��� Ǯ���ּ���")
			var location = document.querySelector("." + "r").offsetTop;
  			window.scrollTo({top: location - 400, behavior: 'smooth'});
			return;
		}

		j = 0;
		for (var i = 0; i < form3.q_19_7.length; i++) {
			if (form3.q_19_7[i].checked == true) {
				j = 1
			}
		}
		if (j == 0) {
			alert("19 ������ ��� Ǯ���ּ���")
			var location = document.querySelector("." + "r").offsetTop;
  			window.scrollTo({top: location - 400, behavior: 'smooth'});
			return;
		}

		j = 0;
		for (var i = 0; i < form3.q_20_1.length; i++) {
			if (form3.q_20_1[i].checked == true) {
				j = 1
			}
		}
		if (j == 0) {
			alert("20 ������ ��� Ǯ���ּ���")
			var location = document.querySelector("." + "s").offsetTop;
  			window.scrollTo({top: location - 400, behavior: 'smooth'});
			return;
		}

		j = 0;
		for (var i = 0; i < form3.q_20_2.length; i++) {
			if (form3.q_20_2[i].checked == true) {
				j = 1
			}
		}
		if (j == 0) {
			alert("20 ������ ��� Ǯ���ּ���")
			var location = document.querySelector("." + "s").offsetTop;
  			window.scrollTo({top: location - 400, behavior: 'smooth'});
			return;
		}

		j = 0;
		for (var i = 0; i < form3.q_20_3.length; i++) {
			if (form3.q_20_3[i].checked == true) {
				j = 1
			}
		}
		if (j == 0) {
			alert("20 ������ ��� Ǯ���ּ���")
			var location = document.querySelector("." + "s").offsetTop;
  			window.scrollTo({top: location - 400, behavior: 'smooth'});
			return;
		}

		j = 0;
		for (var i = 0; i < form3.q_20_4.length; i++) {
			if (form3.q_20_4[i].checked == true) {
				j = 1
			}
		}
		if (j == 0) {
			alert("20 ������ ��� Ǯ���ּ���")
			var location = document.querySelector("." + "s").offsetTop;
  			window.scrollTo({top: location - 400, behavior: 'smooth'});
			return;
		}

		j = 0;
		for (var i = 0; i < form3.q_20_5.length; i++) {
			if (form3.q_20_5[i].checked == true) {
				j = 1
			}
		}
		if (j == 0) {
			alert("20 ������ ��� Ǯ���ּ���")
			var location = document.querySelector("." + "s").offsetTop;
  			window.scrollTo({top: location - 400, behavior: 'smooth'});
			return;
		}

		j = 0;
		for (var i = 0; i < form3.q_20_6.length; i++) {
			if (form3.q_20_6[i].checked == true) {
				j = 1
			}
		}
		if (j == 0) {
			alert("20 ������ ��� Ǯ���ּ���")
			var location = document.querySelector("." + "s").offsetTop;
  			window.scrollTo({top: location - 400, behavior: 'smooth'});
			return;
		}

		j = 0;
		for (var i = 0; i < form3.q_20_7.length; i++) {
			if (form3.q_20_7[i].checked == true) {
				j = 1
			}
		}
		if (j == 0) {
			alert("20 ������ ��� Ǯ���ּ���")
			var location = document.querySelector("." + "s").offsetTop;
  			window.scrollTo({top: location - 400, behavior: 'smooth'});
			return;
		}

		j = 0;
		for (var i = 0; i < form3.q_21_1.length; i++) {
			if (form3.q_21_1[i].checked == true) {
				j = 1
			}
		}
		if (j == 0) {
			alert("21 ������ ��� Ǯ���ּ���")
			var location = document.querySelector("." + "t").offsetTop;
  			window.scrollTo({top: location - 400, behavior: 'smooth'});
			return;
		}

		j = 0;
		for (var i = 0; i < form3.q_21_2.length; i++) {
			if (form3.q_21_2[i].checked == true) {
				j = 1
			}
		}
		if (j == 0) {
			alert("21 ������ ��� Ǯ���ּ���")
			var location = document.querySelector("." + "t").offsetTop;
  			window.scrollTo({top: location - 400, behavior: 'smooth'});
			return;
		}

		j = 0;
		for (var i = 0; i < form3.q_21_3.length; i++) {
			if (form3.q_21_3[i].checked == true) {
				j = 1
			}
		}
		if (j == 0) {
			alert("21 ������ ��� Ǯ���ּ���")
			var location = document.querySelector("." + "t").offsetTop;
  			window.scrollTo({top: location - 400, behavior: 'smooth'});
			return;
		}

		j = 0;
		for (var i = 0; i < form3.q_21_4.length; i++) {
			if (form3.q_21_4[i].checked == true) {
				j = 1
			}
		}
		if (j == 0) {
			alert("21 ������ ��� Ǯ���ּ���")
			var location = document.querySelector("." + "t").offsetTop;
  			window.scrollTo({top: location - 400, behavior: 'smooth'});
			return;
		}

		j = 0;
		for (var i = 0; i < form3.q_21_5.length; i++) {
			if (form3.q_21_5[i].checked == true) {
				j = 1
			}
		}
		if (j == 0) {
			alert("21 ������ ��� Ǯ���ּ���")
			var location = document.querySelector("." + "t").offsetTop;
  			window.scrollTo({top: location - 400, behavior: 'smooth'});
			return;
		}

		j = 0;
		for (var i = 0; i < form3.q_21_6.length; i++) {
			if (form3.q_21_6[i].checked == true) {
				j = 1
			}
		}
		if (j == 0) {
			alert("21 ������ ��� Ǯ���ּ���")
			var location = document.querySelector("." + "t").offsetTop;
  			window.scrollTo({top: location - 400, behavior: 'smooth'});
			return;
		}

		j = 0;
		for (var i = 0; i < form3.q_21_7.length; i++) {
			if (form3.q_21_7[i].checked == true) {
				j = 1
			}
		}
		if (j == 0) {
			alert("21 ������ ��� Ǯ���ּ���")
			var location = document.querySelector("." + "t").offsetTop;
  			window.scrollTo({top: location - 400, behavior: 'smooth'});
			return;
		}

		j = 0;
		for (var i = 0; i < form3.q_22_1.length; i++) {
			if (form3.q_22_1[i].checked == true) {
				j = 1
			}
		}
		if (j == 0) {
			alert("22 ������ ��� Ǯ���ּ���")
			var location = document.querySelector("." + "u").offsetTop;
  			window.scrollTo({top: location - 400, behavior: 'smooth'});
			return;
		}

		j = 0;
		for (var i = 0; i < form3.q_22_2.length; i++) {
			if (form3.q_22_2[i].checked == true) {
				j = 1
			}
		}
		if (j == 0) {
			alert("22 ������ ��� Ǯ���ּ���")
			var location = document.querySelector("." + "u").offsetTop;
  			window.scrollTo({top: location - 400, behavior: 'smooth'});
			return;
		}

		j = 0;
		for (var i = 0; i < form3.q_22_3.length; i++) {
			if (form3.q_22_3[i].checked == true) {
				j = 1
			}
		}
		if (j == 0) {
			alert("22 ������ ��� Ǯ���ּ���")
			var location = document.querySelector("." + "u").offsetTop;
  			window.scrollTo({top: location - 400, behavior: 'smooth'});
			return;
		}

		j = 0;
		for (var i = 0; i < form3.q_22_4.length; i++) {
			if (form3.q_22_4[i].checked == true) {
				j = 1
			}
		}
		if (j == 0) {
			alert("22 ������ ��� Ǯ���ּ���")
			var location = document.querySelector("." + "u").offsetTop;
  			window.scrollTo({top: location - 400, behavior: 'smooth'});
			return;
		}

		j = 0;
		for (var i = 0; i < form3.q_22_5.length; i++) {
			if (form3.q_22_5[i].checked == true) {
				j = 1
			}
		}
		if (j == 0) {
			alert("22 ������ ��� Ǯ���ּ���")
			var location = document.querySelector("." + "u").offsetTop;
  			window.scrollTo({top: location - 400, behavior: 'smooth'});
			return;
		}

		j = 0;
		for (var i = 0; i < form3.q_22_6.length; i++) {
			if (form3.q_22_6[i].checked == true) {
				j = 1
			}
		}
		if (j == 0) {
			alert("22 ������ ��� Ǯ���ּ���")
			var location = document.querySelector("." + "u").offsetTop;
  			window.scrollTo({top: location - 400, behavior: 'smooth'});
			return;
		}

		j = 0;
		for (var i = 0; i < form3.q_22_7.length; i++) {
			if (form3.q_22_7[i].checked == true) {
				j = 1
			}
		}
		if (j == 0) {
			alert("22 ������ ��� Ǯ���ּ���")
			var location = document.querySelector("." + "u").offsetTop;
  			window.scrollTo({top: location - 400, behavior: 'smooth'});
			return;
		}

		var q_ = new Array(18);
		var q_19 = new Array(7);
		var q_20 = new Array(7);
		var q_21 = new Array(7);
		var q_22 = new Array(7);

		var A = 0
		var B = 0
		var C = 0
		var D = 0
		//q_[0]=form3.q_1.value;

		for (var i = 1; i < form3.q_1.length; i++) {
			if (form3.q_1[i].checked == true) {
				q_[0] = i + 1
			}
		}
		for (var i = 1; i < form3.q_2.length; i++) {
			if (form3.q_2[i].checked == true) {
				q_[1] = i + 1
			}
		}
		for (var i = 1; i < form3.q_3.length; i++) {
			if (form3.q_3[i].checked == true) {
				q_[2] = i + 1
			}
		}
		for (var i = 1; i < form3.q_4.length; i++) {
			if (form3.q_4[i].checked == true) {
				q_[3] = i + 1
			}
		}
		for (var i = 1; i < form3.q_5.length; i++) {
			if (form3.q_5[i].checked == true) {
				q_[4] = i + 1
			}
		}
		for (var i = 1; i < form3.q_6.length; i++) {
			if (form3.q_6[i].checked == true) {
				q_[5] = i + 1
			}
		}
		for (var i = 1; i < form3.q_7.length; i++) {
			if (form3.q_7[i].checked == true) {
				q_[6] = i + 1
			}
		}
		for (var i = 1; i < form3.q_8.length; i++) {
			if (form3.q_8[i].checked == true) {
				q_[7] = i + 1
			}
		}
		for (var i = 1; i < form3.q_9.length; i++) {
			if (form3.q_9[i].checked == true) {
				q_[8] = i + 1
			}
		}
		for (var i = 1; i < form3.q_10.length; i++) {
			if (form3.q_10[i].checked == true) {
				q_[9] = i + 1
			}
		}
		for (var i = 1; i < form3.q_11.length; i++) {
			if (form3.q_11[i].checked == true) {
				q_[10] = i + 1
			}
		}
		for (var i = 1; i < form3.q_12.length; i++) {
			if (form3.q_12[i].checked == true) {
				q_[11] = i + 1
			}
		}
		for (var i = 1; i < form3.q_13.length; i++) {
			if (form3.q_13[i].checked == true) {
				q_[12] = i + 1
			}
		}
		for (var i = 1; i < form3.q_14.length; i++) {
			if (form3.q_14[i].checked == true) {
				q_[13] = i + 1
			}
		}
		for (var i = 1; i < form3.q_15.length; i++) {
			if (form3.q_15[i].checked == true) {
				q_[14] = i + 1
			}
		}
		for (var i = 1; i < form3.q_16.length; i++) {
			if (form3.q_16[i].checked == true) {
				q_[15] = i + 1
			}
		}
		for (var i = 1; i < form3.q_17.length; i++) {
			if (form3.q_17[i].checked == true) {
				q_[16] = i + 1
			}
		}
		for (var i = 1; i < form3.q_18.length; i++) {
			if (form3.q_18[i].checked == true) {
				q_[17] = i + 1
			}
		}
		for (var i = 1; i < form3.q_19_1.length; i++) {
			if (form3.q_19_1[i].checked == true) {
				q_19[0] = i + 1
			}
		}
		for (var i = 1; i < form3.q_19_2.length; i++) {
			if (form3.q_19_2[i].checked == true) {
				q_19[1] = i + 1
			}
		}
		for (var i = 1; i < form3.q_19_3.length; i++) {
			if (form3.q_19_3[i].checked == true) {
				q_19[2] = i + 1
			}
		}
		for (var i = 1; i < form3.q_19_4.length; i++) {
			if (form3.q_19_4[i].checked == true) {
				q_19[3] = i + 1
			}
		}
		for (var i = 1; i < form3.q_19_5.length; i++) {
			if (form3.q_19_5[i].checked == true) {
				q_19[4] = i + 1
			}
		}
		for (var i = 1; i < form3.q_19_6.length; i++) {
			if (form3.q_19_6[i].checked == true) {
				q_19[5] = i + 1
			}
		}
		for (var i = 1; i < form3.q_19_7.length; i++) {
			if (form3.q_19_7[i].checked == true) {
				q_19[6] = i + 1
			}
		}
		for (var i = 1; i < form3.q_20_1.length; i++) {
			if (form3.q_20_1[i].checked == true) {
				q_20[0] = i + 1
			}
		}
		for (var i = 1; i < form3.q_20_2.length; i++) {
			if (form3.q_20_2[i].checked == true) {
				q_20[1] = i + 1
			}
		}
		for (var i = 1; i < form3.q_20_3.length; i++) {
			if (form3.q_20_3[i].checked == true) {
				q_20[2] = i + 1
			}
		}
		for (var i = 1; i < form3.q_20_4.length; i++) {
			if (form3.q_20_4[i].checked == true) {
				q_20[3] = i + 1
			}
		}
		for (var i = 1; i < form3.q_20_5.length; i++) {
			if (form3.q_20_5[i].checked == true) {
				q_20[4] = i + 1
			}
		}
		for (var i = 1; i < form3.q_20_6.length; i++) {
			if (form3.q_20_6[i].checked == true) {
				q_20[5] = i + 1
			}
		}
		for (var i = 1; i < form3.q_20_7.length; i++) {
			if (form3.q_20_7[i].checked == true) {
				q_20[6] = i + 1
			}
		}
		for (var i = 1; i < form3.q_20_1.length; i++) {
			if (form3.q_20_1[i].checked == true) {
				q_20[0] = i + 1
			}
		}
		for (var i = 1; i < form3.q_21_2.length; i++) {
			if (form3.q_21_2[i].checked == true) {
				q_21[1] = i + 1
			}
		}
		for (var i = 1; i < form3.q_21_3.length; i++) {
			if (form3.q_21_3[i].checked == true) {
				q_21[2] = i + 1
			}
		}
		for (var i = 1; i < form3.q_21_4.length; i++) {
			if (form3.q_21_4[i].checked == true) {
				q_21[3] = i + 1
			}
		}
		for (var i = 1; i < form3.q_21_5.length; i++) {
			if (form3.q_21_5[i].checked == true) {
				q_21[4] = i + 1
			}
		}
		for (var i = 1; i < form3.q_21_6.length; i++) {
			if (form3.q_21_6[i].checked == true) {
				q_21[5] = i + 1
			}
		}
		for (var i = 1; i < form3.q_21_7.length; i++) {
			if (form3.q_21_7[i].checked == true) {
				q_21[6] = i + 1
			}
		}
		for (var i = 1; i < form3.q_22_1.length; i++) {
			if (form3.q_22_1[i].checked == true) {
				q_22[0] = i + 1
			}
		}
		for (var i = 1; i < form3.q_22_2.length; i++) {
			if (form3.q_22_2[i].checked == true) {
				q_22[1] = i + 1
			}
		}
		for (var i = 1; i < form3.q_22_3.length; i++) {
			if (form3.q_22_3[i].checked == true) {
				q_22[2] = i + 1
			}
		}
		for (var i = 1; i < form3.q_22_4.length; i++) {
			if (form3.q_22_4[i].checked == true) {
				q_22[3] = i + 1
			}
		}
		for (var i = 1; i < form3.q_22_5.length; i++) {
			if (form3.q_22_5[i].checked == true) {
				q_22[4] = i + 1
			}
		}
		for (var i = 1; i < form3.q_22_6.length; i++) {
			if (form3.q_22_6[i].checked == true) {
				q_22[5] = i + 1
			}
		}
		for (var i = 1; i < form3.q_22_7.length; i++) {
			if (form3.q_22_7[i].checked == true) {
				q_22[6] = i + 1
			}
		}

		for (i = 0; i < 18; i++) {
			if (q_[i] == "1") {
				A = A + 1;
			} else if (q_[i] == "2") {
				B = B + 1;
			} else if (q_[i] == "3") {
				C = C + 1;
			} else {
				D = D + 1;
			}
		}

		for (i = 0; i < 7; i++) {
			if (q_19[i] == "1") {
				A = A + 1;
			} else if (q_19[i] == "2") {
				A = A + 0.5;
			}
		}

		for (i = 0; i < 7; i++) {
			if (q_20[i] == "1") {
				B = B + 1;
			} else if (q_20[i] == "2") {
				B = B + 0.5;
			}
		}
		for (i = 0; i < 7; i++) {
			if (q_21[i] == "1") {
				C = C + 1;
			} else if (q_21[i] == "2") {
				C = C + 0.5;
			}
		}
		for (i = 0; i < 7; i++) {
			if (q_22[i] == "1") {
				D = D + 1;
			} else if (q_22[i] == "2") {
				D = D + 0.5;
			}
		}

		var A_1 = 0.6974999 * A;
		var B_1 = 0.8869992 * B;
		var C_1 = 1.290515 * C;
		var Q_1 = (A_1 + B_1 + C_1) - 12.01769;

		var A_2 = 1.1332329 * A;
		var B_2 = 0.846998 * B;
		var C_2 = 1.025936 * C;
		var Q_2 = (A_2 + B_2 + C_2) - 12.26834;

		var A_3 = 0.6957379 * A;
		var B_3 = 1.154492 * B;
		var C_3 = 1.025936 * C;
		var Q_3 = (A_3 + B_3 + C_3) - 12.77419;

		if (D > A && D > B && D > C && Q_3 > Q_2 && Q_3 > Q_1) {
			document.location.href = "taeyangini.jsp?uno=" + <%= uno %>;
		} else if (Q_2 > Q_1 && Q_2 > Q_3) {
			document.location.href = "taeeumini.jsp?uno=" + <%= uno %>;
		} else if (Q_3 > Q_1 && Q_3 > Q_2) {
			document.location.href = "soeumini.jsp?uno=" + <%= uno %>;
		} else if (Q_1 > Q_2 && Q_1 > Q_3) {
			document.location.href = "soyangini.jsp?uno=" + <%= uno %>;
		}

	}
</script>
	<table border="0" style="margin-left: 10px">
		<tr>
			<td width="150px"></td>
			<td valign="top"><h2>
					<img src="../image/../image/write.jpg" style="width: 50px;">ü���˻�
				</h2></td>
		</tr>
	</table>
	<form name="form3" id="form3" method="post" action="join_procces.asp">
		<section id="section1">
			<table width="1100" border="0" class="first">
				<tr>
					<td height="30" colspan="2" class="common1">
						<font color="#FF9900">1. ����� ü���� ���� �� ��� �ش��մϱ�?</font>
					</td>
				</tr>
				<tr>
					<td width="14">&nbsp;</td>
					<td width="586" valign="top" class="common1">
						<input name="q_1" type="radio" class="check" value="1" onclick="goToScroll('a')"> �㸮�� �谡 �ߴ޵ǰ� ��ü�� ���� ���̴�.<br> 
						<input name="q_1" type="radio" class="check" value="2" onclick="goToScroll('a')"> ��ü���� ���, �ٸ� ��ü�� �ߴ޵Ǿ���.<br> 
						<input name="q_1" type="radio" class="check" value="3" onclick="goToScroll('a')"> ������ �ߴ޵ǰ� �㸮 �Ʒ��κ��� ����� ���̴�.<br> 
						<input name="q_1" type="radio" class="check" value="4" onclick="goToScroll('a')"> �κ�(�Ӹ�)�� ����̰� �ߴ޵ǰ� �㸮�κ��� ���ϴ�</td>
				</tr>
			</table>
		</section>
		<section id="section2">
			<table width="1100" border="0" class="a">
				<tr>
					<td height="30" colspan="2" class="common1">
						<font color="#FF9900">2. ��ü���� �ܸ�� ����� ���� �� ��� �ش�˴ϱ�?</font>
					</td>
				</tr>
				<tr>
					<td width="14">&nbsp;</td>
					<td width="586" valign="top" class="common1">
						<input name="q_2" type="radio" class="check" value="1" onclick="goToScroll('b')"> ����� ���� ���� �� ���̴�.<br>
						<input name="q_2" type="radio" class="check" value="2" onclick="goToScroll('b')"> ����� �۰� ������ �����ִ�.<br> 
						<input name="q_2" type="radio" class="check" value="3" onclick="goToScroll('b')"> �����̸� �ٺ��� ü���̴�.<br> 
						<input name="q_2" type="radio" class="check" value="4" onclick="goToScroll('b')"> Ű�� ũ�� ���� ��ô�� ���̴�.
					</td>
				</tr>
			</table>
		</section>
		<section id="section3">
			<table width="1100" border="0" class="b">
				<tr>
					<td height="30" colspan="2" class="common1">
						<font color="#FF9900">3. ����� ������ �ܰ��� ���� �ߴ޵� �κ���?</font>
					</td>
				</tr>
				<tr>
					<td width="14">&nbsp;</td>
					<td width="586" valign="top" class="common1">
					<input name="q_3" type="radio" class="check" value="1" onclick="goToScroll('c')"> �㸮�� ������<br> 
					<input name="q_3" type="radio" class="check" value="2" onclick="goToScroll('c')"> ������<br>
					<input name="q_3" type="radio" class="check" value="3" onclick="goToScroll('c')"> ����<br>
					<input name="q_3" type="radio" class="check" value="4" onclick="goToScroll('c')"> �Ӹ�</td>
				</tr>
			</table>
		</section>
		<section id="section4">
			<table width="1100" border="0" class="c">
				<tr>
					<td height="30" colspan="2" class="common1">
						<font color="#FF9900">4. ����� �������̴� ������ ��� �ش�˴ϱ�?</font>
					</td>
				</tr>
				<tr>
					<td width="14">&nbsp;</td>
					<td width="586" valign="top" class="common1">
						<input name="q_4" type="radio" class="check" value="1" onclick="goToScroll('d')"> ������ ������ ���� �ְ� �ȴ´�.<br>
						<input name="q_4" type="radio" class="check" value="2" onclick="goToScroll('d')"> �������̰� �ڿ������� �����ϴ�.<br> 
						<input name="q_4" type="radio" class="check" value="3" onclick="goToScroll('d')"> ������ ������ ���� ����.<br> 
						<input name="q_4" type="radio" class="check" value="4" onclick="goToScroll('d')"> �������̰� �Ʋ��ϴ�.<br>
					</td>
				</tr>
			</table>
		</section>
		<section id="section5">
			<table width="1100" border="0" class="d">
				<tr>
					<td height="30" colspan="2" class="common1">
						<font color="#FF9900">5. ����� ���� �� ��� �ش��մϱ�?</font>
					</td>
				</tr>
				<tr>
					<td width="14">&nbsp;</td>
					<td width="586" valign="top" class="common1">
						<input name="q_5" type="radio" class="check" value="1" onclick="goToScroll('e')"> ��ҿ� ���� ���� ���� �긮�� ������ �����ϴ�.<br> 
						<input name="q_5" type="radio" class="check" value="2" onclick="goToScroll('e')"> ��ҿ� ���� ���� �ʰ� ���ݸ� ���� ���� �ǰ��ϴ�.<br> 
						<input name="q_5" type="radio" class="check" value="3" onclick="goToScroll('e')"> ���� ����� �״��� �ǰ����� �ʴ�.
					</td>
				</tr>
			</table>
		</section>
		<section id="section6">
			<table width="1100" border="0" class="e">
				<tr>
					<td height="30" colspan="2" class="common1">
						<font color="#FF9900">6. ����� ���� ���� �� ��� ���� �������ϱ�?</font>
					</td>
				</tr>
				<tr>
					<td width="14">&nbsp;</td>
					<td width="586" valign="top" class="common1">
						<input name="q_6" type="radio" class="check" value="1" onclick="goToScroll('f')"> ���� ������ �ѷ��ϰ� �����ϴ�.<br>
						<input name="q_6" type="radio" class="check" value="2" onclick="goToScroll('f')"> ���� ������ �����ϰ� �ձ۴�.<br> 
						<input name="q_6" type="radio" class="check" value="3" onclick="goToScroll('f')"> ���� �ټ� ��� �Ӹ��� �յڷ� ���Դ�.<br> 
						<input name="q_6" type="radio" class="check" value="4" onclick="goToScroll('f')"> �Ӹ��� ũ�� �������� �ھ��ִ�.<br>
					</td>
				</tr>
			</table>
		</section>
		<section id="section7">
			<table width="1100" border="0" class="f">
				<tr>
					<td height="30" colspan="2" class="common1"><font
						color="#FF9900">7. ��� ���� ������?</font></td>
				</tr>
				<tr>
					<td width="14">&nbsp;</td>
					<td width="586" valign="top" class="common1">
						<input name="q_7" type="radio" class="check" value="1" onclick="goToScroll('g')"> ���� Ȥ�� �������̴�.<br>
						<input name="q_7" type="radio" class="check" value="2" onclick="goToScroll('g')"> Ȳ���̴�.<br> 
						<input name="q_7" type="radio" class="check" value="3" onclick="goToScroll('g')"> ��� �Ǵ� ���� ���� ����.<br> 
						<input name="q_7" type="radio" class="check" value="4" onclick="goToScroll('g')"> �����̴�.<br>
					</td>
				</tr>
			</table>
		</section>
		<section id="section8">
			<table width="1100" border="0" class="g">
				<tr>
					<td height="30" colspan="2" class="common1"><font
						color="#FF9900">8. ����� ���� ���� �� ��� �ش�Ǵ°�?</font></td>
				</tr>
				<tr>
					<td width="14">&nbsp;</td>
					<td width="586" valign="top" class="common1">
						<input name="q_8" type="radio" class="check" value="1" onclick="goToScroll('h')"> �̸񱸺� ũ�� �Լ��� ���Ӵ�.<br>
						<input name="q_8" type="radio" class="check" value="2" onclick="goToScroll('h')"> ��, ��, ���� �۰� ������ ���̴�.<br> 
						<input name="q_8" type="radio" class="check" value="3" onclick="goToScroll('h')"> ���� ũ�� �ʰ� ���� ������ ���̰� �Լ��� ���.<br>
						<input name="q_8" type="radio" class="check" value="4" onclick="goToScroll('h')"> �̸��� �а� ������� ���� �ִ�.<br>
					</td>
				</tr>
			</table>
		</section>
		<section id="section9">
			<table width="1100" border="0" class="h">
				<tr>
					<td height="30" colspan="2" class="common1">
						<font color="#FF9900">9. ����� ������ ���� �� ��� ���� ����?</font>
					</td>
				</tr>
				<tr>
					<td width="14">&nbsp;</td>
					<td width="586" valign="top" class="common1">
						<input name="q_9" type="radio" class="check" value="1" onclick="goToScroll('i')"> ������ ���� �ʰ� ħħ�ϴ�.<br>
						<input name="q_9" type="radio" class="check" value="2" onclick="goToScroll('i')"> ������ ���ϰ� �������� �� ���´�.<br> 
						<input name="q_9" type="radio" class="check" value="3" onclick="goToScroll('i')"> ������ �ݻ����̰� �����ϴ�.<br> 
						<input name="q_9" type="radio" class="check" value="4" onclick="goToScroll('i')"> ������ ���� ����.<br></td>
				</tr>
			</table>
		</section>
		<section id="section10">
			<table width="1100" border="0" class="i">
				<tr>
					<td height="30" colspan="2" class="common1">
						<font color="#FF9900">10. ����� ������?</font>
					</td>
				</tr>
				<tr>
					<td width="14">&nbsp;</td>
					<td width="586" valign="top" class="common1">
						<input name="q_10" type="radio" class="check" value="1" onclick="goToScroll('j')"> ���� ��� �а� �� �ߴ޵Ǿ���.(����)<br> 
						<input name="q_10" type="radio" class="check" value="2" onclick="goToScroll('j')"> ����ϰ� �������ϴ�.(������)<br> 
						<input name="q_10" type="radio" class="check" value="3" onclick="goToScroll('j')"> ������ ���� �а� ưư�� ���̴�.(������)<br> 
						<input name="q_10" type="radio" class="check" value="4" onclick="goToScroll('j')"> ������ �������� �߽��ϴ�.<br>
					</td>
				</tr>
			</table>
		</section>
		<section id="section11">
			<table width="1100" border="0" class="j">
				<tr>
					<td height="30" colspan="2" class="common1">
						<font color="#FF9900">11. ����� �հ� ����?</font>
					</td>
				</tr>
				<tr>
					<td width="14">&nbsp;</td>
					<td width="586" valign="top" class="common1">
						<input name="q_11" type="radio" class="check" value="1" onclick="goToScroll('k')"> �չ��� �����ϳ� �ܿ￡ �� ư��.<br> 
						<input name="q_11" type="radio" class="check" value="2" onclick="goToScroll('k')"> �չ��� ���� �ܿ￡ �� Ʈ�� �ʴ´�.<br> 
						<input name="q_11" type="radio" class="check" value="3" onclick="goToScroll('k')"> �չ��� ������ ���̴�.<br>
					</td>
				</tr>
			</table>
		</section>
		<section id="section12">
			<table width="1100" border="0" class="k">
				<tr>
					<td height="30" colspan="2" class="common1">
						<font color="#FF9900">12. ����� �Ǻδ�?</font>
					</td>
				</tr>
				<tr>
					<td width="14">&nbsp;</td>
					<td width="586" valign="top" class="common1">
						<input name="q_12" type="radio" class="check" value="1" onclick="goToScroll('l')"> ���Ӱ� �������� ũ��.<br> 
						<input name="q_12" type="radio" class="check" value="2" onclick="goToScroll('l')"> �ε巴�� �������� ����.<br> 
						<input name="q_12" type="radio" class="check" value="3" onclick="goToScroll('l')"> ��� ���� ���̴�.<br>
						<input name="q_12" type="radio" class="check" value="4" onclick="goToScroll('l')"> �ε巴�� �������̴�.<br>
					</td>
				</tr>
			</table>
		</section>
		<section id="section13">
			<table width="1100" border="0" class="l">
				<tr>
					<td height="30" colspan="2" class="common1">
						<font color="#FF9900">13. ����� ������ ���� �� ��� �ش�˴ϱ�?</font>
					</td>
				</tr>
				<tr>
					<td width="14">&nbsp;</td>
					<td width="586" valign="top" class="common1">
						<input name="q_13" type="radio" class="check" value="1" onclick="goToScroll('m')"> ������ ���̰� �ε巴��.<br> 
						<input name="q_13" type="radio" class="check" value="2" onclick="goToScroll('m')"> ������ ���̴�.<br> 
						<input name="q_13" type="radio" class="check" value="3" onclick="goToScroll('m')"> ī��ī���ϴ�. <br>
					</td>
				</tr>
			</table>
		</section>
		<section id="section14">
			<table width="1100" border="0" class="m">
				<tr>
					<td height="30" colspan="2" class="common1">
						<font color="#FF9900">14. ���Ҷ� ��� ������?</font>
					</td>
				</tr>
				<tr>
					<td width="14">&nbsp;</td>
					<td width="586" valign="top" class="common1">
						<input name="q_14" type="radio" class="check" value="1" onclick="goToScroll('n')"> ������ ���� ��Ȥ ����⵵ �Ѵ�.<br> 
						<input name="q_14" type="radio" class="check" value="2" onclick="goToScroll('n')"> ���� ���� ������ ����� ���̿ʹ� ���� ���� �ϴ� ���̴�.<br> 
						<input name="q_14" type="radio" class="check" value="3" onclick="goToScroll('n')"> ���� ���� ���� ���� �ϴ� ���̴�.<br>
					</td>
				</tr>
			</table>
		</section>
		<section id="section15">
			<table width="1100" border="0" class="n">
				<tr>
					<td height="30" colspan="2" class="common1">
						<font color="#FF9900">15. ����� �뺯���´� ���� �� ��� �ش�Ǵ°�?</font>
					</td>
				</tr>
				<tr>
					<td width="14">&nbsp;</td>
					<td width="586" valign="top" class="common1">
						<input name="q_15" type="radio" class="check" value="1" onclick="goToScroll('o')"> ���� ���� ���� ���̴�.<br> 
						<input name="q_15" type="radio" class="check" value="2" onclick="goToScroll('o')"> �밳�� �뺯�� ������ ��Ȥ ���� �־ �״��� ���谨�� ����.<br> 
						<input name="q_15" type="radio" class="check" value="3" onclick="goToScroll('o')"> �ణ�� ���� �־ ���뽺����.<br> 
						<input name="q_15" type="radio" class="check" value="4" onclick="goToScroll('o')"> �뺯�� �ε巴�� ���� ����.<br>
					</td>
				</tr>
			</table>
		</section>
		<section id="section16">
			<table width="1100" border="0" class="o">
				<tr>
					<td height="30" colspan="2" class="common1">
						<font color="#FF9900">16. ��� �ǰ��� �� ���� ������ �������� ��� ���� �ִ°�?</font>
					</td>
				</tr>
				<tr>
					<td width="14">&nbsp;</td>
					<td width="586" valign="top" class="common1">
						<input name="q_16" type="radio" class="check" value="1" onclick="goToScroll('p')"> ������ �αٰŸ��ų� ���� ���� �Ƿ��ϰų� ������.<br> 
						<input name="q_16" type="radio" class="check" value="2" onclick="goToScroll('p')"> �Ѽ��� �� ���ų� �ȴٸ��� �����ų� �㰡 �� ����.<br>
						<input name="q_16" type="radio" class="check" value="3" onclick="goToScroll('p')"> �Ǹ����� �ִ�.<br> 
						<input name="q_16" type="radio" class="check" value="4" onclick="goToScroll('p')"> ������ ����ϰ� ���� ���ϰų� �ٸ��� ���� ���� ���� ���� ���Ѵ�.<br>
					</td>
				</tr>
			</table>
		</section>
		<section id="section17">
			<table width="1100" border="0" class="p">
				<tr>
					<td height="30" colspan="2" class="common1">
						<font color="#FF9900">17. ��ҿ� �� ��Ÿ���� �������� ��� ������ �ִ°�?</font>
					</td>
				</tr>
				<tr>
					<td width="14">&nbsp;</td>
					<td width="586" valign="top" class="common1">
						<input name="q_17" type="radio" class="check" value="1" onclick="goToScroll('q')"> ������ �ڴ�. ����, ����, ����, ����, ����.<br> 
						<input name="q_17" type="radio" class="check" value="2" onclick="goToScroll('q')"> ��ȭ�̻�, �Ű濹��, ����, ����, �ȴٸ��� ���� ����.<br>
						<input name="q_17" type="radio" class="check" value="3" onclick="goToScroll('q')"> ����, �Ǹ���, ������, ����<br> 
						<input name="q_17" type="radio" class="check" value="4" onclick="goToScroll('q')"> ����, ��������, �� �̻󰨰�<br>
					</td>
				</tr>
			</table>
		</section>
		<section id="section18">
			<table width="1100" border="0" class="q">
				<tr>
					<td height="30" colspan="2" class="common1">
						<font color="#FF9900">18. ���Ĺ��� ���� ����� ��ȣ��?</font>
					</td>
				</tr>
				<tr>
					<td width="14">&nbsp;</td>
					<td width="586" valign="top" class="common1">
						<input name="q_18" type="radio" class="check" value="1" onclick="goToScroll('r')"> ������ ������ �����Ѵ�.<br> 
						<input name="q_18" type="radio" class="check" value="2" onclick="goToScroll('r')"> �߰ſ� ������ �����Ѵ�.<br> 
						<input name="q_18" type="radio" class="check" value="3" onclick="goToScroll('r')"> �������� �����Ѵ�.<br>
						<input name="q_18" type="radio" class="check" value="4" onclick="goToScroll('r')"> �ÿ��� ������ �����Ѵ�.<br>
					</td>
				</tr>
			</table>
		</section>
		<section id="section19">
			<table width="1100" border="1" cellpadding="1" cellspacing="1" bordercolor="#DBDBDB" class="r">
				<tr>
					<td height="30" class="common1" colspan="4" align="center">
						<font color="#006600"><strong>19��~22���� �׷���, �����̴�, �ƴϴٿ��� ��� ǥ���� �ֽʽÿ�.</strong></font>
					</td>
				</tr>
				<tr bgcolor="#F3F3F3">
					<td width="410" height="30" class="common1"><font color="#FF9900">19��</font></td>
					<td width="60" align="center" class="common1">�׷���</td>
					<td width="60" align="center" class="common1">����</td>
					<td width="60" align="center" class="common1">�ƴϴ�</td>
				</tr>
				<tr bgcolor="#FFFFFF" onclick="GoToScroll('s')">
					<td width="410">�� �����ϰ� ������ ���̴�.</td>
					<td width="60" align="center"><input name="q_19_1" id="q_19_1" type="radio" class="check" value="1"></td>
					<td width="60" align="center"><input name="q_19_1" id="q_19_1" type="radio" class="check" value="2"></td>
					<td width="60" align="center"><input name="q_19_1" id="q_19_1" type="radio" class="check" value="3"></td>
				</tr>
				<tr bgcolor="#FFFFFF" onclick="GoToScroll('s')">
					<td width="410">�� ���� �Ϻ��� �������̳� �������� ���� �� �߿���Ѵ�.</td>
					<td width="60" align="center"><input name="q_19_2" id="q_19_2" type="radio" class="check" value="1"></td>
					<td width="60" align="center"><input name="q_19_2" id="q_19_2" type="radio" class="check" value="2"></td>
					<td width="60" align="center"><input name="q_19_2" id="q_19_2" type="radio" class="check" value="3"></td>
				</tr>
				<tr bgcolor="#FFFFFF" onclick="GoToScroll('s')">
					<td width="410">�� �ڱ��� �ǰ��� ������ ��ö��Ű�� ���̸� ������ ����.</td>
					<td width="60" align="center"><input name="q_19_3" id="q_19_3" type="radio" class="check" value="1"></td>
					<td width="60" align="center"><input name="q_19_3" id="q_19_3" type="radio" class="check" value="2"></td>
					<td width="60" align="center"><input name="q_19_3" id="q_19_3" type="radio" class="check" value="3"></td>
				</tr>
				<tr bgcolor="#FFFFFF" onclick="GoToScroll('s')">
					<td width="410">�� �γ����� ����.</td>
					<td width="60" align="center"><input name="q_19_4" id="q_19_4" type="radio" class="check" value="1"></td>
					<td width="60" align="center"><input name="q_19_4" id="q_19_4" type="radio" class="check" value="2"></td>
					<td width="60" align="center"><input name="q_19_4" id="q_19_4" type="radio" class="check" value="3"></td>
				</tr>
				<tr bgcolor="#FFFFFF" onclick="GoToScroll('s')">
					<td width="410">�� ��� ������ ���̳� ������ �鵵 �ִ�.</td>
					<td width="60" align="center"><input name="q_19_5" id="q_19_5" type="radio" class="check" value="1"></td>
					<td width="60" align="center"><input name="q_19_5" id="q_19_5" type="radio" class="check" value="2"></td>
					<td width="60" align="center"><input name="q_19_5" id="q_19_5" type="radio" class="check" value="3"></td>
				</tr>
				<tr bgcolor="#FFFFFF" onclick="GoToScroll('s')">
					<td>�� ����� ����.</td>
					<td width="60" align="center"><input name="q_19_6" id="q_19_6" type="radio" class="check" value="1"></td>
					<td width="60" align="center"><input name="q_19_6" id="q_19_6" type="radio" class="check" value="2"></td>
					<td width="60" align="center"><input name="q_19_6" id="q_19_6" type="radio" class="check" value="3"></td>
				</tr>
				<tr bgcolor="#FFFFFF" onclick="GoToScroll('s')">
					<td>�� ������̴�.</td>
					<td width="60" align="center"><input name="q_19_7" id="q_19_7" type="radio" class="check" value="1"></td>
					<td width="60" align="center"><input name="q_19_7" id="q_19_7" type="radio" class="check" value="2"></td>
					<td width="60" align="center"><input name="q_19_7" id="q_19_7" type="radio" class="check" value="3"></td>
				</tr>
			</table>
		</section>
		<section id="section20">
			<table width="1100" border="1" cellpadding="1" cellspacing="1" bordercolor="#DBDBDB" class="s">
				<tr bgcolor="#F3F3F3" onclick="GoToScroll('t')">
					<td width="410" height="30" class="common1"><font color="#FF9900">20��</font></td>
					<td width="60" align="center" class="common1">�׷���</td>
					<td width="60" align="center" class="common1">����</td>
					<td width="60" align="center" class="common1">�ƴϴ�</td>
				</tr>
				<tr bgcolor="#FFFFFF" onclick="GoToScroll('t')">
					<td width="410">�� �Ĳ��� ���̴�.</td>
					<td width="60" align="center"><input name="q_20_1" id="q_20_1" type="radio" class="check" value="1"></td>
					<td width="60" align="center"><input name="q_20_1" id="q_20_1" type="radio" class="check" value="2"></td>
					<td width="60" align="center"><input name="q_20_1" id="q_20_1" type="radio" class="check" value="3"></td>
				</tr>
				<tr bgcolor="#FFFFFF" onclick="GoToScroll('t')">
					<td width="410">�� �������� ���� �̱����ǰ� ���� ���̴�.</td>
					<td width="60" align="center"><input name="q_20_2" id="q_20_2" type="radio" class="check" value="1"></td>
					<td width="60" align="center"><input name="q_20_2" id="q_20_2" type="radio" class="check" value="2"></td>
					<td width="60" align="center"><input name="q_20_2" id="q_20_2" type="radio" class="check" value="3"></td>
				</tr>
				<tr bgcolor="#FFFFFF" onclick="GoToScroll('t')">
					<td width="410">�� ���� �����̴� �Ϻ��� �ɾƼ� �ϴ� ���� ������ ���.</td>
					<td width="60" align="center"><input name="q_20_3" id="q_20_3" type="radio" class="check" value="1"></td>
					<td width="60" align="center"><input name="q_20_3" id="q_20_3" type="radio" class="check" value="2"></td>
					<td width="60" align="center"><input name="q_20_3" id="q_20_3" type="radio" class="check" value="3"></td>
				</tr>
				<tr bgcolor="#FFFFFF" onclick="GoToScroll('t')">
					<td width="410">�� �������� �鿡 ���� �������� ���� ���� �� ����.</td>
					<td width="60" align="center"><input name="q_20_4" id="q_20_4" type="radio" class="check" value="1"></td>
					<td width="60" align="center"><input name="q_20_4" id="q_20_4" type="radio" class="check" value="2"></td>
					<td width="60" align="center"><input name="q_20_4" id="q_20_4" type="radio" class="check" value="3"></td>
				</tr>
				<tr bgcolor="#FFFFFF" onclick="GoToScroll('t')">
					<td width="410">�� �������̰� �������� ���� ���� ����� �տ� ������ ��ƴ�.</td>
					<td width="60" align="center"><input name="q_20_5" id="q_20_5" type="radio" class="check" value="1"></td>
					<td width="60" align="center"><input name="q_20_5" id="q_20_5" type="radio" class="check" value="2"></td>
					<td width="60" align="center"><input name="q_20_5" id="q_20_5" type="radio" class="check" value="3"></td>
				</tr>
				<tr bgcolor="#FFFFFF" onclick="GoToScroll('t')">
					<td>�� �ѹ� ������ ���ϸ� ��ó�� �� Ǯ���� �ʴ´�.</td>
					<td width="60" align="center"><input name="q_20_6" id="q_20_6" type="radio" class="check" value="1"></td>
					<td width="60" align="center"><input name="q_20_6" id="q_20_6" type="radio" class="check" value="2"></td>
					<td width="60" align="center"><input name="q_20_6" id="q_20_6" type="radio" class="check" value="3"></td>
				</tr>
				<tr bgcolor="#FFFFFF" onclick="GoToScroll('t')">
					<td>�� ���� �ڱ��Ͽ� �����ϴ� ���� ���� �Ⱦ��Ѵ�.</td>
					<td width="60" align="center"><input name="q_20_7" id="q_20_7" type="radio" class="check" value="1"></td>
					<td width="60" align="center"><input name="q_20_7" id="q_20_7" type="radio" class="check" value="2"></td>
					<td width="60" align="center"><input name="q_20_7" id="q_20_7" type="radio" class="check" value="3"></td>
				</tr>
			</table>
		</section>
		<section id="section21">
			<table width="1100" border="1" cellpadding="1" cellspacing="1" bordercolor="#DBDBDB" class="t">
				<tr bgcolor="#F3F3F3" onclick="GoToScroll('u')">
					<td width="410" height="30" class="common1"><font color="#FF9900">21��</font></td>
					<td width="60" align="center" class="common1">�׷���</td>
					<td width="60" align="center" class="common1">����</td>
					<td width="60" align="center" class="common1">�ƴϴ�</td>
				</tr>
				<tr bgcolor="#FFFFFF" onclick="GoToScroll('u')">
					<td width="410">�� ��������ϴ�.</td>
					<td width="60" align="center"><input name="q_21_1" id="q_21_1" type="radio" class="check" value="1"></td>
					<td width="60" align="center"><input name="q_21_1" id="q_21_1" type="radio" class="check" value="2"></td>
					<td width="60" align="center"><input name="q_21_1" id="q_21_1" type="radio" class="check" value="3"></td>
				</tr>
				<tr bgcolor="#FFFFFF" onclick="GoToScroll('u')">
					<td width="410">�� ������ ���ϳ� �������� �����ϴ�.</td>
					<td width="60" align="center"><input name="q_21_2" id="q_21_2" type="radio" class="check" value="1"></td>
					<td width="60" align="center"><input name="q_21_2" id="q_21_2" type="radio" class="check" value="2"></td>
					<td width="60" align="center"><input name="q_21_2" id="q_21_2" type="radio" class="check" value="3"></td>
				</tr>
				<tr bgcolor="#FFFFFF" onclick="GoToScroll('u')">
					<td width="410">�� �ܺ��Ͽ� ġ���Ͽ� �� �ڽŰ� ������ ���ؼ��� ��Ȧ�� ���̴�.</td>
					<td width="60" align="center"><input name="q_21_3" id="q_21_3" type="radio" class="check" value="1"></td>
					<td width="60" align="center"><input name="q_21_3" id="q_21_3" type="radio" class="check" value="2"></td>
					<td width="60" align="center"><input name="q_21_3" id="q_21_3" type="radio" class="check" value="3"></td>
				</tr>
				<tr bgcolor="#FFFFFF" onclick="GoToScroll('u')">
					<td width="410">�� ���������� ����.</td>
					<td width="60" align="center"><input name="q_21_4" id="q_21_4" type="radio" class="check" value="1"></td>
					<td width="60" align="center"><input name="q_21_4" id="q_21_4" type="radio" class="check" value="2"></td>
					<td width="60" align="center"><input name="q_21_4" id="q_21_4" type="radio" class="check" value="3"></td>
				</tr>
				<tr bgcolor="#FFFFFF" onclick="GoToScroll('u')">
					<td width="410">�� �繫�� ��� ��ó���� �ż��ϴ�.</td>
					<td width="60" align="center"><input name="q_21_5" id="q_21_5" type="radio" class="check" value="1"></td>
					<td width="60" align="center"><input name="q_21_5" id="q_21_5" type="radio" class="check" value="2"></td>
					<td width="60" align="center"><input name="q_21_5" id="q_21_5" type="radio" class="check" value="3"></td>
				</tr>
				<tr bgcolor="#FFFFFF" onclick="GoToScroll('u')">
					<td>�� ���� �߸��� ������ �����Ѵ�.</td>
					<td width="60" align="center"><input name="q_21_6" id="q_21_6" type="radio" class="check" value="1"></td>
					<td width="60" align="center"><input name="q_21_6" id="q_21_6" type="radio" class="check" value="2"></td>
					<td width="60" align="center"><input name="q_21_6" id="q_21_6" type="radio" class="check" value="3"></td>
				</tr>
				<tr bgcolor="#FFFFFF" onclick="GoToScroll('u')">
					<td>�� ������ ���ϸ� ������ �� ������ ü���� �� �Ѵ�.</td>
					<td width="60" align="center"><input name="q_21_7" id="q_21_7" type="radio" class="check" value="1"></td>
					<td width="60" align="center"><input name="q_21_7" id="q_21_7" type="radio" class="check" value="2"></td>
					<td width="60" align="center"><input name="q_21_7" id="q_21_7" type="radio" class="check" value="3"></td>
				</tr>
			</table>
		</section>
		<section id="section22">
			<table width="1100" border="1" cellpadding="1" cellspacing="1" bordercolor="#DBDBDB" class="u">
				<tr bgcolor="#F3F3F3">
					<td width="410" height="30" class="common1"><font color="#FF9900">22��</font></td>
					<td width="60" align="center" class="common1">�׷���</td>
					<td width="60" align="center" class="common1">����</td>
					<td width="60" align="center" class="common1">�ƴϴ�</td>
				</tr>
				<tr bgcolor="#FFFFFF">
					<td width="410">�� �������̰� ��� �Ͽ� ��ħ���� �ൿ�Ѵ�.</td>
					<td width="60" align="center"><input name="q_22_1" id="q_22_1" type="radio" class="check" value="1"></td>
					<td width="60" align="center"><input name="q_22_1" id="q_22_1" type="radio" class="check" value="2"></td>
					<td width="60" align="center"><input name="q_22_1" id="q_22_1" type="radio" class="check" value="3"></td>
				</tr>
				<tr bgcolor="#FFFFFF">
					<td width="410">�� �������̱⺸�� �������� ���� ����.</td>
					<td width="60" align="center"><input name="q_22_2" id="q_22_2" type="radio" class="check" value="1"></td>
					<td width="60" align="center"><input name="q_22_2" id="q_22_2" type="radio" class="check" value="2"></td>
					<td width="60" align="center"><input name="q_22_2" id="q_22_2" type="radio" class="check" value="3"></td>
				</tr>
				<tr bgcolor="#FFFFFF">
					<td width="410">�� â�Ƿ��� �ִ�.</td>
					<td width="60" align="center"><input name="q_22_3" type="radio" class="check" value="1"></td>
					<td width="60" align="center"><input name="q_22_3" type="radio" class="check" value="2"></td>
					<td width="60" align="center"><input name="q_22_3" type="radio" class="check" value="3"></td>
				</tr>
				<tr bgcolor="#FFFFFF">
					<td width="410">�� ���ܼ��� �ִ�.</td>
					<td width="60" align="center"><input name="q_22_4" type="radio" class="check" value="1"></td>
					<td width="60" align="center"><input name="q_22_4" type="radio" class="check" value="2"></td>
					<td width="60" align="center"><input name="q_22_4" type="radio" class="check" value="3"></td>
				</tr>
				<tr bgcolor="#FFFFFF">
					<td width="410">�� ���� ���� ���� ������ ���� ���� ������ ȭ�� ����.</td>
					<td width="60" align="center"><input name="q_22_5" id="q_22_5" type="radio" class="check" value="1"></td>
					<td width="60" align="center"><input name="q_22_5" id="q_22_5" type="radio" class="check" value="2"></td>
					<td width="60" align="center"><input name="q_22_5" id="q_22_5" type="radio" class="check" value="3"></td>
				</tr>
				<tr bgcolor="#FFFFFF">
					<td>�� �ڽ��� �� �Ͽ� ���� ��ȸ�ϴ� ���� ���� ����.</td>
					<td width="60" align="center"><input name="q_22_6" id="q_22_6" type="radio" class="check" value="1"></td>
					<td width="60" align="center"><input name="q_22_6" id="q_22_6" type="radio" class="check" value="2"></td>
					<td width="60" align="center"><input name="q_22_6" id="q_22_6" type="radio" class="check" value="3"></td>
				</tr>
				<tr bgcolor="#FFFFFF" onclick="GoToScroll('v')">
					<td>�� ������ �� �������� ���ϴ�.</td>
					<td width="60" align="center"><input name="q_22_7" id="q_22_7" type="radio" class="check" value="1"></td>
					<td width="60" align="center"><input name="q_22_7" id="q_22_7" type="radio" class="check" value="2"></td>
					<td width="60" align="center"><input name="q_22_7" id="q_22_7" type="radio" class="check" value="3"></td>
				</tr>
				<tr>
			</table>
			
		</section>
			<div align="center" class="v">
				<input type="button" onclick="go_insert();" value="�������" id="result">&emsp;
				<a href="test2.jsp"><input type="button" value="�ٽ��Է�" id="reset"></a>
			</div>
	</form>
</body>
</html>