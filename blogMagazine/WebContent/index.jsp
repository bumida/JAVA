<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html class="no-js" lang="zxx">
    <head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>블로그 매거진(접속자)</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="manifest" href="site.webmanifest">
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">

	<!-- CSS here -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/owl.carousel.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/slicknav.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/flaticon.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/progressbar_barfiller.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/gijgo.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/animate.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/animated-headline.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/magnific-popup.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/fontawesome-all.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/themify-icons.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/slick.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/nice-select.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.css">
	<style>
	
@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@700&display=swap');
</style>
</head>
<body style= "font-family: 'Noto Sans KR', sans-serif;">

<header>
        <!-- Header Start -->
       <div class="header-area">
            <div class="main-header ">
                <div class="header-top ">
                   <div class="container-fluid">
                       <div class="col-xl-12">
                            <div class="row d-flex justify-content-lg-between align-items-center">
                                <div class="header-info-left">
                                   
                                        <div class="form-box f-right ">
                                            
                                            <div class="search-icon">
                                                <i class="ti-search"></i>
                                            </div>
                                        </div>
                                     
                                </div>
                                <div class="header-info-mid">
                                    <!-- logo -->
                                    <div class="logo">
                                        <a href=""><img src="assets/img/logo/BlogMagazineLogo.png" alt=""></a>
                                    </div>
                                </div>
                                <div class="header-info-right d-flex align-items-center" style="font-weight: bold;">
                                   <ul>                                          
                                       <li><a href="">체험단</a></li>
                                        <li><a href="">고객센터</a></li>
                                       <li><a href="${pageContext.request.contextPath}/login.jsp">로그인</a></li>
                                       <li><a href="${pageContext.request.contextPath}/join.jsp">회원가입</a></li>
                                   </ul>
                                   <!-- Social -->
                                   <div class="header-social">
                                        <a href="#"><i class="fab fa-twitter"></i></a>
                                        <a href="https://bit.ly/sai4ull"><i class="fab fa-facebook-f"></i></a>
                                        <a href="#"><i class="fab fa-pinterest-p"></i></a>
                                    </div>
                                </div>
                            </div>
                       </div>
                   </div>
                </div>
               
            </div>
       </div>
        <!-- Header End -->
    </header>
  
      <div class="video-area" style="background-image: url('assets/img/home_slider_1.jpg'); height: 387px; opacity: 0.9;">
      <br><br>
            <div style="text-align:center;"><a style= "font-size:3em; font-weight:800; ">BLOG MAGAZINE</a> <br>
            
            <a href="${pageContext.request.contextPath}/join.jsp" class="genric-btn default" style="background-color: #1f75d9; color: black; font-weight:500;">회원가입</a></div>
        </div>
  		<br><br><br>
            <div class="container">
               
                <div class="row">
                 <div class="col-lg-12">
                    </div>
                
                    <div class="col-lg-4 col-md-6">
                        <div class="single-baner-nw2 mb-30">
                            <div class="banner-img-cap2">
                                <div class="banner-img">
                                    <img src="assets/img/gallery/trend1.png" alt="" width="350" height="250">
                                </div>
                                <div class="banner-cap2">
                                    
                                   <h3><a href="">어떤 블로그라도!</a></h3>
                                    <p class="blog-text" style="text-transform: normal !important;">광고나 홍보 블로그매거진에서 해드립니다.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="single-baner-nw2 mb-30">
                            <div class="banner-img-cap2">
                                <div class="banner-img">
                                    <img src="assets/img/gallery/trend2.png" alt="" width="350" height="250">
                                </div>
                                <div class="banner-cap2">
                                   <h3><a href="">내가 원하는 체험 찾기</a></h3>
                                    <p class="blog-text" style="text-transform: normal !important;">내가 원하는 체험단을 블로그매거진에서 찾아보세요.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="single-baner-nw2 mb-30">
                            <div class="banner-img-cap2">
                                <div class="banner-img">
                                    <img src="assets/img/gallery/trend3.png" alt="" width="350" height="250">
                                </div>
                                <div class="banner-cap2">
                                    
                                   <h3><a href="">확실한 블로그매거진</a></h3>
                                    <p class="blog-text" style="text-transform: normal !;">간편한 회원가입 후 이용하세요</p>
                                </div>
                            </div>
                        </div>
                    </div>
                   
                   
                   
                </div>
            </div>
        </div>
        


</body>
</html>