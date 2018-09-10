<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Oversea 아이디 / 비밀번호 찾기</title>
<link rel="stylesheet" href="assets/css/oversea_choice_idpw.css">
	
</head>
<body style="background-image: url('assets/images/background.jpg'); background-size: 100%;">
<jsp:include page="user/oversea_after_login_nav.jsp" flush="false"></jsp:include>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<div class="oversea_choice_main">
	<a id="oversea_find_id_btn" href="oversea_find_id.jsp" style="text-decoration:none">
		<img src="assets/images/find_id_btn.png" 
			onmouseover="this.src='assets/images/find_id_btn_hover.png';"
			onmouseout="this.src='assets/images/find_id_btn.png';"
		 	alt="" width="200">
	</a>
	<a id="oversea_find_pw_btn" href="oversea_find_passwd.jsp">	
		<img src="assets/images/find_pw_btn.png"  
			onmouseover="this.src='assets/images/find_pw_btn_hover.png';"
			onmouseout="this.src='assets/images/find_pw_btn.png';"
			alt="" width="200">
	</a>
</div>
</body>
</html>