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
  <link rel="stylesheet" href="./resources/css/owl.theme.default.min.css">

  <link rel="stylesheet" href="./resources/css/jquery.fancybox.min.css">

  <link rel="stylesheet" href="./resources/css/bootstrap-datepicker.css">

  <link rel="stylesheet" href="./resources/fonts/flaticon/font/flaticon.css">

  <link rel="stylesheet" href="./resources/css/aos.css">
  <link href="./resources/css/jquery.mb.YTPlayer.min.css" media="all" rel="stylesheet" type="text/css">

  <link rel="stylesheet" href="./resources/css/style.css">


<style>

.half-post-entry .img-bg, .half-post-entry .contents {
  width: 100%; }
  @media  {
    .half-post-entry .img-bg, .half-post-entry .contents {
      width: 100%;
      height: 500px; } }
      
@media (max-width: 1900px) {
  .owl-style .owl-nav {
    display: none; } }
.owl-slide-3 .owl-nav .owl-prev, .owl-slide .owl-nav .owl-prev, .owl-style .owl-nav .owl-prev {
    left: 355px;
    background:rgba(0,0,0,0);
    color: black;
}
.owl-slide-3 .owl-nav .owl-next, .owl-slide .owl-nav .owl-next, .owl-style .owl-nav .owl-next {
    right: 355px;
    background:rgba(0,0,0,0);
    color: black;

}
.site-navbar .site-navigation .site-menu > li > a {
    text-transform: uppercase;
    font-size: 1.4rem;
 }
 #nav:after {
    content: '';
    display: block;
    width: 100%;
    height: 0.75em;
    background-color: #37c0fb;
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
            <a href="index.html" class="site-logo">
              삼삼하개
            </a>

            <a href="#" class="ml-auto d-inline-block d-lg-none site-menu-toggle js-menu-toggle text-black"><span
                class="icon-menu h3"></span></a>

          </div>
          <div class="col-12 col-lg-6 ml-auto d-flex">
            <div class="ml-md-auto top-social d-none d-lg-inline-block">
              <a href="#" class="d-inline-block p-3"><span class="icon-facebook"></span></a>
                <a href="#" class="d-inline-block p-3"><span class="icon-twitter"></span></a>
                <a href="#" class="d-inline-block p-3"><span class="icon-instagram"></span></a>
            </div>
            <form action="#" class="search-form d-inline-block">

              <div class="d-flex">
                <input type="email" class="form-control" placeholder="Search...">
                <button type="submit" class="btn btn-secondary" ><span class="icon-search"></span></button>
              </div>
            </form>

            
          </div>
          <div class="col-6 d-block d-lg-none text-right">
            
          </div>
        </div>
      </div>
      


      
      <div class="site-navbar py-2 js-sticky-header site-navbar-target d-none pl-0 d-lg-block" role="banner">

      <div class="container">
        <div class="d-flex align-items-center">
          
          <div class="mr-auto">
            <nav class="site-navigation position-relative text-right" role="navigation">
              <ul class="site-menu main-menu js-clone-nav mr-auto d-none pl-0 d-lg-block">
                <li class="opener" style="user-select: none; cursor:pointer; 
                	white-space: nowrap; opacity:1;">
                  <a href="index.html" class="nav-link text-left">Home</a>
                </li>
                <li style="white-space: nowrap;">
                  <a href="categories.html" class="nav-link text-left">분양</a>
                </li>
                <li style="white-space: nowrap;">
                  <a href="categories.html" class="nav-link text-left">보호소</a>
                </li>
                <li style="white-space: nowrap;">
                  <a href="categories.html" class="nav-link text-left">커뮤니티</a>
                </li>
                <li style="white-space: nowrap;">
                    <a href="categories.html" class="nav-link text-left">고객센터</a>
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
              <div class="img-bg" style="background-image: url('./resources/images/mainpage_1.jpg')"></div>
            </div>
          </div>
        </div>

       <div class="site-section">
          <div class="container">
            <div class="half-post-entry d-block d-lg-flex bg-light">
              <div class="img-bg" style="background-image: url('./resources/images/mainpage_2.jpg')"></div>
            </div>
          </div>
        </div>
        
        <div class="site-section">
          <div class="container">
            <div class="half-post-entry d-block d-lg-flex bg-light">
              <div class="img-bg" style="background-image: url('./resources/images/mainpage_3.jpg')"></div>
            </div>
          </div>
        </div>
      </div>
    </div>
		
  

   
    <!-- END section -->
    

    <div class="site-section subscribe bg-light">
      <div class="container">
        <form action="#" class="row align-items-center">
          <div class="col-md-5 mr-auto">
            <h2>Newsletter Subcribe</h2>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perferendis aspernatur ut at quae omnis pariatur obcaecati possimus nisi ea iste!</p>
          </div>
          <div class="col-md-6 d-flex flex-row-reverse"">
              <img src="./resources/images/logo.png" class="float-right"/>
          </div>
        </form>
      </div>
    </div>


    
    <div class="footer">
      <div class="container">
        

        <div class="row">
          <div class="col-12">
            <div class="copyright">
                <p>
                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                    Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart text-danger" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank" >Colorlib</a>
                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                    </p>
            </div>
          </div>
        </div>
      </div>
    </div>
    

  </div>
  <!-- .site-wrap -->


  <!-- loader -->
  <div id="loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#ff5e15"/></svg></div>

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

</body>

</html>