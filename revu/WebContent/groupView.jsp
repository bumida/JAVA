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
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/sub.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/layout.css">

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
   <c:set var="group_member" value="${requestScope.group_member}" />
   <c:set var="replyCnt" value="${requestScope.replyCnt}" />


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
    <c:if test="${session_id == 'admin'}">
    <a href="javascript:deleteBoard()"><font color=black>[블로그삭제]</font></a>
    </c:if>
     <section class="blog_area single-post-area section-padding">
         <div class="container" >
            <div class="row">
            <%-- 선택한 캠페인 내용 --%>
               <div class="col-lg-8 posts-list">
                  <div class="single-post">
                     <div class="product_box">
                      <div class="product_box_left">
                        <img class="contents_img" src="${pageContext.request.contextPath}/${g_bean.getGroup_img()}" alt="product_img" width="300" height="250">
                        <div class="remain_day">
                        <b>7</b>
                        <span>일 남음</span>
                     </div>
                    </div>
                     <div class="product_box_right">
                        <div class="box_title">${g_bean.getGroup_info_two()}</div>
                        <div class="box_desc">${g_bean.getGroup_info_three()}</div>
                        <div class="box_proc clearfix">
                          <b>신청 <strong>${g_bean.getMember_num()}</strong> 명</b>
                          </div>
                          <div class="product_term">
                          <ul>
                          <li>
                           <span>
                      리뷰어 신청기간  ${g_bean.getGroup_register_date()}
                           </span>
                           </li>
                           <li>
                           <span>
                         리뷰어 발표  ${g_bean.getGroup_review_date()}
                           </span>
                           </li>
                           <li>
                           <span>
            리뷰 등록기간  ${g_bean.getGroup_reviewer_date()}
                           </span>
                           </li>
                           </ul>
                           </div>
                           <aside class="single_sidebar_widget search_widget">
                            <form action="${pageContext.request.contextPath}/group/GroupJoinPage.gr?group_num=${g_bean.getGroup_num()}" method= "post">
                               <button class="button rounded-0 primary-bg text-white w-100 btn_1 boxed-btn" type="submit">신청하기</button>
                            </form>
                         </aside>
                       </div>
                     </div>
                  </div>
                  <%-- 탭 메뉴 --%>
                  <div class="camp_tab clearfix">
                    <ul class="clearfix">
                      <li class="on">
                        <span>캠페인 상세</span>
                      </li>
                      <li>
                        <span>댓글 &nbsp <b>${replyCnt}</b></span>
                      </li>
                    </ul>
                    <%-- 캠페인 상세내용 --%>

                    <div class="blog_details camp_contents camp_contents01 on">
                    <b>캠페인 상세 내용</b>
                       <h2 style="color: #2d2d2d;"></h2>
                       <p class="excert">
                          <img src="${pageContext.request.contextPath}/${g_bean.getGroup_imgmain()}" alt="img" width="700" >
                       </p>
                    </div>
                    <!--  댓글 -->
                    <div class="comments-area camp_contents camp_contents02">
                      <h4>신청자 한마디</h4>
                      <form action="${pageContext.request.contextPath}/group/groupReplyOk.gr?group_num=${g_bean.getGroup_num()}" method="post" name="groupReply">
                      <c:set var="i" value="${0}"/>
                      <c:choose>
                       <c:when test="${replyBeanList != null and fn:length(replyBeanList)>0}">
                         <c:forEach var="reply" items="${replyBeanList}">
                           <div class="comment-list">
                              <div class="single-comment justify-content-between d-flex">
                                 <div class="user justify-content-between d-flex">
                                    <div class="thumb">
                                       <img src="${pageContext.request.contextPath}/assets/img/logo/comment.png" alt="">
                                    </div>
                                    <div class="desc">
                                       <p class="comment">${reply.getReply_contents()}</p>
                                       <div class="d-flex justify-content-between">
                                          <div class="d-flex align-items-center">
                                             <h5>
                                                <a href="#">${reply.getMember_id()}</a>
                                             </h5>
                                             <p class="date">month , 2020 at hour </p>
                                          </div>
                                          <div class="reply-btn">
                                             <a href="#" class="btn-reply text-uppercase">reply</a>
                                          </div>
                                          <c:if test="${session_id == 'admin'}">
                                          <a href="${pageContext.request.contextPath}/group/GroupReplyDeleteOk.gr?reply_num=${reply.getReply_num()}&group_num=${g_bean.getGroup_num()}"><font color=black>[삭제]</font></a>
                                          </c:if>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                         </c:forEach>
                       </c:when>
                       <c:otherwise>
                         <tr align="center">
                           <td align="center" width="150px" colspan="3">댓글이 없습니다.</td>
                         </tr>
                       </c:otherwise>
                      </c:choose>
                      </form>
                    </div>
                  </div>
               </div>
                <%-- 인기 캠페인 --%>
               <div class="col-lg-4">
                  <div class="blog_right_sidebar">
                     <aside class="single_sidebar_widget popular_post_widget">
                        <h3 class="widget_title" style="color: #2d2d2d; font-weight: 600;">인기 캠페인</h3>
                        <%-- <c:choose> --%>
                          <%-- <c:when test="${groupList != null and fn:length(groupList) > 0}"> --%>
                            <%-- <c:forEach var="g_bean" items="${groupList}" begin="0" end="4"> --%>
                              <div class="${pageContext.request.contextPath}/media post_item popular_camp_box">
                                <a href="${pageContext.request.contextPath}/group/Groupview.gr?group_num=${g_bean.getGroup_num()}">
                                  <img  src="${pageContext.request.contextPath}/${g_bean.getGroup_img()}" alt="post">
                                  <div class="${pageContext.request.contextPath}/media-body">
                                    <p class="title"><strong>&nbsp${g_bean.getGroup_info_three()}</strong></p>
                                    <p class="desc">&nbsp${g_bean.getGroup_info()}</p>
                                  </div>
                                </a>
                                <a href="${pageContext.request.contextPath}/group/Groupview.gr?group_num=${g_bean.getGroup_num()}">
                                  <img  src="${pageContext.request.contextPath}/${g_bean.getGroup_img()}" alt="post">
                                  <div class="${pageContext.request.contextPath}/media-body">
                                    <p class="title"><strong>&nbsp${g_bean.getGroup_info_three()}</strong></p>
                                    <p class="desc">&nbsp${g_bean.getGroup_info()}</p>
                                  </div>
                                </a>
                              </div>
                            <%-- </c:forEach> --%>
                          <%-- </c:when> --%>
                        <%-- </c:choose> --%>
                     </aside>
                  </div>
               </div>
            </div>
          </div>
      </section>
      <form action="${pageContext.request.contextPath}/group/GroupDeleteOk.gr?group_num=${g_bean.getGroup_num()}" method="post" name="boardform">
				<input type="hidden" name="seq" value="${g_bean.getGroup_num()}" />
 			</form>
      <script>

      function deleteBoard(){
        if(confirm("정말 블로그글을 삭제하시겠습니까?") == true) { //확인
          document.boardform.submit();
        }else {
          return false;
        }
      }
</script>
<jsp:include page="footer.jsp"/>
