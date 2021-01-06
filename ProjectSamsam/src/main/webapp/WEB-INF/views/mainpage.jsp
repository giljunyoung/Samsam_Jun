<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page import="com.project.samsam.myfree.*" %>





<!DOCTYPE html>

<head>
  <title>메인페이지</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">


  <link href="https://fonts.googleapis.com/css?family=B612+Mono|Cabin:400,700&display=swap" rel="stylesheet">
  
  <link rel="stylesheet" href="./resources/fonts/icomoon/style.css">

  <link rel="stylesheet" href="./resources/css/bootstrap.min.css">
  <link rel="stylesheet" href="./resources/css/jquery-ui.css">
  <link rel="stylesheet" href="./resources/css/owl.carousel.min.css">
  <link rel="stylesheet" href="./resources/css/owl.theme.default.min.css">

  <link rel="stylesheet" href="./resources/css/jquery.fancybox.min.css">

  <link rel="stylesheet" href="./resources/css/bootstrap-datepicker.css">

  <link rel="stylesheet" href="./resources/css/aos.css">
  <link href="./resources/css/jquery.mb.YTPlayer.min.css" media="all" rel="stylesheet" type="text/css">

  <link rel="stylesheet" href="./resources/css/style.css">
  
  <link rel="stylesheet" href="./resources/css/main.css" />


<style>

/* 나눔스퀘어  font 적용 시작 */
@font-face {
  font-family: "NanumSquareRoundR";
  src: url("./fonts/NanumSquareRoundR.eot"); /* IE9 Compat Modes */
  src: url("./fonts/NanumSquareRoundR.eot?#iefix") format("embedded-opentype"), /* IE6-IE8 */
    url("./fonts/NanumSquareRoundR.otf") format("opentype"), /* Open Type Font */
    url("./fonts/NanumSquareRoundR.svg") format("svg"), /* Legacy iOS */
    url("./fonts/NanumSquareRoundR.ttf") format("truetype"), /* Safari, Android, iOS */
    url("./fonts/NanumSquareRoundR.woff") format("woff"), /* Modern Browsers */
    url("./fonts/NanumSquareRoundR.woff2") format("woff2"); /* Modern Browsers */
  font-weight: normal;
  font-style: normal;
}

body {font-family: "NanumSquareRoundR", sans-serif}
/* 나눔스퀘어  font 적용 끝*/

body,html {
	background-color: #f7f7f7;
}

.row > * {
    padding: 30px 15px 0px 40px;
}
.row {
    margin-top: -40px;
    margin-left: -50px;
}

.site-logo {
    font-size: 3rem;
}


.header-top > .container {
    padding-top: 10px;
    padding-bottom: 0px;
}

.site-section {
	background-colir: #f7f7f7;
}

.half-post-entry .img-bg, .half-post-entry .contents {
  width: 100%; }
  @media  {
    .half-post-entry .img-bg, .half-post-entry .contents {
    width: 100%;
    height: 600px;
}
      
@media (max-width: 5000px) {
  .owl-style .owl-nav {
    display: none; } }
.owl-slide-3 .owl-nav .owl-prev, .owl-slide .owl-nav .owl-prev, .owl-style .owl-nav .owl-prev {
    left: 230px;
    top: 430px;
    background:rgba(0,0,0,0);
    color: black;
}
.owl-slide-3 .owl-nav .owl-next, .owl-slide .owl-nav .owl-next, .owl-style .owl-nav .owl-next {
    right: 230px;
    top: 430px;
    background:rgba(0,0,0,0);
    color: black;

}
.owl-item {
	height: 650px;
}
.owl-slide-3 .owl-dots, .owl-slide .owl-dots, .owl-style .owl-dots {
    bottom: -30px;
}

.container_nav {
    margin: 0 auto;
    max-width: 100%;
    width: 1900px;
}

.site-navbar .site-navigation .site-menu > li > a {
    text-transform: uppercase;
    font-size: 1.4rem;
    font-family: "NanumSquareRoundR", sans-serif;
 }
 .site-navbar {
    font-family: "NanumSquareRoundR", sans-serif;
}
 
 #nav:after {
    content: '';
    display: block;
    width: 1900px;
    left: 0;
    height: 0.5em;
    background-color: #FFC324;
    }
    
#nav > ul > li.current:before {
    -moz-transform: rotateZ(45deg);
    -webkit-transform: rotateZ(45deg);
    -ms-transform: rotateZ(45deg);
    transform: rotateZ(45deg);
    width: 0.5em;
    height: 0.5em;
    content: '';
    display: block;
    position: absolute;
    bottom: -0.3em;
    left: 50%;
    margin-left: 0;
    background-color: #FFC324;
    }
    
ul {
	background-color: white;
}

#nav > ul > li a {
    color: black;
    text-decoration: none;
    border: 0;
    display: block;
    padding: 1.5em 0.5em 1.35em 0.5em;
}

#nav > ul > li.current a {
    color: black;
}

.site-navbar {
    margin-bottom: 0px;
    z-index: 1999;
    width: 100%;
    background: #f7f7f7;
}

.sticky-wrapper .site-navbar {
    -webkit-transition: .3s all ease;
    -o-transition: .3s all ease;
    transition: .3s all ease;
    border-bottom: none;
}

ul {
    background-color: #f7f7f7;
}

.sticky-wrapper {
	color : #474747;
    position: absolute;
    z-index: 100;
    width: 100%;
    background: #f7f7f7;
}

a {
	text-decoration: none;
	color: black;
	border-bottom: none;
}
#nav > ul > li:hover a {
    color: #37c0fb;
}

.btn-danger {
    color: #fff;
    background-color: #f23a2e;
    border-color: #f23a2e;
}
.site-section.subscribe {
    padding: 2em 0;
}

hr {
    border-top: solid 1px #ECECEC;
    border: 1;
    margin-bottom: 1.5em;
}

.blockquote {
    margin-bottom: 0;
    font-size: 1.25rem;
}
blockquote {
    border-left: 0;
    padding: 0;
}
.blockquote-footer {
    display: block;
    font-size: 70%;
    color: #6c757d;
    font-style: italic;
}
.container_footer {
    margin: 0 auto;
    width: 1400px;
}
.row_footer {
    display: flex;
    flex-wrap: inherit;
    box-sizing: border-box;
    align-items: stretch;
}

</style>
</head>
<body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">

	<div class="site-wrap">

		<div class="site-mobile-menu site-navbar-target">
			<div class="site-mobile-menu-header">
				<div class="site-mobile-menu-close mt-3">
					<span class="icon-close2 js-menu-toggle"></span>
				</div>
			</div>
			<div class="site-mobile-menu-body"></div>
		</div>



		<div class="header-top">
			<div class="container">
				<div class="row align-items-center">
					<div class="col-12 col-lg-6 d-flex">
						<a href="mainpage.me" class="site-logo"> <img
							src="./resources/images/logo.png" class="float-right" />
						</a> <a href="#"
							class="ml-auto d-inline-block d-lg-none site-menu-toggle js-menu-toggle text-black"><span
							class="icon-menu h3"></span></a>

					</div>
					<div class="col-12 col-lg-6 ml-auto d-flex">
						<div class="ml-md-auto top-social d-none d-lg-inline-block">

						</div>
						<form action="#" class="d-inline-block">
							<div class="d-flex mb-5">
								<button type="button" class="btn btn-danger"
									style="background-color: #f23a2e; border: 1px #f23a2e"
									onClick="location.href='loginform.me'">SIGN IN</button>
							</div>
						</form>
					</div>
				</div>

			</div>




			<div
				class="site-navbar py-2 js-sticky-header site-navbar-target d-none pl-0 d-lg-block"
				role="banner">

				<div class="container_nav">
					<div class="d-flex align-items-center">
						<div class="mr-auto ml-auto">
							<nav id="nav">
								<ul>
									<li class="col-sm-1 ml-4"></li>&nbsp;&nbsp;&nbsp;
									<li class="current"><a href="mainpage.me" class="nav-link">Home</a></li>
									<li><a href="#" class="nav-link">분양</a></li>
									<li><a href="#" class="nav-link">보호소</a></li>
									<li><a href="#" class="nav-link">커뮤니티</a></li>
									<li><a href="customer_service.me" class="nav-link">고객센터</a></li>
									<li class="col-sm-2"></li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<li class="col-sm-3">
										<form action="#" class="search-form d-inline-block">
											<div class="d-flex reverse">
												<input type="text" class="form-control"
													placeholder="Search...">
												<button type="submit" class="btn btn-secondary">
													<span class="icon-search"></span>
												</button>
											</div>
										</form>
									</li>
								</ul>
							</nav>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="site-section py-0">
			<div class="owl-carousel hero-slide owl-style">
				<div class="site-section">
					<div class="container">
						<div class="half-post-entry d-block d-lg-flex bg-light">
							<div class="img-bg"
								style="background-image: url('./resources/images/mainpage_1.jpg')"></div>
						</div>
					</div>
				</div>

				<div class="site-section">
					<div class="container">
						<div class="half-post-entry d-block d-lg-flex bg-light">
							<div class="img-bg"
								style="background-image: url('./resources/images/mainpage_2.jpg')"></div>
						</div>
					</div>
				</div>

				<div class="site-section">
					<div class="container">
						<div class="half-post-entry d-block d-lg-flex bg-light">
							<div class="img-bg"
								style="background-image: url('./resources/images/mainpage_3.jpg')"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<br><br><br>
		<hr style="width: 100%">
		<div class="footer">
			<div class="pt-6 pb-4 pt-lg-7 pb-lg-6">
				<div class="container_footer">
					<div class="row_footer justify-content-md-between">
						<div class="container_footer">
							<div class="col-md-12 mr-auto ml-4">
								<blockquote class="blockquote text-left">
									<h2 class="mb-0">삼삼하개</h2>
									<footer class="blockquote-footer">삼삼하다 : 사물이나 사람의 생김새나
										됨됨이가 마음이 끌리게 그럴듯하다.</footer>
								</blockquote>
							</div>
						</div>
						<div class="col-md-7 col-lg-6 mt-5 mt-md-0">
							<div class="row_footer">
								<div class="col-6 col-md-4 mb-4 mb-md-0">
									<h3 class="h6 text-uppercase mb-3">Services</h3>
									<ul class="list-unstyled">
										<li class="mb-1"><a href="#" class="text-reset">UI
												Kit</a></li>
										<li class="mb-1"><a href="#" class="text-reset">Documentation</a></li>
										<li class="mb-1"><a href="#" class="text-reset">Page
												builder</a></li>
									</ul>
								</div>
								<div class="col-6 col-md-4 mb-4 mb-md-0">
									<h3 class="h6 text-uppercase mb-3">Company</h3>
									<ul class="list-unstyled">
										<li class="mb-1"><a href="#" class="text-reset">About
												Us</a></li>
										<li class="mb-1"><a href="#" class="text-reset">Contact
												Us</a></li>
										<li class="mb-1"><a href="#" class="text-reset">Careers</a></li>
									</ul>
								</div>
								<div class="col-6 col-md-4">
									<h3 class="h6 text-uppercase mb-3">Help</h3>
									<ul class="list-unstyled">
										<li class="mb-1"><a href="#" class="text-reset">FAQs</a></li>
										<li class="mb-1"><a href="#" class="text-reset">Pricing</a></li>
										<li class="mb-1"><a href="#" class="text-reset">Terms</a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>




	<script src="./resources/js/jquery-3.3.1.min.js"></script>
  <script src="./resources/js/jquery-migrate-3.0.1.min.js"></script>
  <script src="./resources/js/jquery-ui.js"></script>
  <script src="./resources/js/popper.min.js"></script>
  <script src="./resources/js/bootstrap.min.js"></script>
  <script src="./resources/js/owl.carousel.min.js"></script>
  <script src="./resources/js/jquery.stellar.min.js"></script>
  <script src="./resources/js/jquery.countdown.min.js"></script>
  <script src="./resources/js/bootstrap-datepicker.min.js"></script>
  <script src="./resources/js/jquery.easing.1.3.js"></script>
  <script src="./resources/js/aos.js"></script>
  <script src="./resources/js/jquery.fancybox.min.js"></script>
  <script src="./resources/js/jquery.sticky.js"></script>
  <script src="./resources/js/jquery.mb.YTPlayer.min.js"></script>
  <script src="./resources/js/main.js"></script>
  
  <script src="./resources/js/jquery.min.js"></script>
  <script src="./resources/js/jquery.dropotron.min.js"></script>
  <script src="./resources/js/browser.min.js"></script>
  <script src="./resources/js/breakpoints.min.js"></script>
  <script src="./resources/js/util.js"></script>




</body>

</html>