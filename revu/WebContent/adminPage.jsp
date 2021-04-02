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
   
   
   <c:if test="${session_id != 'admin'}">
			<script>
			    alert("접근 불가합니다.");
				location.replace("${pageContext.request.contextPath}/login.jsp");
				
			
			</script>
		</c:if>
		<c:set var="GroupJoinList" value="${requestScope.GroupJoinList}"/>
		<c:set var="totalCnt" value="${requestScope.totalCnt}"/>
		<c:set var="totalPage" value="${requestScope.page}"/>
		<c:set var="nowPage" value="${requestScope.endPage}"/>
		<c:set var="endPage" value="${requestScope.totalCnt}"/>
		<c:set var="startPage" value="${requestScope.startPage}"/>
		<c:set var="newGroupJoinList" value="${requestScope.newGroupJoinList}"/>
		

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
                                       <li><a href="${pageContext.request.contextPath}/group/GroupList.gr">체험단</a></li>
                                        <li><a href="${pageContext.request.contextPath}/board/BoardList.do">고객센터</a></li>
                                       <li><a href="">관리자님 환영합니다.</a></li>
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
    <div class="col-lg-4">
     <aside class="single_sidebar_widget post_category_widget">
                                <h4 class="widget_title" style="color: #2d2d2d;"></h4>
                                <ul class="list cat-list">
                                    <li>
                                        <a href="#" class="d-flex">
                                            <p>참가 신청 관리</p>
                                            <p></p>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="${pageContext.request.contextPath}/board/BoardWrite.do" class="d-flex">
                                            <p>공지사항 등록</p>
                                            <p></p>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="${pageContext.request.contextPath}/group/GroupRegister.gr" class="d-flex">
                                            <p>체험단 등록</p>
                                            <p></p>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="${pageContext.request.contextPath}/group/excelDownload.gr" class="d-flex">
                                            <p>엑셀로 다운받기</p>
                                            <p></p>
                                        </a>
                                    </li>
                                </ul>
                            </aside>
                            </div>
                            <br>
                            <br>
                        <table  width="80%" border="0" cellpadding="0" cellspacing="0">
														<tr align="right" valign="middle">
															<td><h3 align="left" style= "font-size:15px;">
                                                                               관리자 페이지로써 블로그에 신청한 회원들이 나옵니다. 개인정보 보안을 지켜주세요. </h3>  
																
																	 </td>
																	 
																	 </tr>
														<tr align="right" valign="middle">
															<td>신청 인원 : ${totalCnt} </td>
														</tr>
													</table>

													<table class="table"  cellpadding="0" cellspacing="0" width="900px">
														<thead class="thead-light">
														<tr align="center"  >
															
															<td width="8%">
																<div align="center">블로그명</div>
															</td>
															  <td width="8%">
																<div align="center">ID</div>
															</td>
															<td width="8%">
																<div align="center">블로그메일</div>
															</td>
															<td width="8%">
																<div align="center">이름</div>
															</td>
															<td width="8%">
																<div align="center">핸드폰</div>
															</td>
															<td width="8%">
																<div align="center">주소</div>
															</td>
															<td width="8%">
																<div align="center">상세주소</div>
															</td>
															<td width="8%">
																<div align="center">상세주소(1)</div>
															</td>
															<td width="8%">
																<div align="center">상세주소(2)</div>
															</td>
															
														</tr>
														</thead>
														<c:choose>
													<c:when test="${newGroupJoinList != null and fn:length(newGroupJoinList) > 0}">
														<c:forEach var="j_bean" items="${newGroupJoinList}">
																	<tr align="center" valign="middle"
																		onmouseover="this.style.backgroundColor='F8F8F8'"
																		onmouseout="this.style.backgroundColor=''">
																		<td height="23">
																			<div>${j_bean.getGroup_name()}</div>
																			</td>

																		
																		<td>
																			<div align="center">${j_bean.getMember_id()}</div>
																		</td>
																		<td>
																			<div align="center">${j_bean.getBlog_mail()}</div>
																		</td>
																		<td>
																			<div align="center">${j_bean.getMember_name()}</div>
																		</td>
																		<td>
																		<div align="center">${j_bean.getMember_hp()}</div>
																		</td>
																		<td>
																		<div align="center">${j_bean.getMember_zipcode()}</div>
																		</td>
																		<td>
																		<div align="center">${j_bean.getMember_address()}</div>
																		</td>
																		<td>
																		<div align="center">${j_bean.getMember_address_detail()}</div>
																		</td>
																		<td>
																		<div align="center">${j_bean.getMember_address_etc()}</div>
																		</td>
																	</tr>
																	</c:forEach></c:when></c:choose>
																</table>
														<br/>
														<!-- 페이징 처리 -->
			<table border="0" cellpadding="0" cellspacing="0" width="900px">
				<tr align="center" valign="middle">
					<td>
					<c:choose>
						<c:when test="${nowPage > 1}">
							<a href="${pageContext.request.contextPath}/group/GroupAdminPage.gr?page=${nowPage - 1}"><b>[이전]</b></a>&nbsp;
						</c:when>
					</c:choose>
					<c:forEach var="i" begin="${startPage}" end="${endPage}">
						<c:choose>
							<c:when test="${i eq nowPage}">
								<b>[${i}]</b>
							</c:when>
							<c:otherwise>
								<a href="${pageContext.request.contextPath}/group/GroupAdminPage.gr?page=${i}"><b>[${i}]</b></a>
							</c:otherwise>
						</c:choose>
					</c:forEach>
					<c:choose>
						<c:when test="${nowPage < totalPage}">
							<a href="${pageContext.request.contextPath}/group/GroupAdminPage.gr?page=${nowPage + 1}"><b>[다음]</b></a>&nbsp;
						</c:when>
					</c:choose>
					</td>
				</tr>
			</table>
		</body>
		</html>
																
															
    