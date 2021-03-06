<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>group Register</title>
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
    <form action="${pageContext.request.contextPath}/group/GroupRegisterOk.gr" method="post" enctype="multipart/form-data" name="groupform">
    <c:if test="${session_id != 'admin'}">
       <script>
           alert("??????????????? ????????????.");
           location.replace("${pageContext.request.contextPath}/login.jsp");
       </script>
    </c:if>   
    
    <div class="row">
                    <div class="col-12">
                        <h2 class="contact-title">????????? ????????????</h2>
                    </div>
                    
                    
                    <div class="col-lg-8">
                            <div class="row">
                                <div class="col-12">
                                    <div class="form-group">
                                        <textarea class="form-control w-100" name="group_contents" id="message" cols="30" rows="9" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter Message'" placeholder="????????? ?????? ???????????? ????????????????????? ????????????."></textarea>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <input class="form-control valid" name="group_name" id="name" type="text" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter your name'" placeholder="?????????????????? ??????????????????.">
                                    </div>
                                </div>
                                
                                <div class="col-12">
                                    <div class="form-group">
                                        <input class="form-control" name="group_info" id="subject" type="text" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter Subject'" placeholder="?????? ????????? INFO ex)#???????????? #????????????">
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-group">
                                        <input class="form-control" name="group_info_two" id="subject" type="text" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter Subject'" placeholder="?????? ????????? INFO_region ex)[?????? ?????????]">
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-group">
                                        <input class="form-control" name="group_info_three" id="subject" type="text" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter Subject'" placeholder="?????? ????????? INFO_content ex)????????? ????????????">
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-group">
                                        <input class="form-control" name="member_max" id="subject" type="text" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter Subject'" placeholder="?????????????????? ????????? ???????????????  ex)10">
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-group">
                                        <input class="form-control" name="group_img" id="subject" type="text" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter Subject'" placeholder="????????? ????????? ???????????? ex)assets/img/gallery/hairPost.png">
                                     </div>
                                </div>
                                 <div class="col-12">
                                    <div class="form-group">
                                        <input class="form-control" name="group_region" id="subject" type="text" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter Subject'" placeholder="??????????????? ?????????????????? ex)??????">
                                    </div>
                                </div>
                                 <div class="col-12">
                                    <div class="form-group">
                                        <input class="form-control" name="group_imgmain" id="subject" type="text" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter Subject'" placeholder="????????? ?????? ????????? ????????? ???????????? ex)assets/img/gallery/hairPost.png">
                                    </div>
                                </div>
                                <div class="col-12">
                                 <div class="form-group">
                                  <input name="group_file1" type="file" width="150px">
                                  
							<input width="150px" type="button" onclick="cancleFile('group_file1')" value="?????? ??????">
                                 </div>
                                </div>
                                  <div class="col-12">
                                 <div class="form-group">
                                  <input name="group_file2" type="file" width="150px">
							<input width="150px" type="button" onclick="cancleFile('group_file2')" value="?????? ??????">
                                 </div>
                                </div>
                            </div>
                            <div class="form-group mt-3">
                                <button type="submit" class="button button-contactForm boxed-btn">Send</button>
                            </div>
                        </form>
                    </div>
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    <div class="col-lg-3 offset-lg-1">
                        <div class="media contact-info">
                            <span class="contact-info__icon"><i class="ti-home"></i></span>
                            <div class="media-body">
                                <h3>Buttonwood, California.</h3>
                                <p>Rosemead, CA 91770</p>
                            </div>
                        </div>
                        <div class="media contact-info">
                            <span class="contact-info__icon"><i class="ti-tablet"></i></span>
                            <div class="media-body">
                                <h3>+1 253 565 2365</h3>
                                <p>Mon to Fri 9am to 6pm</p>
                            </div>
                        </div>
                        <div class="media contact-info">
                            <span class="contact-info__icon"><i class="ti-email"></i></span>
                            <div class="media-body">
                                <h3>support@colorlib.com</h3>
                                <p>Send us your query anytime!</p>
                            </div>
                        </div>
                    </div>
                </div>
    
    
    
    
    
    
    
    
    </form>
</body>
<script>
  function cancleFile(fileTagName){
			//ie??? ???
			if($.browser.msie){
				$("input[name='"+fileTagName+"']").replaceWith(("input[name='"+fileTagName+"']").clone(true));
			}else{
			//??? ??? ????????????	
				$("input[name='"+fileTagName+"']").val("");
			}
		}
</script>
</html>