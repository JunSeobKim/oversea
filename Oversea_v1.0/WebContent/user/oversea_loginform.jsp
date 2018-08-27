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
    <link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700,700i%7cWork+Sans:400,500,700" rel="stylesheet" type="../text/css">
    
    <link rel="stylesheet" href="../assets/css/combined.css">

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
<br><br><br><br><br><br><br><br><br><br><br><br><br>

	<header class="nk-header">
        <!--
        START: Navbar
    -->
        <nav class="nk-navbar nk-navbar-top nk-navbar-sticky nk-navbar-transparent nk-navbar-white-text-on-top">
            <div class="container">
                <div class="nk-nav-table">
                    <a href="../index.html" class="nk-nav-logo">
                        <img src="../assets/images/logo.png" alt="" width="200" class="nk-nav-logo-onscroll">
                        <img src="../assets/images/logo.png" alt="" width="200">
                    </a>

                    <ul class="nk-nav nk-nav-right hidden-md-down" data-nav-mobile="#nk-nav-mobile">
                        <li>
                            <a href="../index.html#about">여행지추천</a>
                        </li>
                        <li>
                            <a href="../index.html#contact">환율정보</a>
                        </li>
                        <li>
                            <a href="oversea_loginform.html">로그인</a>
                        </li>
                        <li>
                            <a href="../blog.html">검색</a>
                        </li>
                    </ul>

                    <ul class="nk-nav nk-nav-right nk-nav-icons">
                        <li class="single-icon hidden-lg-up">
                            <a href="#" class="nk-navbar-full-toggle">
                                <span class="nk-icon-burger">
                                    <span class="nk-t-1"></span>
                                    <span class="nk-t-2"></span>
                                    <span class="nk-t-3"></span>
                                </span>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- END: Navbar -->

    </header>
    
    <!--
    START: Navbar Mobile
-->
    <nav class="nk-navbar nk-navbar-full nk-navbar-align-center" id="nk-nav-mobile">
        <div class="nk-navbar-bg">
            <div class="bg-image" style="background-image: url('../assets/images/bg-menu.jpg')"></div>
        </div>
        <div class="nk-nav-table">
            <div class="nk-nav-row">
                <div class="container">
                    <div class="nk-nav-header">

                        <div class="nk-nav-logo">
                            <a href="../index.html" class="nk-nav-logo">
                                <img src="../assets/images/logo-light.svg" alt="" width="85">
                            </a>
                        </div>

                        <div class="nk-nav-close nk-navbar-full-toggle">
                            <span class="nk-icon-close"></span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="nk-nav-row-full nk-nav-row">
                <div class="nano">
                    <div class="nano-content">
                        <div class="nk-nav-table">
                            <div class="nk-nav-row nk-nav-row-full nk-nav-row-center nk-navbar-mobile-content">
                                <ul class="nk-nav">
                                    <!-- Here will be inserted menu from [data-mobile-menu="#nk-nav-mobile"] -->
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="nk-nav-row">
                <div class="container">
                    <div class="nk-nav-social">
                        <ul>
                            <li><a href="https://twitter.com/nkdevv"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="https://www.facebook.com/unvabdesign/"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="https://dribbble.com/_nK"><i class="fa fa-dribbble"></i></a></li>
                            <li><a href="https://www.instagram.com/unvab/"><i class="fa fa-instagram"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </nav>
    <!-- END: Navbar Mobile -->
    
    <form action="oversea_loginProc.jsp" method="post" class="signUp" id="signupForm">
   <h1 class="signUpTitle">로그인 하시겠습니까?</h1>
   <input name="email" type="text" class="signUpInput" placeholder="이메일" autofocus required>
   <input name="passwd" type="password" class="signUpInput" placeholder="비밀번호" required>
   <input type="submit" value="로그인" class="signUpButton" onclick="loginchk()">

</body>
</html>