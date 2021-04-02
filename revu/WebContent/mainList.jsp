<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!doctype html>
<html class="no-js" lang="zxx">
    <head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>블로그 매거진</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="manifest" href="${pageContext.request.contextPath}/site.webmanifest">
    <link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/assets/img/favicon.ico">

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
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/sub.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/layout.css">
</head>

<body style= "font-family: 'Noto Sans KR', sans-serif;">

 <c:if test="${session_id eq null}">
			<script>
			    alert("로그인 후 이용해주세요");
				location.replace("${pageContext.request.contextPath}/login.jsp");


			</script>
		</c:if>
    <c:if test="${session_id eq 'admin'}">
			<script>
			    alert("관리자모드로 로그인하셨습니다.");
				location.replace("${pageContext.request.contextPath}/Grouplist.gr");
			</script>
	</c:if>

	 <c:if test="${session_id ne null}">
			<script>
				alert("${session_id} 님 환영합니다.");

			</script>
	 </c:if>

        <c:set var="groupList" value="${requestScope.groupList}"/>
		<c:set var="newest_group" value="${requestScope.newest_group}"/>
		<c:set var="hotest_group" value="${requestScope.hotest_group}"/>
		<c:set var="totalCnt" value="${requestScope.totalCnt}"/>

  <!-- Header Start -->
  <header>
    <div class="header-area">
      <div class="main-header">
        <div class="header-top">
          <div class="container-fluid">
            <div class="col-xl-12">
              <div class="row d-flex justify-content-lg-between align-items-center">
                <div class="header-info-mid">
                <!-- logo -->
                  <div class="logo">
                    <a href=""><img src="${pageContext.request.contextPath}/assets/img/logo/BlogMagazineLogo.png" alt=""></a>
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
  </header>
  <!-- Header End -->

  <div class="nes-slider-area pt-80 pb-80">
      <div class="row">
          <div class="col-lg-12">
              <div class="news-slider-active">
      <c:choose>
        <c:when test="${groupList != null and fn:length(groupList) > 0}">
        <c:forEach var="g_bean" items="${groupList}">
                  <div class="single-news-slider">

                    <a href="${pageContext.request.contextPath}/group/Groupview.gr?group_num=${g_bean.getGroup_num()}" class="deadline_list">
                      <div class="box_img">
                        <img src="${pageContext.request.contextPath}/${g_bean.getGroup_img()}" alt="product_imgproduct_img" class="contents_img">
                        <div class="remain_day">
                          <span>top<br></span>
                        </div>
                      </div>
                      <div class="product_text_box">
                        <div class="box_title">${g_bean.getGroup_info()}</div>
                        <div class="box_desc">${g_bean.getGroup_info_two()}</div>
                        <div class="box_proc clearfix">
                          <b>신청인원 <strong>${g_bean.getMember_num()}</strong> 명</b>
                          <span> / 모집인원 <strong>${g_bean.getMember_max()}</strong> 명</span>
                        </div>
                      </div>
                    </a>
                  </div>
          </c:forEach>
          </c:when>
          </c:choose>
              </div>
          </div>
      </div>
  </div>
  <!-- Nwes slider End -->

  <!-- Top Posts Start -->
  <div class="latest-posts pt-80 pb-80">
    <div class="container">
      <div class="row">
        <div class="col-12">
          <div class="section-tittle mb-35">
            <h2>인기 캠페인</h2>
          </div>
        </div>
      </div>
      <div class="camp_list clearfix">
      <c:choose>
        <c:when test="${hotest_group != null and fn:length(hotest_group) > 0}">
        <c:forEach var="h_bean" items="${hotest_group}">
      <a href="${pageContext.request.contextPath}/group/Groupview.gr?group_num=${h_bean.getGroup_num()}" class="list_box mb-20">
        <div class="box_img">
           <img src="${pageContext.request.contextPath}/${h_bean.getGroup_img()}" alt="product_imgproduct_img" class="contents_img">
            <div class="remain_day">
            <b>top</b>
            <span></span>
            </div>
            </div>
            <div class="box_title">${h_bean.getGroup_info()}</div>
            <div class="box_desc">${h_bean.getGroup_info_two()}</div>
            <div class="box_proc clearfix">
              <b>신청 <strong>${h_bean.getMember_num()}</strong> 명</b>
              <span>/ 모집 <strong>${h_bean.getMember_max()}</strong> 명</span>
            </div>
          </a>
      	</c:forEach>
      	</c:when>
      	</c:choose>
    	</div>
    </div>
  </div>
  <!-- Top Posts end -->

  <!-- Latest Posts Start -->
  <div class="latest-posts pt-80 pb-80">
    <div class="container">
      <div class="row">
        <div class="col-12">
          <div class="section-tittle mb-35">
            <h2>신규 캠페인</h2>
          </div>
        </div>
      </div>
      <div class="camp_list clearfix">
		    <c:choose>
          <c:when test="${groupList != null and fn:length(groupList) > 0}">
          <c:forEach var="g_bean" items="${groupList}">
          <a href="${pageContext.request.contextPath}/group/Groupview.gr?group_num=${g_bean.getGroup_num()}" class="list_box mb-20">
            <div class="box_img">
              <img src="${pageContext.request.contextPath}/${g_bean.getGroup_img()}" alt="product_imgproduct_img" class="contents_img">
              <%-- <img src="assets/img/gallery/form.png" alt="sns_icon" class="sns_ico"> --%>
              <div class="remain_day">
                <b>new</b>
                <span></span>
              </div>
            </div>
            <div class="box_title">${g_bean.getGroup_info()}</div>
            <div class="box_desc">${h_bean.getGroup_info_two()}</div>
            <div class="box_proc clearfix">
              <b>신청 <strong>${g_bean.getMember_num()}</strong> 명</b>
              <span>/ 모집 <strong>${g_bean.getMember_max()}</strong> 명</span>
            </div>
          </a>
      	</c:forEach>
      	</c:when>
      	</c:choose>
    	</div>
    </div>
  </div>
  <!-- Latest Posts End -->

  <jsp:include page="footer.jsp"/>
