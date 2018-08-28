<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Oversea 로그인하기</title>

<!-- START: Styles -->

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700,700i%7cWork+Sans:400,500,700" rel="stylesheet" type="text/css">
    
    <link rel="stylesheet" href="assets/css/combined.css">

<!-- END: Styles -->

	<!-- Bootstrap -->
	<link href="css/bootstrap.min.css" rel="stylesheet">
	
	<!-- font awesome -->
	<link href="css/font-awesome.min.css" rel="stylesheet">
	
	<!-- Custom Style -->
	<link href="css/style.css" rel="stylesheet">
    
	<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
	<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></scri.row>.containerpt>


<script type="text/javascript">
function loginchk(){
	 var email = document.form.email.value;
	 var passwd = document.form.passwd.value;
	 if (email.length == 0 || email == null) {
	  alert("이메일을 입력해 주세요.");
	  document.form.email.focus();
	  return;
	 }
	 if (passwd.length < 1 || passwd == null) {
	  alert("비밀번호를 입력해 주세요.");
	  document.form.pass.focus();
	  return;
	 }
	 document.form.submit();
	}


</script>
</head>
<body>

	<jsp:include page="user/nav.jsp" flush="false"></jsp:include>
    
<br><br><br><br><br><br><br><br><br><br><br><br><br>
	<div class="container">
		<div class="row">
			<div class="col-md-3">
				<div class="login-box well">
					<form accept-charset="UTF-8" role="form" method="post" action="user/oversea_loginProc.jsp">
						<legend>로그인</legend>
						<div class="form-group">
							<label for="username-email">이메일</label>
							<input name="email" id="username-email" value='' type="text" placeholder="Email" class="form_control" />
						</div>
						<div class="form-group">
							<label for="password">비밀번호</label>
							<input name="passwd" id="password" value='' type="password" placeholder="Password" class="form_control" />
						</div>
						<div class="form-group">
							<input type="submit" class="btn btn-default btn-login-submit btn-block m-t-md" value="로그인" onclick="loginchk()">
						</div>
						<span class="text-center"><a href="oversea_choice_idpw.jsp">아이디/비밀번호 찾기</a></span>
						<hr/>
						<div class="form-group">
							<a href="oversea_joinform.jsp" class="btn btn-default btn-block m-t-md">회원가입</a>
						</div>
					</form>
				</div>
		   </div>
	  </div>
   </div>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="js/bootstrap.min.js"></script>

</body>
</html>