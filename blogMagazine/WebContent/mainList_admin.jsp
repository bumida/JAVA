<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%> 
<!doctype html>
<html class="no-js" lang="zxx">
    <head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>블로그 매거진(관리자)</title>
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
   ${session_id}
    <c:set var="hotest_group" value="${requestScope.hotest_group}"/>
    <c:set var="groupList" value="${requestScope.groupList}"/>
   <c:if test="${session_id != 'admin'}">
			<script>
			    alert("접근 불가합니다.");
				location.replace("${pageContext.request.contextPath}/login.jsp");
				
			
			</script>
		</c:if>
		<c:set var="groupList" value="${requestScope.groupList}"/>
		<c:set var="newest_group" value="${requestScope.newest_group}"/>
		<c:set var="hotest_group" value="${requestScope.hotest_group}"/>
		<c:set var="totalCnt" value="${requestScope.totalCnt}"/>
		

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
                                        <a href="${pageContext.request.contextPath}/group/GroupList.gr"><img src="assets/img/logo/BlogMagazineLogo.png" alt=""></a>
                                    </div>
                                </div>
                                <div class="header-info-right d-flex align-items-center" >
                                   <ul>                                          
                                       <li><a href="${pageContext.request.contextPath}/group/GroupList.gr">체험단</a></li>
                                        <li><a href="${pageContext.request.contextPath}/board/BoardList.do">고객센터</a></li>
                                       <li><a href="${pageContext.request.contextPath}/group/GroupAdminPage.gr">관리자님 환영합니다.</a></li>
                                       <li><a href="${pageContext.request.contextPath}/member/MemberLogOut.me">[로그아웃]</a></li>
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
        <!-- Header Start -->
      <div class="video-area" style="background-image: url('${pageContext.request.contextPath}/assets/img/home_slider_1.jpg'); height: 387px; opacity: 0.9;">
      <br><br>
            <div style="text-align:center;"><a style= "font-size:3em; font-weight:800; ">BLOG MAGAZINE</a> <br>
            
        </div>
        </div>
        <!-- Banner News Area End -->
        <!-- Latest Posts Area -->
        
      
        <div class="nes-slider-area pt-80 pb-80">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="news-slider-active">
                            <div class="single-news-slider">
                                <div class="news-img">
                                    <img src="${pageContext.request.contextPath}/assets/img/gallery/news-slider1.png" alt="">
                                </div>
                            </div>
                            <div class="single-news-slider">
                                <div class="news-img">
                                    <img src="${pageContext.request.contextPath}/assets/img/gallery/news-slider2.png" alt="">
                                </div>
                            </div>
                            <div class="single-news-slider">
                                <div class="news-img">
                                  <img src="${pageContext.request.contextPath}/assets/img/gallery/news-slider3.png" alt="">
                                </div>
                            </div>
                            <div class="single-news-slider">
                                <div class="news-img">
                                   <img src="${pageContext.request.contextPath}/assets/img/gallery/news-slider4.png" alt="">
                                </div>
                            </div>
                            <div class="single-news-slider">
                                <div class="news-img">
                                    <img src="${pageContext.request.contextPath}/assets/img/gallery/news-slider1.png" alt="">
                                </div>
                            </div>
                            <div class="single-news-slider">
                                <div class="news-img">
                                    <img src="${pageContext.request.contextPath}/assets/img/gallery/news-slider2.png" alt="">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Nwes slider End -->
         <div class="latest-posts pt-80 pb-80">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="section-tittle mb-35">
                            <h2>TOP POST</h2>
                        </div>
                    </div>
                </div>
                <div class="row" >
                <c:choose>
                <c:when test="${hotest_group != null and fn:length(hotest_group) > 0}">
                <c:forEach var="h_bean" items="${hotest_group}">
                    <div class="col-lg-4 col-md-6">
                        <div class="single-baner-nw2 mb-30">
                            <div class="banner-img-cap2">
                                <div class="banner-img">
                                 <a href="${pageContext.request.contextPath}/group/Groupview.gr?group_num=${g_bean.getGroup_num()}">   <img src="${pageContext.request.contextPath}/${h_bean.getGroup_img()}" alt="" width="350" height="250"></a>
                                </div>
                                <div class="banner-cap2">
                                    <p>${h_bean.getGroup_info()}</p>
                                   <h3><a href="${pageContext.request.contextPath}/group/Groupview.gr?group_num=${h_bean.getGroup_num()}">${h_bean.getGroup_info_two()}</a></h3>
                                    <p class="blog-text" style="text-transform: normal !important;">${h_bean.getGroup_info_three()}</p>인원<b>${h_bean.getMember_num()}</b>/${h_bean.getMember_max()}
                                </div>
                            </div>
                        </div>
                    </div>
                    </c:forEach>
                    </c:when>
                    </c:choose>
                    
                  
                    
                   
                </div>
            </div>
        </div>
        
        
        <!-- Top Posts Start -->
        <div class="top-post-area">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="section-tittle mb-35">
                            <h2>Top Posts</h2>
                        </div>
                    </div>
                </div>
                <div class="row justify-content-lg-between" style="font-family: 'SeoulNamsanM';">
                <c:choose>
                <c:when test="${groupList != null and fn:length(groupList) > 0}">
                <c:forEach var="g_bean" items="${groupList}">
                    <div class="col-lg-8 col-md-8">
                        <!-- single-job-content -->
                        
                        
                        <!-- single-job-content -->
                        <div class="single-job-items mb-30" >
                            <div class="job-items">
                                <div class="company-img">
                                    <a href="${pageContext.request.contextPath}/group/Groupview.gr?group_num=${g_bean.getGroup_num()}"><img src="${pageContext.request.contextPath}/${g_bean.getGroup_img()}" alt="" width="300" height="200"></a>
                                </div>
                                <div class="job-tittle">
                                    <span>${g_bean.getGroup_info()}</span>
                                    <a href="${pageContext.request.contextPath}/group/Groupview.gr?group_num=${g_bean.getGroup_num()}"><h4>${g_bean.getGroup_info_two()}</h4></a>
                                    <p>${g_bean.getGroup_info_three()}</p>
                                    <br><br>            
                                       인원&nbsp;<b>${g_bean.getMember_num()}</b>/${g_bean.getMember_max()}
                                </div>
                            </div>
                        </div>
                        <!-- single-job-content -->
                        
                        <!-- single-job-content -->
                        
                    </div>
                    
        </c:forEach>
						</c:when>
						</c:choose>
                </div>
            </div>
        </div>
        <!-- Top Posts End -->
        <!-- Latest Posts Area -->
       
        <!-- Latest Posts End-->
      
    </main>
    
   

    <!-- Scroll Up -->
    <div id="back-top" >
        <a title="Go to Top" href="#"> <i class="fas fa-level-up-alt"></i></a>
    </div>

    <!-- JS here -->

    <script src="./assets/js/vendor/modernizr-3.5.0.min.js"></script>
    <!-- Jquery, Popper, Bootstrap -->
    <script src="./assets/js/vendor/jquery-1.12.4.min.js"></script>
    <script src="./assets/js/popper.min.js"></script>
    <script src="./assets/js/bootstrap.min.js"></script>
    <!-- Jquery Mobile Menu -->
    <script src="./assets/js/jquery.slicknav.min.js"></script>

    <!-- Jquery Slick , Owl-Carousel Plugins -->
    <script src="./assets/js/owl.carousel.min.js"></script>
    <script src="./assets/js/slick.min.js"></script>
    <!-- One Page, Animated-HeadLin -->
    <script src="./assets/js/wow.min.js"></script>
    <script src="./assets/js/animated.headline.js"></script>
    <script src="./assets/js/jquery.magnific-popup.js"></script>

    <!-- Date Picker -->
    <script src="./assets/js/gijgo.min.js"></script>
    <!-- Nice-select, sticky -->
    <script src="./assets/js/jquery.nice-select.min.js"></script>
    <script src="./assets/js/jquery.sticky.js"></script>
    <!-- Progress -->
    <script src="./assets/js/jquery.barfiller.js"></script>
    
    <!-- counter , waypoint,Hover Direction -->
    <script src="./assets/js/jquery.counterup.min.js"></script>
    <script src="./assets/js/waypoints.min.js"></script>
    <script src="./assets/js/jquery.countdown.min.js"></script>
    <script src="./assets/js/hover-direction-snake.min.js"></script>

    <!-- contact js -->
    <script src="./assets/js/contact.js"></script>
    <script src="./assets/js/jquery.form.js"></script>
    <script src="./assets/js/jquery.validate.min.js"></script>
    <script src="./assets/js/mail-script.js"></script>
    <script src="./assets/js/jquery.ajaxchimp.min.js"></script>
    
    <!-- Jquery Plugins, main Jquery -->	
    <script src="./assets/js/plugins.js"></script>
    <script src="./assets/js/main.js"></script>
    
    </body>
</html>