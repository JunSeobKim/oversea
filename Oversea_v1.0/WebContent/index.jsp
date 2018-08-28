<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

	<meta name="description" content="Snow - Clean & Minimal Portfolio HTML template.">
    <meta name="keywords" content="portfolio, clean, minimal, blog, template, portfolio website">
    <meta name="author" content="nK">

    <link rel="icon" type="image/png" href="assets/images/favicon.png">

    <meta name="viewport" content="width=device-width, initial-scale=1">

<!-- START: Styles -->

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700,700i%7cWork+Sans:400,500,700" rel="stylesheet" type="text/css">
    
    <link rel="stylesheet" href="assets/css/combined.css">

    <!-- END: Styles -->

</head>
<body>
	 <jsp:include page="user/nav.jsp" flush="false"></jsp:include>

	<div class="nk-main">

        <!-- START: Header Title -->
        <div class="nk-header-title nk-header-title-full">
            <div class="bg-image">
                <div style="background-image: url('assets/images/background.png');"></div>
                <div class="bg-image-overlay" style="background-color: rgba(12, 12, 12, 0.25);"></div>
                <!-- style="background-color: rgba(12, 12, 12, 0.6);" -->
            </div>
            <div class="nk-header-table">
                <div class="nk-header-table-cell">
                    <div class="container">

                        <!-- 
                        	<h2 class="nk-subtitle text-white">New Branding Agency</h2>
                         -->


                        <h1 class="nk-title display-1 text-white">
                        	오사카              
                          <!--
                          <br> 
                          <em class="fw-400">you publish on the web</em> 
                          --> 
                        </h1>


                        <div class="nk-gap"></div>
                        <div class="nk-header-text text-white">
                            <div class="nk-gap-4"></div>
                        </div>


                    </div>
                </div>
            </div>
            
            <div>
                <a class="nk-header-title-scroll-down text-white" href="#nk-header-title-scroll-down">
                    <span class="pe-7s-angle-down"></span>
                </a>
            </div>
            
        </div>

        <div id="nk-header-title-scroll-down"></div>

        <!-- END: Header Title -->

        <!-- START: NewsFeed -->
        <div class="bg-white" id="nf">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 offset-lg-2 text-xs-center">
                     
                        <div class="nk-gap-4 mt-9"></div>
					<!--
                        <div class="nk-gap mnt-5"></div>
                     -->
                     
                        <h1><br><br>N E W S F E E D</h1>
                        </p>

                   

                        <div class="nk-gap-4 mt-25"></div>
                    </div>
                </div>
            </div>
        </div>
        <!-- END: NewsFeed -->
        
		<!-- START: NewsFeed BackGround -->
		 <div class="bg-grey-4" id="nf_bg">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 offset-lg-2 text-xs-center">
                        <div class="nk-gap-4 mt-25"></div>
                    </div>
                </div>
            </div>
        </div>
		<!-- END: NewsFeed BackGround -->
		
        <!-- START: Portfolio -->
        <div class="nk-box bg-white" id="projects">
            <div class="nk-gap-4 mt-5"></div>

            <h2 class="text-xs-center display-4">Best Projects</h2>

            <div class="nk-gap mnt-6"></div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 offset-lg-2">
                        <div class="text-xs-center">Donec orci sem, pretium ac dolor et, faucibus faucibus mauris. Etiam,pellentesque faucibus. Vestibulum gravida volutpat ipsum non ultrices.
                        </div>
                    </div>
                </div>
            </div>

            <div class="nk-gap-2 mt-12"></div>
            <div class="container">
            <div class="nk-portfolio-list nk-isotope nk-isotope-3-cols">


                <div class="nk-isotope-item" data-filter="Mockup">
                    <div class="nk-portfolio-item nk-portfolio-item-square nk-portfolio-item-info-style-1">
                        <a href="portfolio-single.html" class="nk-portfolio-item-link"></a>
                        <div class="nk-portfolio-item-image">
                            <div style="background-image: url('assets/images/portfolio-7-sm.jpg');"></div>
                        </div>
                        <div class="nk-portfolio-item-info nk-portfolio-item-info-center text-xs-center">
                            <div>
                                <h2 class="portfolio-item-title h3">Vinyl Record</h2>
                                <div class="portfolio-item-category">Mockup</div>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="nk-isotope-item" data-filter="Print">
                    <div class="nk-portfolio-item nk-portfolio-item-square nk-portfolio-item-info-style-1">
                        <a href="portfolio-single.html" class="nk-portfolio-item-link"></a>
                        <div class="nk-portfolio-item-image">
                            <div style="background-image: url('assets/images/portfolio-4-sm.jpg');"></div>
                        </div>
                        <div class="nk-portfolio-item-info nk-portfolio-item-info-center text-xs-center">
                            <div>
                                <h2 class="portfolio-item-title h3">Modern T-Shirt</h2>
                                <div class="portfolio-item-category">Print</div>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="nk-isotope-item" data-filter="Branding">
                    <div class="nk-portfolio-item nk-portfolio-item-square nk-portfolio-item-info-style-1">
                        <a href="portfolio-single.html" class="nk-portfolio-item-link"></a>
                        <div class="nk-portfolio-item-image">
                            <div style="background-image: url('assets/images/portfolio-5-sm.jpg');"></div>
                        </div>
                        <div class="nk-portfolio-item-info nk-portfolio-item-info-center text-xs-center">
                            <div>
                                <h2 class="portfolio-item-title h3">Minimal Bag</h2>
                                <div class="portfolio-item-category">Branding</div>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="nk-isotope-item" data-filter="Design">
                    <div class="nk-portfolio-item nk-portfolio-item-square nk-portfolio-item-info-style-1">
                        <a href="portfolio-single.html" class="nk-portfolio-item-link"></a>
                        <div class="nk-portfolio-item-image">
                            <div style="background-image: url('assets/images/portfolio-9-sm.jpg');"></div>
                        </div>
                        <div class="nk-portfolio-item-info nk-portfolio-item-info-center text-xs-center">
                            <div>
                                <h2 class="portfolio-item-title h3">Clean &amp; Groovy</h2>
                                <div class="portfolio-item-category">Design</div>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="nk-isotope-item" data-filter="Design">
                    <div class="nk-portfolio-item nk-portfolio-item-square nk-portfolio-item-info-style-1">
                        <a href="portfolio-single.html" class="nk-portfolio-item-link"></a>
                        <div class="nk-portfolio-item-image">
                            <div style="background-image: url('assets/images/portfolio-3-sm.jpg');"></div>
                        </div>
                        <div class="nk-portfolio-item-info nk-portfolio-item-info-center text-xs-center">
                            <div>
                                <h2 class="portfolio-item-title h3">Minimal Mobile App</h2>
                                <div class="portfolio-item-category">Design</div>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="nk-isotope-item" data-filter="Print">
                    <div class="nk-portfolio-item nk-portfolio-item-square nk-portfolio-item-info-style-1">
                        <a href="portfolio-single.html" class="nk-portfolio-item-link"></a>
                        <div class="nk-portfolio-item-image">
                            <div style="background-image: url('assets/images/portfolio-8-sm.jpg');"></div>
                        </div>
                        <div class="nk-portfolio-item-info nk-portfolio-item-info-center text-xs-center">
                            <div>
                                <h2 class="portfolio-item-title h3">White T-Shirt</h2>
                                <div class="portfolio-item-category">Print</div>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="nk-isotope-item" data-filter="Branding">
                    <div class="nk-portfolio-item nk-portfolio-item-square nk-portfolio-item-info-style-1">
                        <a href="portfolio-single.html" class="nk-portfolio-item-link"></a>
                        <div class="nk-portfolio-item-image">
                            <div style="background-image: url('assets/images/portfolio-2-sm.jpg');"></div>
                        </div>
                        <div class="nk-portfolio-item-info nk-portfolio-item-info-center text-xs-center">
                            <div>
                                <h2 class="portfolio-item-title h3">Business Card</h2>
                                <div class="portfolio-item-category">Branding</div>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="nk-isotope-item" data-filter="Photography">
                    <div class="nk-portfolio-item nk-portfolio-item-square nk-portfolio-item-info-style-1">
                        <a href="portfolio-single.html" class="nk-portfolio-item-link"></a>
                        <div class="nk-portfolio-item-image">
                            <div style="background-image: url('assets/images/portfolio-6-sm.jpg');"></div>
                        </div>
                        <div class="nk-portfolio-item-info nk-portfolio-item-info-center text-xs-center">
                            <div>
                                <h2 class="portfolio-item-title h3">Heja Stockholm</h2>
                                <div class="portfolio-item-category">Photography</div>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="nk-isotope-item" data-filter="Photography">
                    <div class="nk-portfolio-item nk-portfolio-item-square nk-portfolio-item-info-style-1">
                        <a href="portfolio-single.html" class="nk-portfolio-item-link"></a>
                        <div class="nk-portfolio-item-image">
                            <div style="background-image: url('assets/images/portfolio-12-sm.jpg');"></div>
                        </div>
                        <div class="nk-portfolio-item-info nk-portfolio-item-info-center text-xs-center">
                            <div>
                                <h2 class="portfolio-item-title h3">Paper Bag</h2>
                                <div class="portfolio-item-category">Photography</div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
            </div>
            <div class="nk-gap-4 mt-15"></div>
        </div>
        <!-- END: Portfolio -->

        <!-- START: Reviews -->
        <div class="nk-box bg-dark-1">
            <div class="bg-image bg-image-parallax" style="background-image: url('assets/images/bg-pattern.jpg');"></div>
            <div class="nk-gap-5 mnt-6"></div>
            <div class="nk-gap-3"></div>
            <div class="container-fluid">
                <!-- START: Carousel -->
                <div class="nk-carousel nk-carousel-all-visible text-white" data-autoplay="18000" data-dots="true">
                    <div class="nk-carousel-inner">
                        <div>
                            <div>
                                <blockquote class="nk-blockquote-style-1 text-white">
                                    <p>Outstanding job and exceeded all expectations. It was a pleasure to work with them on a sizable first project and am looking forward to start the next one asap.</p>
                                    <cite>Michael Hopkins</cite>
                                </blockquote>
                                <div class="nk-gap-3 mt-10"></div>
                            </div>
                        </div>
                        <div>
                            <div>
                                <blockquote class="nk-blockquote-style-1 text-white">
                                    <p>Outstanding job and exceeded all expectations. It was a pleasure to work with them on a sizable first project and am looking forward to start the next one asap.</p>
                                    <cite>Michael Hopkins</cite>
                                </blockquote>
                                <div class="nk-gap-3 mt-10"></div>
                            </div>
                        </div>
                        <div>
                            <div>
                                <blockquote class="nk-blockquote-style-1 text-white">
                                    <p>Outstanding job and exceeded all expectations. It was a pleasure to work with them on a sizable first project and am looking forward to start the next one asap.</p>
                                    <cite>Michael Hopkins</cite>
                                </blockquote>
                                <div class="nk-gap-3 mt-10"></div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- END: Carousel -->
            </div>
            <div class="nk-gap-4 mt-3"></div>
        </div>
        <!-- END: Reviews -->

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