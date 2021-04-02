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
<style>
	
@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@700&display=swap');
</style>
</head>
<body style= "font-family: 'Noto Sans KR', sans-serif;">
<c:set var="boardBean" value="${requestScope.boardBean}"/>


${boardBean.getBoard_contents()}
<br>
<br>
<br>
<br>
<br>
<c:if test="${session_id == 'admin'}">
    <a href="javascript:deleteBoard()"><font color=black>[글삭제]</font></a>
    </c:if>
  <form action="${pageContext.request.contextPath}/board/BoardDelete.do" method="post" name="boardform">
				<input type="hidden" name="seq" value="${boardBean.getBoard_num()}" />
 			</form>  
</body>

<script>
function deleteBoard(){
			boardform.submit();
		}
		</script>
</html>
