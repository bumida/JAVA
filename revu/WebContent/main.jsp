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
</head>
<body>
${session_id} 

   <c:if test="${session_id eq null}">
			<script>
			   setTimeout(function() {
				alert("로그인 후 이용해주세요");
				location.replace("${pageContext.request.contextPath}/login.jsp");
				
			}, 6000);
			</script>
		</c:if>

   
 <c:if test="${session_id eq 'admin'}">
			<script>
			    alert("관리자모드로 로그인하셨습니다.");
				location.replace("${pageContext.request.contextPath}/Grouplist.gr");
			</script>
	</c:if>
	<c:if test="${session_id != 'admin'}">
	<script>  
   location.replace("${pageContext.request.contextPath}/group/GroupList.gr") 
    </script>
     </c:if>
    
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
                                        <a href="mainList.jsp"><img src="assets/img/logo/BlogMagazineLogo.png" alt=""></a>
                                    </div>
                                </div>
                                <div class="header-info-right d-flex align-items-center" style="font-weight: bold;">
                                   <ul>                                          
                                       <li><a href="main.jsp">체험단</a></li>
                                        <li><a href="${pageContext.request.contextPath}/board/BoardList.do">고객센터</a></li>
                                       <li><a href="">${session_id}님 환영합니다.</a></li>
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
        <!-- Banner News Area Start -->
        <div class="banner-news">
            
        </div>
        <!-- Banner News Area End -->
        <!-- Latest Posts Area -->
        
        <!-- Latest Posts End-->
       
        <!-- Video Area End -->
        <!-- Nwes slider Start -->
        
        <!-- Nwes slider End -->
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
                <div class="row justify-content-lg-between">
                    <div class="col-lg-8 col-md-8">
                        <!-- single-job-content -->
                        <div class="single-job-items mb-30">
                            <div class="job-items">
                                <div class="company-img">
                                    <a href="#"><img src="assets/img/gallery/hairPost.png" alt="" width="300" height="200"></a>
                                </div>
                                <div class="job-tittle">
                                    <span>#헤어살롱 #인생머리 </span>
                                    <a href="post_details.html"><h4>[서울 동대문]</h4></a>
                                    <p>인생머리 만들어 들어요</p>
                                </div>
                            </div>
                        </div>
                        <!-- single-job-content -->
                        <div class="single-job-items mb-30">
                            <div class="job-items">
                                <div class="company-img">
                                    <a href="#"><img src="assets/img/gallery/food.png" alt="" width="300" height="200"></a>
                                </div>
                                <div class="job-tittle">
                                    <span>#인생 맛집 #곱창</span>
                                    <a href="post_details.html"><h4>[서울 마장동]</h4></a>
                                    <p>마장동 곱창 잘하는집</p>
                                </div>
                            </div>
                        </div>
                        <!-- single-job-content -->
                        <div class="single-job-items mb-30">
                            <div class="job-items">
                                <div class="company-img">
                                    <a href="#"><img src="assets/img/gallery/hairpost3.png" alt="" width="300" height="200"></a>
                                </div>
                                <div class="job-tittle">
                                    <span>#머리 #왕십리헤어</span>
                                    <a href="post_details.html"><h4>[왕십리][헤어샵]</h4></a>
                                    <p>왕십리 로코코 헤어샵</p>
                                </div>
                            </div>
                        </div>
                        <!-- single-job-content -->
                        <div class="single-job-items mb-30">
                            <div class="job-items">
                                <div class="company-img">
                                    <a href="#"><img src="assets/img/gallery/hairPost4.png" alt="" width="300" height="200"></a>
                                </div>
                                <div class="job-tittle">
                                    <span>#홍대#제오헤어</span>
                                    <a href="post_details.html"><h4>[홍대입구]제오헤어</h4></a>
                                    <p>홍대 머리잘하는 미용실</p>
                                </div>
                            </div>
                        </div>
                        <!-- single-job-content -->
                        <div class="single-job-items mb-30">
                            <div class="job-items">
                                <div class="company-img">
                                    <a href="#"><img src="assets/img/gallery/pool.png" alt="dd" width="300" height="200"></a>
                                </div>
                                <div class="job-tittle">
                                    <span>#경기도가평</span>
                                    <a href="post_details.html"><h4>[경기도][가평]리플레쉬</h4></a>
                                    <p>풀빌라 펜션</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-3">
                        <div class="google-add mb-40">
                            <img href="" src="assets/img/gallery/Ad.png" alt="">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Top Posts End -->
        <!-- Latest Posts Area -->
        <div class="latest-posts pt-80 pb-80">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="section-tittle mb-35">
                            <h2>Latest Posts</h2>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-4 col-md-6">
                        <div class="single-baner-nw2 mb-30">
                            <div class="banner-img-cap2">
                                <div class="banner-img">
                                    <img src="assets/img/gallery/trend1.png" alt="" width="350" height="250">
                                </div>
                                <div class="banner-cap2">
                                    <p>Technology</p>
                                   <h3><a href="post_details.html">The pomelo case: scope of plant rights in China</a></h3>
                                    <p class="blog-text" style="text-transform: normal !important;">Indie folks start out by making something they want to read, that tell stories they want told..</p>
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
                                    <p>Technology</p>
                                   <h3><a href="post_details.html">The pomelo case: scope of plant rights in China</a></h3>
                                    <p class="blog-text" style="text-transform: normal !important;">Indie folks start out by making something they want to read, that tell stories they want told..</p>
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
                                    <p>Technology</p>
                                   <h3><a href="post_details.html">The pomelo case: scope of plant rights in China</a></h3>
                                    <p class="blog-text" style="text-transform: normal !;">Indie folks start out by making something they want to read, that tell stories they want told..</p>
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
                                    <p>Technology</p>
                                   <h3><a href="post_details.html">The pomelo case: scope of plant rights in China</a></h3>
                                    <p class="blog-text" style="text-transform: normal !;">Indie folks start out by making something they want to read, that tell stories they want told..</p>
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
                                    <p>Technology</p>
                                   <h3><a href="post_details.html">The pomelo case: scope of plant rights in China</a></h3>
                                    <p class="blog-text" style="text-transform: normal !;">Indie folks start out by making something they want to read, that tell stories they want told..</p>
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
                                    <p>Technology</p>
                                   <h3><a href="post_details.html">The pomelo case: scope of plant rights in China</a></h3>
                                    <p class="blog-text" style="text-transform: normal !;">Indie folks start out by making something they want to read, that tell stories they want told..</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <!-- Latest Posts End-->
      
    </main>
    
   

    <jsp:include page="footer.jsp"/>