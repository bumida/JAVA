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
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/help.css">
</head>

<body style= "font-family: 'Noto Sans KR', sans-serif;">

 <c:set var="boardBean" value="${requestScope.boardBean}"/>
 <c:set var="list" value="${requestScope.boardList}"/>
    <c:if test="${session_id eq null}">
			<script>
			    alert("로그인 후 이용해주세요");
				location.replace("${pageContext.request.contextPath}/login.jsp");


			</script>
		</c:if> 

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

       <div id="container">
        <div id="contents">
        <!-- 본문 시작 -->

            <!-- //location_wrap -->

            <div class="sub_content">

                <!-- //side_cont -->
    <div class="content">
  <div class="board_zone_sec">
    <div class="board_zone_tit">
        <h2>공지사항</h2>
    </div>
    <div class="board_zone_cont">
        <div class="board_zone_list" align="center">
            <table class="board_list_table" style="width:100%">
                <colgroup>
                    <col style="width:6%">
                    <col style="width:37%;">
                    <col style="width:12%">
                    <col style="width:7%">
                    <col style="width:15%">
					<!--<col style="width:6%">-->
                </colgroup>
                <thead>
                <tr>
                    <th>번호</th>
                    <th>제목</th>
                    <th>날짜</th>
                    <th>작성자</th>
					<!--<th>조회</th>-->
                </tr>
                </thead>
                <c:choose>
                <c:when test="${list != null and fn:length(list) > 0}">
                <c:forEach var="b_bean" items="${list}">
                <tbody>
                <tr style="height:10px">
                    <td>${b_bean.getBoard_num()}</td>
                    <td class="board_tit">
					<a href="${pageContext.request.contextPath}/board/BoardView.do?seq=${b_bean.getBoard_num()}" style="font-size: 13px;line-height: 1.5;color: #333;">
                    <strong>${b_bean.getBoard_title()}</strong>

                    </a>
                    </td>
                    <td> ${b_bean.getBoard_date()} </td>
                    <td> 관리자 </td>

				</tr>

				<!--  페이지 번호 -->
				</tbody>
				</c:forEach>
				</c:when>
				<c:otherwise>
						<tr height="50px">
						<td colspan="5" align="center"> <br>&nbsp;&nbsp;&nbsp;등록된 게시물이 없습니다.</td>

						</tr>

				</c:otherwise>
				</c:choose>
				</table>
			<c:set var="list" value="${requestScope.boardList}"/>
 			<c:set var="nowPage" value="${requestScope.nowPage}"/>
 			<c:set var="startPage" value="${requestScope.startPage}"/>
 			<c:set var="endPage" value="${requestScope.endPage}"/>
 			<c:set var="totalPage" value="${requestScope.totalPage}"/>
 			<div class="page">
 			<ul>
 			<li class="page_on">
 			<span>1</span>
 			</li>
 			</ul>
 			</div>
 			<div class="navigation"><ul class="navigation_ul">
 			<li><a href="${pageContext.request.contextPath}/board/BoardList.do">공지사항</a></li>
 			<li><a href="${pageContext.request.contextPath}/require.jsp">이용가이드</a></li>
 			<li><a href="${pageContext.request.contextPath}/require.jsp">광고문의</a></li>
 			</ul>
 			</div>
			</div>
		      </div>
			</div>
				</div>
				</div>
				</div>
				</div>


      <!-- Blog Area End -->



      <script>
       function addboard(){
			boardform.submit();
		}

	   function open_layer(){
	<c:set var="boardBean" value="${requestScope.boardBean}"/>
	var bNum = '<c:out value="${Boardbean.getBoard_num()}"/>'
	document.all['divpop'].style.visibility = "visible";
	document.i_frame.location.replace('${pageContext.request.contextPath}/board/BoardView.do?seq=' + bNum);
	}

	function close_layer(){

 	document.all['divpop'].style.visibility = "hidden";

	}



     function nwindow(num){
     var url="${pageContext.request.contextPath}/board/BoardView.do?seq=${b_bean.getBoard_num()}";
     window.open("${pageContext.request.contextPath}/board/BoardView.do?seq="+num,"","width=400,height=400,left=600");
      }
    	</script>



<jsp:include page="footer.jsp"/>
