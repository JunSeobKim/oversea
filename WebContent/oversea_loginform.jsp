<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Oversea 로그인하기</title>

<!-- START: Styles -->

    <!-- Google Fonts -->
    <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Open+Sans:400,300'>
    <link rel="stylesheet" href="assets/css/oversea_loginForm.css">

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
<body style="background-image: url('assets/images/background.jpg'); background-size: 100%;">
<jsp:include page="user/oversea_after_login_nav.jsp" flush="false"></jsp:include>
	<div id="login">
      <h3><font color="white"><strong>Login</strong></font></h3>
         <br>
         <form method="post" action="user/oversea_loginProc.jsp">
            <fieldset>
               <p><input type="text" required value="Email" name="email"
                     onBlur="if(this.value=='')this.value='Email'" 
                        onFocus="if(this.value=='Email')this.value='' "></p>
               
               <p><input type="password" required value="Password" name="passwd"
                     onBlur="if(this.value=='')this.value='Password'"
                        onFocus="if(this.value=='Password')this.value='' "></p>
               <p>
                  <a href="oversea_choice_idpw.jsp">Forgot Password?</a>
               </p>             
               <p><input type="submit" value="Login" onclick=""></p>           
            </fieldset>         
         </form>
         <button class="join" onclick="location.href='oversea_joinform.jsp' ">Join us</button>
	</div>
</body>
</html>