<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<html class="no-js" lang="zxx">


<head>
 <meta charset="utf-8">
   <meta http-equiv="x-ua-compatible" content="ie=edge">
  <title>그룹 조인 페이지</title>
   <meta name="description" content="">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">
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

 <c:set var="g_bean" value="${requestScope.g_bean}"/>
   <c:set var="replyBeanList" value="${requestScope.replyBeanList}"/>
   
 <form action="${pageContext.request.contextPath}/group/GroupJoin.gr?group_num=${g_bean.getGroup_num()}" name="formSubmit" id="formSubmit" method="post"  >
<div class="register-form-area">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-xl-6 col-lg-8">
                        <div class="register-form text-center">
                            <!-- Login Heading -->
                            
                            <div class="register-heading">
                                <span>신청하기</span>
                            </div>
                            <!-- Single Input Fields -->
                            <div class="input-box" >
                                <div class="single-input-fields" >
                                    <label>블로그명</label>
                                    <input style="text-transform:lowercase"  type="text" name="group_name" value="${g_bean.getGroup_name()}" placeholder="${g_bean.getGroup_name()}" readonly/>
                                    <p id="idCheck_text"></p>
                                </div>
                                <div class="single-input-fields" >
                                    <label>아이디</label>
                                    <input style="text-transform:lowercase";  type="text"  name="member_id" value="${session_id}" placeholder="${session_id}" readonly/>
                                    <p id="idCheck_text"></p>
                                </div>
                                <div class="single-input-fields">
                                    <label>블로그메일</label>
                                    <input style="text-transform:lowercase"; type="email" name="blog_mail" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter email address'"  placeholder="블로그 주소를 입력해주세요"/>
                                </div>
                                <div class="single-input-fields">
                                    <label>이름</label>
                                    <input style="text-transform:lowercase"; type="text" name="member_name" placeholder="이름을 입력해주세요"/>
                                </div>
                                <div class="single-input-fields">
                                    <label>핸드폰번호</label>
                                    <input style="text-transform:lowercase"; type="text" name="member_hp"  placeholder="핸드폰 번호를 입력해주세요"/>
                                </div>
                                <div class="single-input-fields">
                                    <label>우편번호</label>
                                    <input style="text-transform:lowercase"; type="text" name="member_zipcode" class="postcodify_postcode5"  placeholder="이메일을 입력해주세요"/>
                                    <input width= "20px" type="button" id="postcodify_search_button" value="검색">
                                </div>
                                <div class="single-input-fields">
                                    <label>주소</label>
                                    <input style="text-transform:lowercase"; type="text" name="member_address" class="postcodify_address" placeholder="이메일을 입력해주세요"/>
                                </div>
                                <div class="single-input-fields">
                                    <label>상세주소</label>
                                    <input style="text-transform:lowercase"; type="text" name="member_address_detail" class="postcodify_details"  placeholder="이메일을 입력해주세요"/>
                                </div>
                                <div class="single-input-fields">
                                    <label>참고항목</label>
                                    <input style="text-transform:lowercase"; type="text" name="member_address_etc" class="postcodify_extra_info" placeholder=""/>
                                </div>
                            </div>
                            <!-- form Footer -->
                            <div class="register-footer">
                               
                            <li> <input type="submit" value="가입하기" onclick="javascript:formSubmit()" style="background-color: #1f75d9; color: black; font-weight:500;"></li>
                            </div> 
                        </div>
                    </div>
                </div>
            </div>
        </div>
 </form>
</body>
 
<script src="//code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
<script> $(function() { $("#postcodify_search_button").postcodifyPopUp(); }); </script>
</html>