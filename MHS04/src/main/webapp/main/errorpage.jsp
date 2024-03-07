<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page isErrorPage = "true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���� �߻�</title>
</head>
<style>
	@font-face {
		font-family: 'NanumGothic';
		font-style: normal;
		font-weight: 400;
	}

	@font-face {
		font-family: 'NanumGothic';
		font-style: normal;
		font-weight: 700;
	}
	html { height: 100%; }
	.error_h1 {font-size: 24px; line-height: 32px; font-weight: 700; color: #000; }
	.error_p { margin: 8px 0 0; font-size: 15px; line-height: 21px; color: #000; }
	.area_btn{margin-top:44px;font-size:0;line-height:0;}
	.area_btn .link{display:inline-block;width:280px;height:48px;border-radius:6px;background-color:#4dd5b0;font-size:15px;line-height:48px;color:#fff;font-weight:700;text-align:center;text-decoration:none}
</style>
<body>
<div style="text-align: center;">
<a href="index.jsp"><img src="../image/nunmullogo.png"></a>
</div>
<div style="text-align: center; margin-top: 0px;">
<h1 class="error_h1">�˼��մϴ�. ��ȿ���� ���� ��û�Դϴ�.</h1>
<p class="error_p">�湮�Ͻ÷��� �������� �ּҰ� �߸� �ԷµǾ��ų�,</p><p class="error_p">�������� �ּҰ� ���� Ȥ�� �����Ǿ� ��û�Ͻ� �������� ã�� �� �����ϴ�.</p>
            <p class="error_p">�Է��Ͻ� �ּҰ� ��Ȯ���� �ٽ� �ѹ� Ȯ���� �ֽñ� �ٶ��ϴ�.</p>
	<div class="area_btn">
		<a href="javascript:history.back(-1)" class="link">���� ȭ������</a></div>
<br>
���� Ÿ��: <%= exception.getClass().getName() %> <br>
���� �޽���: <b><%= exception.getMessage() %></b>
</div>
</body>
</html>
<!--
���������� �뷮 ä���� �ּ��Դϴ�.���������� �뷮 ä���� �ּ��Դϴ�.
���������� �뷮 ä���� �ּ��Դϴ�.���������� �뷮 ä���� �ּ��Դϴ�.
���������� �뷮 ä���� �ּ��Դϴ�.���������� �뷮 ä���� �ּ��Դϴ�.
���������� �뷮 ä���� �ּ��Դϴ�.���������� �뷮 ä���� �ּ��Դϴ�.
���������� �뷮 ä���� �ּ��Դϴ�.���������� �뷮 ä���� �ּ��Դϴ�.
���������� �뷮 ä���� �ּ��Դϴ�.���������� �뷮 ä���� �ּ��Դϴ�.
-->