<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%> 
<!DOCTYPE html>
<html class="no-js" lang="zxx">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>commentSuccess</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="manifest" href="site.webmanifest">
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">

	<!-- CSS here -->
	
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/commentSuccess.css">
</head>
<body>
  <c:if test="${session_id eq null}">
        <script>
            alert("로그인 후 이용해주세요");
          location.replace("${pageContext.request.contextPath}/login.jsp");
          
        
        </script>
        </c:if>

	<div class="container">
    <form action="${pageContext.request.contextPath}/group/GroupReplyOk.gr?group_num=${g_bean.getGroup_num()}" method="post" name="groupReply">
		<div class="video-frame">
			<video src="${pageContext.request.contextPath}/video/video-sky.mp4" autoplay muted loop poster="${pageContext.request.contextPath}/img/comment_icon.png"></video>
		</div>
		<!--<div class="logo">
			<img src="images/BlogMagazineLogo.png">
		</div>-->
		<div class="heading">
			<h1><span>Blog Magazine</span><br> 신청 완료되었습니다. <br>감사합니다.</h1>
			<p>
				  in the world. It resembles an S-shape between the Americas, Europe and Africa. who carried the sky for eternity.
         </p>

      <h3>댓글 한마디를 작성해주세요.</h3>
      <div>
				<textarea class="single-textarea" placeholder="MESSAGE" name="reply_contents" 
					 required="required"  style="color:black; resize: none; width: 433px"></textarea>
     <br>								

      <button class="genric-btn info-border" href="javascript:comment()">등록</button>
      </div>		
      </div>


		<div class="anniversary">
			<em>Anniversary</em><span>60</span>
		</div>
		
  </form>
	</div>
	<audio id="myAudio" src="${pageContext.request.contextPath}/video/piano-bgm.mp3" autoplay loop></audio> 

	<script>
		// Trigger
		$('.trigger').click(function(){
			$(this).toggleClass('active')
			$('.modal-gnb').fadeToggle() 
		})

		// Audio Controls
		var bgm = document.getElementById('myAudio')
		bgm.volume = 0.0 // Audio Volume : 0~1
	</script>

</body>
</html>
