<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html class="no-js" lang="zxx">
<head>
  <meta charset="utf-8">
  <meta http-equiv="x-ua-compatible" content="ie=edge">
  <title>help View page</title>
  <meta name="description" content="">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/owl.carousel.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/slicknav.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/animate.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/hamburgers.min.css">
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
  <c:set var="boardBean" value="${requestScope.boardBean}"/>
  <header>
  <!-- Header Start -->
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
  <!-- Header End -->
  </header>
  <div class="board_area">
    <div class="container">
      <!-- 본문 시작 -->

      <div class="contents mt-60 mb-60">
        <div class="board_title mb-20">
          <h2>공지사항</h2>
        </div>
        <div class="board_view mb-15">
          <div class="board_view_title">
            <h3>
              [공지] ${boardBean.getBoard_title()}
            </h3>
          </div>
          <div class="board_view_info lh-40">
            <span class="register_id">
              <strong>관리자</strong>
            </span>
            <span class="register_day lh-40">
              ${boardBean.getBoard_date()}
            </span>
            <span class="view_count lh-40">
              <strong>조회수</strong> ${boardBean.getBoard_readcount()}
            </span>
          </div>
          <div class="board_view_content">
          ${boardBean.getBoard_contents()}
          </div>
        </div>
        <div class="btn_right_box">
          <button type="button" class="btn_board_list" onclick="location.href='${pageContext.request.contextPath}/board/BoardList.do'">목록</button>
        </div>
      </div>
    </div>
  </div>
  <c:if test="${session_id == 'admin'}">
    <a href="javascript:deleteBoard()"><font color=black>[글삭제]</font></a>
    </c:if>
  <form action="${pageContext.request.contextPath}/board/BoardDelete.do" method="post" name="boardform">
				<input type="hidden" name="seq" value="${boardBean.getBoard_num()}" />
 			</form>
<jsp:include page="footer.jsp"/>
<script>
  function deleteBoard(){
        boardform.submit();
      }
      </script>
