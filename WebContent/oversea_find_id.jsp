<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Oversea 아이디 찾기</title>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

<meta name="description" content="Snow - Clean & Minimal Portfolio HTML template.">
    <meta name="keywords" content="portfolio, clean, minimal, blog, template, portfolio website">
    <meta name="author" content="nK">

    <link rel="icon" type="image/png" href="assets/images/favicon.png">

    <meta name="viewport" content="width=device-width, initial-scale=1">

<!-- START: Styles -->

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700,700i%7cWork+Sans:400,500,700" rel="stylesheet" type="text/css">
    
    <link rel="stylesheet" href="assets/css/combined.css">
    <link rel="stylesheet" href="assets/css/oversea_find_id.css">
	
	<script language="JavaScript" src="assets/js/oversea_findid.js" charset="utf-8"></script>
	
    <!-- END: Styles -->
</head>
<body style="background-image:url('assets/images/background.jpg');background-size:100%; ">
<center>

	<jsp:include page="user/oversea_after_login_nav.jsp" flush="false"></jsp:include>
	
	<br><br><br><br><br><br><br><br><br><br><br><br><br><br>
		<center>
		<h2><font color="white">아이디 찾기</font></h2>
		<form action="user/oversea_find_idProc.jsp" name="form" method="post" margin-top="100">
			
		<div class="col-3" style="text-align:left;">
	        <input type="text" maxlength="10" name="name" class="form-control" placeholder="이름" required>
	 	</div>
		<div class="form-row col-3" style="text-align:left;">
	   		<div class="col">
	   			&nbsp;<input type="number" name="ph1" maxlength="3" class="form-control" placeholder="010" required>
	   		</div>
	   		<div class="col">
	   			&nbsp;<input type="number" name="ph2" maxlength="4" class="form-control" placeholder="0000" required>
	   		</div>
	   		<div class="col">
	   			&nbsp;<input type="number" name="ph3" maxlength="4" class="form-control" placeholder="0000" required>
	   		</div>
	   	</div>
		<br>
		<div class="col-3">
			<button type="button" onclick="findid()" class="btn btn-primary btn-lg btn-block">아이디 찾기</button>
		</div>
		</form>
		</center>
</body>
</html>