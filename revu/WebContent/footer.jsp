<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<footer>
  <div class="footer_top">
    <div class="container">
      <ul class="f_util">

     <!-- <li><a href="#"><span>픽미소개&amp;광고문의</span></a></li>
        <li><a href="#"><span>이용약관</span></a></li>
        <li><a href="#"><span>개인정보취급방침</span></a></li>
        <li><a href="#"><span>운영정책</span></a></li>-->
      </ul>
    </div>
  </div>
  <div class="footer_bottom">
    <div class="container">
      <div class="f_logo"><img src="${pageContext.request.contextPath}/assets/img/logo/blogMagazine_footer.png" alt="로고"></div>
      <div class="f_copy">
        <p>

          주식회사 파팜 | 사업자 등록번호 : 123456789 | 대표이사 : 김해광<br>
          대표전화 : 1234-5678 | 이메일 : aaa@main.net<br>
          서울시 강남구 논현로 75길 16 이호빌딩 2층<br>
          Copyright ⓒ papam All rights reserved
        </p>
      </div>
    </div>
  </div>
</footer>
<%-- footer end --%>
<!-- Scroll Up -->
<div style="position: fixed; right: 20px; bottom:50px;"
  id="kakao-talk-channel-chat-button"
  data-channel-public-id="_RQxanK"
  data-title="question"
  data-size="large"
  data-color="yellow"
  data-shape="pc"
  data-support-multiple-densities="true"
></div>
<!-- JS here -->

<script src="${pageContext.request.contextPath}/./assets/js/vendor/modernizr-3.5.0.min.js"></script>
<!-- Jquery, Popper, Bootstrap -->
<script src="${pageContext.request.contextPath}/./assets/js/vendor/jquery-1.12.4.min.js"></script>
<script src="${pageContext.request.contextPath}/./assets/js/popper.min.js"></script>
<script src="${pageContext.request.contextPath}/./assets/js/bootstrap.min.js"></script>
<!-- Jquery Mobile Menu -->
<script src="${pageContext.request.contextPath}/./assets/js/jquery.slicknav.min.js"></script>

<!-- Jquery Slick , Owl-Carousel Plugins -->
<script src="${pageContext.request.contextPath}/./assets/js/owl.carousel.min.js"></script>
<script src="${pageContext.request.contextPath}/./assets/js/slick.min.js"></script>
<!-- One Page, Animated-HeadLin -->
<script src="${pageContext.request.contextPath}/./assets/js/wow.min.js"></script>
<script src="${pageContext.request.contextPath}/./assets/js/animated.headline.js"></script>
<script src="${pageContext.request.contextPath}/./assets/js/jquery.magnific-popup.js"></script>

<!-- Date Picker -->
<script src="${pageContext.request.contextPath}/./assets/js/gijgo.min.js"></script>
<!-- Nice-select, sticky -->
<script src="${pageContext.request.contextPath}/./assets/js/jquery.nice-select.min.js"></script>
<script src="${pageContext.request.contextPath}/./assets/js/jquery.sticky.js"></script>
<!-- Progress -->
<script src="${pageContext.request.contextPath}/./assets/js/jquery.barfiller.js"></script>

<!-- counter , waypoint,Hover Direction -->
<script src="${pageContext.request.contextPath}/./assets/js/jquery.counterup.min.js"></script>
<script src="${pageContext.request.contextPath}/./assets/js/waypoints.min.js"></script>
<script src="${pageContext.request.contextPath}/./assets/js/jquery.countdown.min.js"></script>
<script src="${pageContext.request.contextPath}/./assets/js/hover-direction-snake.min.js"></script>

<!-- contact js -->
<script src="${pageContext.request.contextPath}/./assets/js/contact.js"></script>
<script src="${pageContext.request.contextPath}/./assets/js/jquery.form.js"></script>
<script src="${pageContext.request.contextPath}/./assets/js/jquery.validate.min.js"></script>
<script src="${pageContext.request.contextPath}/./assets/js/mail-script.js"></script>
<script src="${pageContext.request.contextPath}/./assets/js/jquery.ajaxchimp.min.js"></script>

<!-- Jquery Plugins, main Jquery -->
<script src="${pageContext.request.contextPath}/./assets/js/plugins.js"></script>
<script src="${pageContext.request.contextPath}/./assets/js/main.js"></script>
 <script>
  window.kakaoAsyncInit = function() {
    Kakao.Channel.createChatButton({
      container: '#kakao-talk-channel-chat-button',
    });
  };

  (function(d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    js.src = 'https://developers.kakao.com/sdk/js/kakao.channel.min.js';
    fjs.parentNode.insertBefore(js, fjs);
  })(document, 'script', 'kakao-js-sdk');
</script>
</body>
</html>
