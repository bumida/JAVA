<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<html class="no-js" lang="zxx">
<head>
   <meta charset="utf-8">
   <meta http-equiv="x-ua-compatible" content="ie=edge">
  <title>고객센터 페이지</title>
   <meta name="description" content="">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">

  <!-- CSS here -->
   <style>
@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@900&display=swap');
</style>
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
<style>
	
@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@700&display=swap');
</style>
	
</head>
<body style= "font-family: 'Noto Sans KR', sans-serif;">
  ${session_id}
    <c:if test="${session_id != 'admin'}">
       <script>
           alert("접근권한이 없습니다.");
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
                                <div class="header-info-mid" >
                                    <!-- logo -->
                                    <div class="logo">
                                        <a href="${pageContext.request.contextPath}/mainList.jsp"><img src="${pageContext.request.contextPath}/assets/img/logo/BlogMagazineLogo.png" alt=""></a>
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
                                        <a href="${pageContext.request.contextPath}/https://bit.ly/sai4ull"><i class="fab fa-facebook-f"></i></a>
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
    <div style="padding:100px; width:1200px; color:black;" >
    <form action="${pageContext.request.contextPath}/board/BoardWriteOk.do" method="post" enctype="multipart/form-data" name="boardform">
				<table class="table table-bordered" width="900px" >
					<tr align="center" valign="middle">
						<td><h3 style="font-family: SeoulNamsanM; font-size: 15pt;" >글쓰기</h3></td>
					</tr>
				</table>
			
				<table class="table" width="600px" style="font-family:SeoulNamsanM; font-size: 12pt; color:black;" >
					<tr height="30px">
						<td  width="150px">
							<div >*</div>
						</td>
						<td >
							<input class="" placeholder="제목" name="board_title" type="text" size="50" maxlength="100" value="" style="width: 656px; "/>
						</td>
					</tr>
					<tr height="30px">
						<td width="150px">
							<div >*</div>
						</td>
						<td >
						<input class="" placeholder="관리자만 글쓸수있음" disabled>	  <div id="id" style="display:none"><input name="member_id" type="text" size="10" maxlength="10" value="${session_id}" readonly /></div>
						</td>
					</tr>
					<tr height="200px">
						<td width="150px">
							<div >*</div>
						</td>
						<td style="padding-left:10px;">
							<textarea class="" name="board_contents" placeholder="내용을 입력해주세요."style="width:700px; height:185px"></textarea>
						</td>
					</tr>
					<tr height="30px">
						<td align="center" width="150px">
							<div >*</div>
						</td>
						<td>
						</td>
					</tr>
					
					
				</table>
				
				<table border="0" cellpadding="0" cellspacing="0" width="900px">
					<tr align="right" valign="middle">
						<td >
							<input type="submit" style="background-color: #1f75d9; color: black; font-weight:500; width:100px" value="등록"></a>&nbsp;&nbsp;
							<a href="${pageContext.request.contextPath}/board/BoardList.do" style="color:black"></a>&nbsp;&nbsp;
						</td>
					</tr>
				</table>
			</form>
     </div>
     <script>
		var contextPath = "${pageContext.request.contextPath}";
     
       function addboard(){
			boardform.submit();
		}
     </script>
     <script src="//code.jquery.com/jquery-3.5.1.min.js"></script>
	<script src="//code.jquery.com/jquery-migrate-1.2.1.js"></script>
</body>
</html>