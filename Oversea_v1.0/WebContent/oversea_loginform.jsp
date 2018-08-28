<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Oversea 로그인하기</title>

<!-- START: Styles -->

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700,700i%7cWork+Sans:400,500,700" rel="stylesheet" type="text/css">
    
    <link rel="stylesheet" href="assets/css/combined.css">

<!-- END: Styles -->

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
    
    <form action="user/oversea_loginProc.jsp" method="post" class="signUp" id="signupForm">
   <h1 class="signUpTitle">로그인</h1>
   <input name="email" type="text" class="signUpInput" placeholder="이메일" autofocus required>
   <input name="passwd" type="password" class="signUpInput" placeholder="비밀번호" required>
   <input type="submit" value="로그인" class="signUpButton" onclick="loginchk()">
   </form>
   <button onclick="location='oversea_joinform.jsp'">회원가입</button>
   
   <a href="oversea_choice_idpw.jsp">아이디/비밀번호 찾기</a>
</body>
</html>