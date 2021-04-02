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
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/layout.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/index.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/sub.css">
</head>
<body style= "font-family: 'Noto Sans KR', sans-serif;">
  <!-- Header Start -->
  <header>
    <div class="header-area">
        <div class="main-header ">
            <div class="header-top ">
               <div class="container-fluid">
                   <div class="col-xl-12">
                        <div class="row d-flex justify-content-lg-between align-items-center">
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
  </header>
  <!-- Header End -->

  <div class="video-area mb-60" style="background-image: url('assets/img/home_slider_1.jpg'); height: 387px; opacity: 0.9;">
    <br><br>
    <div style="text-align:center;">
      <a style= "font-size:3em; font-weight:800; ">BLOG MAGAZINE</a><br>
      <a href="${pageContext.request.contextPath}/join.jsp" class="genric-btn default" style="background-color: #1f75d9; color: black; font-weight:500;">회원가입</a>
    </div>
  </div>
  <div class="container">
    <div class="row">
      <div class="col-lg-12"></div>
      <div class="col-lg-4 col-md-6">
        <div class="single-baner-nw2 mb-30">
          <div class="banner-img-cap2">
            <div class="banner-img">
              <img src="assets/img/gallery/trend1.png" alt="" width="350" height="250">
            </div>
            <div class="banner-cap2">
              <h3>어떤 블로그라도!</h3>
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
              <h3>내가 원하는 체험 찾기</h3>
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
              <h3>확실한 블로그매거진</h3>
              <p class="blog-text" style="text-transform: normal !;">간편한 회원가입 후 이용하세요</p>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="page_intro mb-80">
      <h2 class="text-center main_title">
        <span><b>광고주의<br>필수요소</b></span>
      </h2>
      <ul class="w50 left service_info">
        <li class="active" data-id="1">
          <div class="info_title">
            <h3>
              광고주
            </h3>
          </div>
          <div class="info_txt">
            Blog Magazine은 바이럴의 영향력을 갖춘 블로그, SNS 체험단을 활용하여 광고주의 장소 및 제품에 대한 리얼 리뷰를 작성, 유용한 양질의 정보를 여러 유저들에게 노출함으로써 자연스러운 매출의 성장을 만들어드립니다.
          </div>
        </li>
        <li class="" data-id="2">
          <div class="info_title">
            <h3>
              체험단 활성의 원동력
            </h3>
          </div>
          <div class="info_txt">
            고객의 요청에 따라 다양한 제품 및 음식, 장소 등의 체험 활동을 통해 체험단(블로거, SNS)은 삶을 윤택하게 만들고, 건전한 리뷰로 블로거, SNS 계정의 활성화, 고객과 함께 Win-Win 할 수 있습니다.
          </div>
        </li>
        <li class="" data-id="3">
          <div class="info_title">
            <h3>
              다양한 진행 상품
            </h3>
          </div>
          <div class="info_txt">
            Blog Magazine 은 블로그와 SNS만 있으면 맛집 체험 리뷰, 제품 사용 리뷰, 서비스 체험 리뷰, DB 모집 마케팅, 블로그 배너 광고를 통해 경험 뿐 아니라 다양한 포인트 혜택을 받을 수 있습니다.
          </div>
        </li>
      </ul>
    </div>
    <div class="camp_order mb-80">
      <h2 class="text-center mb-60">
  			<span>Blog Magazine</span> 체험단 진행 순서
  		</h2>
  		<div class="step_outer">
  			<div class="step_box">
  				<div class="step_box_inner step_box_basic">
            <div class="step_icon icon_basic">
              <img src="assets/img/icon/search.png" alt="">
            </div>
            <p class="step_title">캠페인 확인</p>
            <span class="step_desc">블로그 매거진에 등록된 다양한 캠페인을 확인하세요.</span>
          </div>
  			</div>
        <div class="step_box">
  				<div class="step_box_inner step_box_basic">
            <div class="step_icon icon_basic">
              <img src="assets/img/icon/apply.png" alt="">
            </div>
            <p class="step_title">희망 캠페인 신청</p>
            <span class="step_desc">블로그 매거진에 등록된 다양한 캠페인을 확인하세요.</span>
          </div>
  			</div>
        <div class="step_box">
  				<div class="step_box_inner step_box_basic">
            <div class="step_icon icon_basic">
              <img src="assets/img/icon/speaker.png" alt="">
            </div>
            <p class="step_title">리뷰어 발표</p>
            <span class="step_desc">블로그 매거진에 등록된 다양한 캠페인을 확인하세요.</span>
          </div>
  			</div>
        <div class="step_box">
  				<div class="step_box_inner step_box_basic">
            <div class="step_icon icon_basic">
              <img src="assets/img/icon/user.png" alt="">
            </div>
            <p class="step_title">서비스/제품 체험</p>
            <span class="step_desc">블로그 매거진에 등록된 다양한 캠페인을 확인하세요.</span>
          </div>
  			</div>
        <div class="step_box">
  				<div class="step_box_inner step_box_basic">
            <div class="step_icon icon_basic">
              <img src="assets/img/icon/write.png" alt="">
            </div>
            <p class="step_title">리뷰 등록</p>
            <span class="step_desc">블로그 매거진에 등록된 다양한 캠페인을 확인하세요.</span>
          </div>
  			</div>
  		</div>
    </div>
  </div>

<jsp:include page="footer.jsp"/>
