<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/sub.css">

   <style>
   .line1-ellipsis {
display: block;/* 블록태그로 만들어준다 */
text-overflow: ellipsis;/* 말줄임 css */
white-space: nowrap;/*글자를 한줄로 모아준다*/
overflow: hidden;
background:pink;/*실제 글자 영역 상태 확인하기 위함*/
}
</style>
</head>
<body style= "font-family: 'Noto Sans KR', sans-serif;">
    <c:set var="g_bean" value="${requestScope.g_bean}"/>
   <c:set var="replyBeanList" value="${requestScope.replyBeanList}"/>
${session_id}

   <c:set var="group_member" value="${requestScope.group_member}" />
   <c:if test="${session_id eq null}">
			<script>
			    alert("로그인 후 이용해주세요");
				location.replace("${pageContext.request.contextPath}/login.jsp");


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
                              <div class="header-info-mid">
                                  <!-- logo -->
                                  <div class="logo">
                                      <a href="${pageContext.request.contextPath}/group/GroupList.gr"><img src="${pageContext.request.contextPath}/assets/img/logo/BlogMagazineLogo.png" alt=""></a>
                                  </div>
                              </div>
                              <div class="header-info-right d-flex align-items-center" style="font-weight: bold;">
                                 <ul>
                                     <li><a href="${pageContext.request.contextPath}/group/GroupList.gr">체험단</a></li>
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
  <div class="video-area mb-80" style="background: url('${pageContext.request.contextPath}/assets/img/gallery/bg06.jpg') center no-repeat; background-size: cover; height: 550px;">
    <div class="container">
      <p class="main_slogan">저희<span> Blog Magazine </span>은 광고주님과 체험단님들의<br> 적극적인 참여를 환영합니다.</p>
      <p class="sub_slogan">Blog Magazine의 리뷰는?<br>100% 리얼! 고객과의 소통은 마케팅의 필수요소 입니다.</p>
    </div>
  </div>
  <div class="wrap">
  	<div class="container">
      <div class="camp_order mb-80">
        <h2 class="text-center mb-60">
    			<span>Blog Magazine</span> 체험단 진행 순서
    		</h2>
    		<div class="step_outer">
    			<div class="step_box">
    				<div class="step_box_inner step_box_basic">
              <div class="step_icon icon_basic">
                <img src="${pageContext.request.contextPath}/assets/img/icon/search.png" alt="">
              </div>
              <p class="step_title">캠페인 확인</p>
              <span class="step_desc">블로그 매거진에 등록된 다양한 캠페인을 확인하세요.</span>
            </div>
    			</div>
          <div class="step_box">
    				<div class="step_box_inner step_box_basic">
              <div class="step_icon icon_basic">
                <img src="${pageContext.request.contextPath}/assets/img/icon/apply.png" alt="">
              </div>
              <p class="step_title">희망 캠페인 신청</p>
              <span class="step_desc">블로그 매거진에 등록된 다양한 캠페인을 확인하세요.</span>
            </div>
    			</div>
          <div class="step_box">
    				<div class="step_box_inner step_box_basic">
              <div class="step_icon icon_basic">
                <img src="${pageContext.request.contextPath}/assets/img/icon/speaker.png" alt="">
              </div>
              <p class="step_title">리뷰어 발표</p>
              <span class="step_desc">블로그 매거진에 등록된 다양한 캠페인을 확인하세요.</span>
            </div>
    			</div>
          <div class="step_box">
    				<div class="step_box_inner step_box_basic">
              <div class="step_icon icon_basic">
                <img src="${pageContext.request.contextPath}/assets/img/icon/user.png" alt="">
              </div>
              <p class="step_title">서비스/제품 체험</p>
              <span class="step_desc">블로그 매거진에 등록된 다양한 캠페인을 확인하세요.</span>
            </div>
    			</div>
          <div class="step_box">
    				<div class="step_box_inner step_box_basic">
              <div class="step_icon icon_basic">
                <img src="${pageContext.request.contextPath}/assets/img/icon/write.png" alt="">
              </div>
              <p class="step_title">리뷰 등록</p>
              <span class="step_desc">블로그 매거진에 등록된 다양한 캠페인을 확인하세요.</span>
            </div>
    			</div>
    		</div>
      </div>
      <div class="check_list mb-80">
        <div class="check_list_box">
          <h2 class="mb-60"><span>신청하기 전에 꼭! 읽어주세요</span></h2>
          <div class="check_list_cont">
            <ul>
              <li class="mb-35">
                <p class="cont_title"><span>01</span> 리뷰어 신청기간</p>
                <p class="cont_desc">선정 후 단순변심에 의한 제품교환 및 옵션·배송지 변경은 어려우니 신청 시 캠페인 정보를 꼼꼼히 살펴주시고 수령받으실 배송지 주소를 확인해주세요. <br>선정 후 단순변심 등 개인사정으로 인한 취소는 불가합니다.</p>
              </li>
              <li class="mb-35">
                <p class="cont_title"><span>02</span> 리뷰어 발표</p>
                <p class="cont_desc">선정이 되면 문자·메일로 선정 사실 및 정보를 안내해 드리니 꼭! 확인해주세요.<br>리뷰어 발표 이후 1~2일 이내 출고되며, 제품 수령까지 3~5일 소요될 수 있습니다.(캠페인별·지역별 상이할 수 있으니 캠페인 정보를 확인해주세요.)<br>배송 시 송장번호는 따로 안내되지 않을 수 있습니다.</p>
              </li>
              <li class="mb-35">
                <p class="cont_title"><span>03</span> 리뷰 등록기간</p>
                <p class="cont_desc">검색키워드를 지켜서 컨텐츠를 작성해주세요.(지켜지지 않은 경우, 수정 요청이 있을 수 있습니다.)<br>기간 내 미등록, 캠페인미션 미수행, 검색키워드 미적용, 스폰서배너 수정 및 제거 등은 캠페인 참여에 제한이 있을 수 있습니다. </p>
              </li>
            </ul>
          </div>
        </div>
      </div>
  	</div>
  </div>

  <div class="wrap ad_box mb-80">
  	<div class="ad_box_inner">
      <div class="box_cover"></div>
      <div class="container">
        <div class="contents_box">
          <h2 class="text-center">
            <span>광고주 여러분들의 연락을 기다립니다.</span>
          </h2>
          <div class="contents">
            <p class="mail"><span>이메일 : aaaaaaaaa@email.com</span></p>
            <p class="call"><span>전화번호 : 010-1234-5678</span></p>
          </div>
        </div>
      </div>
    </div>
  </div>
<jsp:include page="footer.jsp"/>
