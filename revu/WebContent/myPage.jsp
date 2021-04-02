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
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/myPage.css">

</head>
<body style= "font-family: 'dotum', sans-serif;">
    <c:set var="g_bean" value="${requestScope.g_bean}"/>
   <c:set var="replyBeanList" value="${requestScope.replyBeanList}"/>


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
  <div class="container my_wrap">
    <div class="my_page mt-80 mb-80">
      <div class="my_inner mb-60">
        <h2 class="mb-30">개인정보 수정</h2>
        <div class="table_wrap">
          <table>
            <colgroup>
              <col>
              <col>
            </colgroup>
            <tbody>
              <tr>
                <th>아이디</th>
                <td><input type="text" class="text_area" disabled value="김경목"></td>
              </tr>
              <tr>
                <th>닉네임</th>
                <td><input type="text" class="text_area" disabled value="김경목"></td>
              </tr>
              <tr>
                <th>비밀번호</th>
                <td class="pw">
                  <input type="password" placeholder="현재 비밀번호">
                  <input type="password" placeholder="신규 비밀번호">
                  <input type="password" placeholder="비밀번호 확인">
                  <button type="button" name="button">비밀번호 변경</button>
                </td>
              </tr>
              <tr>
                <th>생년월일/성별</th>
                <td class="birth">
                  <div>
                    <select class="year birth_day">
                      <option value="2019">2019</option>
                      <option value="2018">2018</option>
                      <option value="2017">2017</option>
                      <option value="2016">2016</option>
                      <option value="2015">2015</option>
                      <option value="2014">2014</option>
                      <option value="2013">2013</option>
                      <option value="2012">2012</option>
                      <option value="2011">2011</option>
                      <option value="2010">2010</option>
                      <option value="2009">2009</option>
                      <option value="2008">2008</option>
                      <option value="2007">2007</option>
                      <option value="2006">2006</option>
                      <option value="2005">2005</option>
                      <option value="2004">2004</option>
                      <option value="2003">2003</option>
                      <option value="2002">2002</option>
                      <option value="2001">2001</option>
                      <option value="2000">2000</option>
                      <option value="1999">1999</option>
                      <option value="1998">1998</option>
                      <option value="1997">1997</option>
                      <option value="1996">1996</option>
                      <option value="1995">1995</option>
                      <option value="1994">1994</option>
                      <option value="1993">1993</option>
                      <option value="1992">1992</option>
                      <option value="1991">1991</option>
                      <option value="1990">1990</option>
                      <option value="1989">1989</option>
                      <option value="1988">1988</option>
                      <option value="1987">1987</option>
                      <option value="1986">1986</option>
                      <option value="1985">1985</option>
                      <option value="1984">1984</option>
                      <option value="1983">1983</option>
                      <option value="1982">1982</option>
                      <option value="1981">1981</option>
                      <option value="1980">1980</option>
                      <option value="1979">1979</option>
                      <option value="1978">1978</option>
                      <option value="1977">1977</option>
                      <option value="1976">1976</option>
                      <option value="1975">1975</option>
                      <option value="1974">1974</option>
                      <option value="1973">1973</option>
                      <option value="1972">1972</option>
                      <option value="1971">1971</option>
                      <option value="1970">1970</option>
                      <option value="1969">1969</option>
                      <option value="1968">1968</option>
                      <option value="1967">1967</option>
                      <option value="1966">1966</option>
                      <option value="1965">1965</option>
                      <option value="1964">1964</option>
                      <option value="1963">1963</option>
                      <option value="1962">1962</option>
                      <option value="1961">1961</option>
                      <option value="1960">1960</option>
                      <option value="1959">1959</option>
                      <option value="1958">1958</option>
                      <option value="1957">1957</option>
                      <option value="1956">1956</option>
                      <option value="1955">1955</option>
                      <option value="1954">1954</option>
                      <option value="1953">1953</option>
                      <option value="1952">1952</option>
                      <option value="1951">1951</option>
                      <option value="1950">1950</option>
                    </select>
                    년
                  </div>
                  <div>
                    <select class="month birth_day">
                      <option value="1">01</option>
                      <option value="2">02</option>
                      <option value="3">03</option>
                      <option value="4">04</option>
                      <option value="5">05</option>
                      <option value="6">06</option>
                      <option value="7">07</option>
                      <option value="8">08</option>
                      <option value="9">09</option>
                      <option value="10">10</option>
                      <option value="11">11</option>
                      <option value="12">12</option>
                    </select>
                    월
                  </div>
                  <div>
                    <select class="day birth_day">
                      <option value="1">01</option>
                      <option value="2">02</option>
                      <option value="3">03</option>
                      <option value="4">04</option>
                      <option value="5">05</option>
                      <option value="6">06</option>
                      <option value="7">07</option>
                      <option value="8">08</option>
                      <option value="9">09</option>
                      <option value="10">10</option>
                      <option value="11">11</option>
                      <option value="12">12</option>
                      <option value="13">13</option>
                      <option value="14">14</option>
                      <option value="15">15</option>
                      <option value="16">16</option>
                      <option value="17">17</option>
                      <option value="18">18</option>
                      <option value="19">19</option>
                      <option value="20">20</option>
                      <option value="21">21</option>
                      <option value="22">22</option>
                      <option value="23">23</option>
                      <option value="24">24</option>
                      <option value="25">25</option>
                      <option value="26">26</option>
                      <option value="27">27</option>
                      <option value="28">28</option>
                      <option value="29">29</option>
                      <option value="30">30</option>
                      <option value="31">31</option>
                    </select>
                    일
                  </div>
                  <div>
                    <select class="gender birth_day">
                      <option value="1">남자</option>
                      <option value="2">여자</option>
                    </select>
                  </div>
                </td>
              </tr>
              <tr>
                <th>연락처</th>
                <td>
                  <select class="phone phone01">
                    <option value="010">010</option>
                    <option value="011">011</option>
                    <option value="017">017</option>
                    <option value="018">018</option>
                    <option value="019">019</option>
                  </select>
                  -
                  <input type="text" maxlength="4" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" class="text_area phone phone02">
                  -
                  <input type="text" maxlength="4" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" class="text_area phone phone03">
                  <button type="button" name="button" class="certi">휴대폰 인증하기</button>
                  <div class="check_box">
                    <input type="checkbox" id="receive_mail01" checked>
                    <label for="receive_mail01">문자를 통한 캠페인 모집 및 추천, 설문조사, 이벤트 정보 등의 수신에 동의합니다.</label>
                  </div>
                </td>
              </tr>
              <tr>
                <th>이메일</th>
                <td>
                  <input type="text" value="aaaaa@naver.com">
                  <div class="check_box">
                    <input type="checkbox" id="receive_mail02" checked>
                    <label for="receive_mail02">이메일을 통한 캠페인 모집 및 추천, 설문조사, 이벤트 정보 등의 수신에 동의합니다.</label>
                  </div>
                </td>
              </tr>
            </tbody>
          </table>
          <div class="center mt-20">
            <button type="button" name="button">수정하기</button>
          </div>
        </div>
      </div>
      <div class="my_camp_tab">
        <h2 class="mb-30">나의 캠페인</h2>
        <div class="my_tab_inner">
          <ul class="clearfix">
            <li class="on"><span>신청한 캠페인</span></li>
            <li><span>선정된 캠페인</span></li>
            <li><span>종료된 캠페인</span></li>
          </ul>
          <div class="contents my_content01 on">
            <div class="camp_list clearfix">
              <a href="" class="list_box mb-20">
                <div class="box_img">
                  <img src="" alt="product_imgproduct_img" class="contents_img">
                </div>
                <div class="box_title"></div>
                <div class="box_desc"></div>
              </a>
              <a href="" class="list_box mb-20">
                <div class="box_img">
                  <img src="" alt="product_imgproduct_img" class="contents_img">
                </div>
                <div class="box_title"></div>
                <div class="box_desc"></div>
              </a>
            </div>
          </div>
          <div class="contents my_content02">
            <div class="empty_box">내역이 없습니다.</div>
          </div>
          <div class="contents my_content03">
            <div class="empty_box">내역이 없습니다.</div>
          </div>
        </div>
      </div>
    </div>
  </div>
<jsp:include page="footer.jsp"/>
