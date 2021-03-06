<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Oversea 메인</title>

	<meta name="description" content="Snow - Clean & Minimal Portfolio HTML template.">
    <meta name="keywords" content="portfolio, clean, minimal, blog, template, portfolio website">
    <meta name="author" content="nK">

    <link rel="icon" type="image/png" href="assets/images/favicon.png">

    <meta name="viewport" content="width=device-width, initial-scale=1">

<!-- START: Styles -->

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700,700i%7cWork+Sans:400,500,700" rel="stylesheet" type="text/css">
    
    <link rel="stylesheet" href="assets/css/combined.css">
	<link rel="stylesheet" href="assets/css/scroll_button.css">
	<link rel="stylesheet" href="assets/css/oversea_index.css">
	
	<link href="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css" rel="stylesheet" />
	<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<script src="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
			
	<script language="javascript" type="text/javascript" src="assets/js/scroll.js"></script>
	
    <!-- END: Styles -->

</head>
<body>
	 <jsp:include page="user/nav.jsp" flush="false"></jsp:include>
	<div class="nk-main">
        <!-- START: Header Title -->
        <div class="nk-header-title nk-header-title-full">
        	<!-- 
            <div class="bg-image">
                <div style="background-image: url('assets/images/background.png');"></div>
                <div class="bg-image-overlay" style="background-color: rgba(12, 12, 12, 0.25);"></div>
            </div>
             -->
			<div id="myCarousel" class="carousel slide" data-ride="carousel"> 
				<!--페이지
				<ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel" data-slide-to="1"></li>
					<li data-target="#myCarousel" data-slide-to="2"></li>
				</ol>
				페이지-->
			
				<div class="carousel-inner">
					<!--슬라이드1-->
					<div class="item active"> 
						<img src="assets/images/background1.jpg" style="width:100%" alt="First slide">
					</div>
					<!--슬라이드1-->
			
					<!--슬라이드2-->
					<div class="item"> 
						<img src="assets/images/background2.jpg" style="width:100%" data-src="" alt="Second slide">
					</div>
					<!--슬라이드2-->
					
					<!--슬라이드3-->
					<div class="item"> 
						<img src="assets/images/background3.png" style="width:100%" data-src="" alt="Third slide">
					</div>
					<!--슬라이드3-->
				</div>
				
				<!--이전, 다음 버튼-->
				<a class="left carousel-control" href="#myCarousel" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a> 
				<a class="right carousel-control" href="#myCarousel" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a> 
			</div> 
			         
            <div>
                <a class="scroll-button" onclick="fnMove()">
                	<font color=white>NEWSFEED</font>
                	<span class="demoSpan1"></span>
               	</a>
            </div>
        </div>

        <!-- END: Header Title -->
		<div id="newsfeed">
		</div>
        <!-- START: NewsFeed -->
        <div class="ov_newsfeed">
            <div class="container">
                <div class="row">
                	<!-- col-lg-8 offset-lg-2 text-xs-center -->
                    <div class="ov_newsfeed_banner">
                        <h1>N E W S F E E D</h1>
                    </div>
                </div>
            </div>
        </div>
        <!-- END: NewsFeed -->
        
		<!-- START: NewsFeed BackGround -->
		 <div class="ov_newsfeed_background" id="nf_bg" style="margin-bottom: 1000px;">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 offset-lg-2 text-xs-center">
                        <div class="nk-gap-4 mt-60"></div>
                    </div>
                </div>
            </div>
        </div>
		<!-- END: NewsFeed BackGround -->
		
		<!-- START: 여백 -->
		<div class="bg-white" id="nf_bg">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 offset-lg-2 text-xs-center">
                        <div class="nk-gap-4 mt-25"></div>
                    </div>
                </div>
            </div>
        </div>
		<!-- END: 여백 -->
		
        <!--
    START: Footer
-->
        <footer class="nk-footer">


            <div class="nk-footer-cont">
                <div class="container text-xs-center">
                <!-- 
                    <div class="nk-footer-social">
                        <ul>
                            <li><a href="https://twitter.com/nkdevv"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="https://www.facebook.com/unvabdesign/"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="https://dribbble.com/_nK"><i class="fa fa-dribbble"></i></a></li>
                            <li><a href="https://www.instagram.com/unvab/"><i class="fa fa-instagram"></i></a></li>
                        </ul>
                    </div>
				 -->
                    <div class="nk-footer-text">
                        <p>2018 &copy; Design by Oversea. Code by Oversea</p>
                    </div>
                </div>
            </div>
        </footer>
        <!-- END: Footer -->


    </div>




    <!-- START: Scripts -->

    <script src="assets/js/combined.js"></script>
    
    <!-- END: Scripts -->

</body>
</html>