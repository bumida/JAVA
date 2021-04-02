<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%> 
<!doctype html>
<html class="no-js" lang="zxx">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>comment last </title>
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
</head>
<body>
  ${session_id}
  <c:if test="${session_id eq null}">
			<script>
			    alert("로그인 후 이용해주세요");
				location.replace("${pageContext.request.contextPath}/login.jsp");
				
			
			</script>
			</c:if>
    <!-- ? Preloader Start -->
  
    <!-- Preloader Start -->
    
    <main>
        <!-- breadcrumb Start-->
        
        <!-- breadcrumb End -->
        <!-- Post Details Stat -->
        <div class="psot-details pb-80">
            <div class="container">
                    <form action="${pageContext.request.contextPath}/group/GroupReplyOk.gr?group_num=${g_bean.getGroup_num()}" method="post" name="groupReply">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="details-img mb-40">
                            <img class="img-fluid" src="${pageContext.request.contextPath}/assets/img/blogMagazine.jpg" alt="">
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-8">
                        <div class="about-details-cap">
                        <h2>신청 완료되었습니다. 감사합니다.</h2>
                        </div>
                    </div>
                   
                    <div class="col-lg-10">
                        <div class="about-details-cap">
                            <p>1. </p>
                            
                            <h3>댓글 한마디를 작성해주세요.</h3>
                             <div class="mt-10">
									<textarea class="single-textarea" placeholder="MESSAGE" name="reply_contents" 
										 required="required" style="color:black"></textarea>
								
								</div>
								<td style="padding-left:10px" >
						<br>
						<button class="col-lg-10" href="javascript:comment()" style="color:black; width:70px;" >등록</button>						
					</td>
                            <!-- Socaial -->
                            
                        </div>
                    </div>
                </div>
                    </form>
            </div>
        </div>
        <!-- Post Details End -->
        <!--comments Area -->
        
        <!--comments Area End -->
        <!-- Latest Posts Area -->
      
        <!-- Latest Posts End-->
        <!-- Want To work -->
        
        <!-- Want To work End -->
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