<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Oversea 비밀번호 찾기</title>

	<meta name="description" content="Snow - Clean & Minimal Portfolio HTML template.">
    <meta name="keywords" content="portfolio, clean, minimal, blog, template, portfolio website">
    <meta name="author" content="nK">

    <link rel="icon" type="image/png" href="assets/images/favicon.png">

    <meta name="viewport" content="width=device-width, initial-scale=1">

<!-- START: Styles -->

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700,700i%7cWork+Sans:400,500,700" rel="stylesheet" type="text/css">
    
    <link rel="stylesheet" href="assets/css/combined.css">
	
	<script language="JavaScript" src="assets/js/oversea_findpw.js" charset="utf-8"></script>
	
    <!-- END: Styles -->
</head>
<body>
	
	<jsp:include page="user/nav.jsp" flush="false"></jsp:include>
	
	<br><br><br><br><br><br><br><br><br><br>
	<h2>비밀번호 찾기</h2>
	<form action="user/oversea_find_passwdProc.jsp" name="form" method="post" margin-top="100">
		<table>
			<tr>
			 <td class="td1">
			 	이름 
			 </td> 
			 <td class="td2">
			 	<input type="text" size="20" maxlength="10" name="name" required>
			 </td>
			</tr>
			
			<tr>
			 <td class="td1">
			 	이메일
			 </td> 
			 <td class="td2">
			 	<input type="text" size="20" maxlength="20" name="email" required>
			 </td>
			</tr>
			
			<tr>
				<td class="td1">
					휴대폰
				</td> 
				<td class="td2">
					<select name="ph1">
						<option value="010">010</option>
						<option value="011">011</option>
						<option value="016">016</option>
						<option value="017">017</option>
						<option value="019">019</option>
					</select>
						-
					<input type="text" name="ph2" size="5" maxlength="4" required>
						-
					<input type="text" name="ph3" size="5" maxlength="4" required>
				</td>
			</tr>
			<tr>
				<td align="center" colspan="2">
				<hr>
				<br>
					<input type="submit" value="확인" onclick="">
				</td>
			</tr>
		</table>
	</form>

</body>
</html>