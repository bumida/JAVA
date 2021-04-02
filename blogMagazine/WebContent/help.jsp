<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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


 <c:set var="boardBean" value="${requestScope.boardBean}"/>
 <c:set var="list" value="${requestScope.boardList}"/>
   


      <c:if test="${session_id eq null}">
			<script>
			    alert("로그인 후 이용해주세요");
				location.replace("${pageContext.request.contextPath}/login.jsp");
				
			
			</script>
		</c:if>
 
   <!-- Preloader Start -->
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
   <main>
     <!--? Blog Area Start -->
    
      
      
         <div  class="container">
            <div class="row">
              <div class="section-top-border">
					<h3 class="mb-30">공지사항</h3>
					<div class="progress-table-wrap">
						<div class="progress-table">
							<div class="table-head">
								<div class="serial"># 
						<c:if test="${session_id == 'admin'}">	 
						<a style="visibility:visible; color:black;" href="${pageContext.request.contextPath}/boardWrite.jsp">글쓰기</a></c:if></div>
						
							</div>
							<c:choose>
	                       <c:when test="${list != null and fn:length(list) > 0}">
	                       <c:forEach var="b_bean" items="${list}">
							<div class="table-row">
							 
								<div  class="serial">${b_bean.getBoard_num()}</div>
								<div class="country" ><a href="" onclick="nwindow(${b_bean.getBoard_num()})" style="color: black">${b_bean.getBoard_title()}</a></div>


				
							
							</div>
							</c:forEach>
						</c:when>
						<c:otherwise>
						<tr height="50px">
						<td colspan="5" align="center"> <br>&nbsp;&nbsp;&nbsp;등록된 게시물이 없습니다.</td>
																	
						</tr>
						
							
							
							
							
															
						</c:otherwise>
							
							
						</c:choose>
						</div>
					</div>
				</div>
				
				
				<!--  페이지 번호 -->
			<c:set var="list" value="${requestScope.boardList}"/>		
 			<c:set var="nowPage" value="${requestScope.nowPage}"/>
 			<c:set var="startPage" value="${requestScope.startPage}"/>   
 			<c:set var="endPage" value="${requestScope.endPage}"/>   
 			<c:set var="totalPage" value="${requestScope.totalPage}"/>  
				<br>
				<br>
				<br>
				<br>
				<br>
               <div class="col-lg-4"  style="align:left" >
                  <div class="blog_right_sidebar">
                     
                     <aside class="single_sidebar_widget post_category_widget">
                        <h4 class="widget_title" style="color: #2d2d2d;">Category</h4>
                        <ul class="list cat-list">
                           <li>
                              <a href="#" class="d-flex">
                                 <p>공지사항</p>
                              </a>
                           </li>
                           <li>
                              <a href="${pageContext.request.contextPath}/serviceGuide.html" class="d-flex">
                                 <p>이용가이드</p>
                              </a>
                           </li>
                           <li>
                              <a href="${pageContext.request.contextPath}/require.jsp" class="d-flex">
                                 <p>광고문의</p>
                                 
                              </a>
                           </li>
                          
                           </ul>
                           
                     </aside>
                       <c:set var="groupList" value="${requestScope.groupList}"/>
                       
                     <aside class="single_sidebar_widget popular_post_widget">
                        <h3 class="${pageContext.request.contextPath}/widget_title" style="color: #2d2d2d;">Recent Post</h3>
                        <br>
                        <c:choose>
                <c:when test="${groupList != null and fn:length(groupList) > 0}">
                <c:forEach var="g_bean" items="${groupList}" begin="0" end="4">
                        <div class="${pageContext.request.contextPath}/media post_item">
                           <img  src="${pageContext.request.contextPath}/${g_bean.getGroup_img()}" alt="post" width="100" height="100" align="left">
                           <br>
                           <div class="${pageContext.request.contextPath}/media-body">
                              <a href="${pageContext.request.contextPath}/group/Groupview.gr?group_num=${g_bean.getGroup_num()}">
                                 <p style="color: #2d2d2d; font-size:16px; white-space:nowrap; overflow:hidden; text-overflow:ellipsis;"><strong>&nbsp${g_bean.getGroup_info_three()}</strong></p>
                              </a>
                              <p style= "white-space:nowrap; overflow:hidden; text-overflow:ellipsis;">&nbsp${g_bean.getGroup_info()}</p>
                           </div>
                        </div>
                       </c:forEach>
                       </c:when>
                       </c:choose> 
                        
                        
                     </aside>
                    
                  
                    
                  </div>
               </div>
            </div>
         </div>
      </section>
      <!-- Blog Area End -->
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
      <script> function addboard(){
			boardform.submit();
		}
		</script>
	<script language="JavaScript">

function open_layer(){
<c:set var="boardBean" value="${requestScope.boardBean}"/>
var bNum = '<c:out value="${Boardbean.getBoard_num()}"/>'
document.all['divpop'].style.visibility = "visible";
document.i_frame.location.replace('${pageContext.request.contextPath}/board/BoardView.do?seq=' + bNum);
}

function close_layer(){

 document.all['divpop'].style.visibility = "hidden";

}


</script>

<script>
        	function nwindow(num){
            var url="${pageContext.request.contextPath}/board/BoardView.do?seq=${b_bean.getBoard_num()}";
           	 window.open("${pageContext.request.contextPath}/board/BoardView.do?seq="+num,"","width=400,height=400,left=600");
        	}
    		</script>




<div id="divpop" style="position:absolute; top:100; left:100px; z-index:300; visibility:hidden;">
<table cellpadding="5" cellspacing="0" bgcolor="#FFFFFF" border="5" bordercolor="#424242">
<c:set var="boardBean" value="${requestScope.boardBean}"/>
<tr>
<td>

<iframe name="i_frame" src="#" width="450" height="350" marginwidth="0" marginheight="0" frameborder="no" scrolling="auto"></iframe>
${boardBean.getBoard_contents()}
</td>
</tr>
<tr>
<td align="right" height="10" bgcolor="#424242">
<a href="javascript:close_layer();">닫기</a>
</td>
</tr>
</table>
</div>



   </body>
</html>