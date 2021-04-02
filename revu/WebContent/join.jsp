<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html class="no-js" lang="zxx">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>회원가입</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="manifest" href="site.webmanifest">
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">

	<!-- CSS here -->
	<link rel="stylesheet" href="assets/css/bootstrap.min.css">
	<link rel="stylesheet" href="assets/css/owl.carousel.min.css">
	<link rel="stylesheet" href="assets/css/slicknav.css">
    <link rel="stylesheet" href="assets/css/flaticon.css">
    <link rel="stylesheet" href="assets/css/progressbar_barfiller.css">
    <link rel="stylesheet" href="assets/css/gijgo.css">
    <link rel="stylesheet" href="assets/css/animate.min.css">
    <link rel="stylesheet" href="assets/css/animated-headline.css">
	<link rel="stylesheet" href="assets/css/magnific-popup.css">
	<link rel="stylesheet" href="assets/css/fontawesome-all.min.css">
	<link rel="stylesheet" href="assets/css/themify-icons.css">
	<link rel="stylesheet" href="assets/css/slick.css">
	<link rel="stylesheet" href="assets/css/nice-select.css">
	<link rel="stylesheet" href="assets/css/style.css">
	<style>
	
@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@700&display=swap');
</style>
	
</head>
<body style= "font-family: 'Noto Sans KR', sans-serif;">
     <form name="joinForm" action="${pageContext.request.contextPath}/member/MemberJoinOk.me" method="post">
    <!-- ? Preloader Start -->
    <div id="preloader-active">
        <div class="preloader d-flex align-items-center justify-content-center">
            <div class="preloader-inner position-relative">
                <div class="preloader-circle"></div>
                <div class="preloader-img pere-text">
                    <img src="assets/img/logo/loder.png" alt="">
                </div>
            </div>
        </div>
    </div> 
    <!-- Preloader Start-->
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
                                       <li><a href="">광고문의</a></li>
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
        <!-- Header End -->
    <!-- Register Area Start -->
         <div class="register-form-area">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-xl-6 col-lg-8">
                        <div class="register-form text-center">
                            <!-- Login Heading -->
                            <div class="register-heading">
                                <span>회원가입</span>
                            </div>
                            <!-- Single Input Fields -->
                            <div class="input-box" >
                                <div class="single-input-fields" >
                                    <label>아이디</label>
                                    <input  type="text" style="text-transform:lowercase;" onkeyup="this.value=this.value.replace(/[^\\!-z]/gi,'');"    name="member_id" required="required" placeholder="새로운 아이디를 입력해주세요"/>
                                    <p id="idCheck_text"></p>
                                </div>
                                <div class="single-input-fields">
                                    <label>닉네임</label>
                                    <input style="text-transform:lowercase;" type="text" name="member_nickName" required="required" placeholder="닉네임을 입력해주세요"/>
                                </div>
                                <div class="single-input-fields">
                                    <label>비밀번호</label>
                                    <input style="text-transform:lowercase;" id="password1" type="password" name="member_pw" class="pw" required="required" placeholder="비밀번호를 입력해주세요"/>
                                     <span id="alert-success" style="display: none;">비밀번호가 일치합니다.</span>
                                </div>
                                <div class="single-input-fields">
                                    <label>비밀번호 확인</label>
                                    <input style="text-transform:lowercase;" id="password2" type="password" name="member_pw_check" class="pw" required="required" placeholder="비밀번호를 다시입력해주세요"/>
                                    <span id="alert-danger" style="display: none; color: #d92742; font-weight: bold; ">비밀번호가 일치하지 않습니다.</span>
                                </div>
                                <div class="single-input-fields">
                                    <label>이메일</label>
                                    <input style="text-transform:lowercase;"  name="member_email"   type="email" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter email address'"  placeholder="이메일을 입력해주세요"/>
                                </div>
                                
                            </div>
                            <!-- form Footer -->
                            <div class="register-footer">
                                <p> 이미 가입하셨나요? <a href="login.jsp"> 로그인하기</a> </p>
                            <li> <input type="submit" value="가입하기" style="background-color: #1f75d9; color: black; font-weight:500; onclick="javascript:formSubmit()"></li>
                            </div> 
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Register Area End -->
    

      
         
      
        <!-- footer-bottom area -->
        
            <div class="container">
                <div class="footer-border">
                    <div class="row align-items-center justify-content-center">
                        <div class="col-xl-9 col-lg-8">
                            <div class="footer-copy-right text-center">
                                <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        
        <!-- Footer End-->
   
    <!-- Scroll Up -->
    <div id="back-top" >
        <a title="Go to Top" href="#"> <i class="fas fa-level-up-alt"></i></a>
    </div>
    <!-- JS here -->
            
    
    


    <script src="//code.jquery.com/jquery-3.5.1.min.js"></script>
	<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
    
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
    <script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
    <script>var contextPath = "${pageContext.request.contextPath}";</script>
    <script src="${pageContext.request.contextPath}/join.js"></script>
    <script> $(function() { $("#postcodify_search_button").postcodifyPopUp(); }); </script>
    <!-- javascript -->
      <script>
    $('.pw').focusout(function () {
        var pwd1 = $("#password1").val();
        var pwd2 = $("#password2").val();
 
        if ( pwd1 != '' && pwd2 == '' ) {
            null;
        } else if (pwd1 != "" || pwd2 != "") {
            if (pwd1 == pwd2) {
                $("#alert-success").css('display', 'inline-block');
                $("#alert-danger").css('display', 'none');
            } else {
               $("#alert-success").css('display', 'none');
                $("#alert-danger").css('display', 'inline-block');
            }
        }
    });
    
    
    function checkid(id){
		check = false;
		if(id == ""){
			$("#idCheck_text").text("아이디를 작성해주세요.");
		}else{
			$.ajax({
				url: contextPath + "/member/MemberCheckIdOk.me?id="+id,
				type: 'get',
				dataType: 'text',
				success: function(data){
					if(data.trim() == 'ok'){
						$("#idCheck_text").text("사용할 수 있는 아이디입니다.");
						check= true;
					}else{
						$("#idCheck_text").text("중복된 아이디입니다.");
					}
				},
				error: function(){
					console.log("오류");
				}
			})
		}
	}
	
	$("input[name='member_id']").keyup(function(event){
		var id = $("input[name='member_id']").val();
		checkid(id);
	})
</script>
    
    </form>
    </body>
</html>