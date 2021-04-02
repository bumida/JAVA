<%@ page language="java" contentType="application/vnd.ms-excel;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%> 
<%//******************************MS excel******************************
    // MS excel로 다운로드/실행, filename에 저장될 파일명을 적어준다.
    response.setHeader("Content-Disposition","attachment;filename=member.xls");
    response.setHeader("Content-Description", "JSP Generated Data"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>블로그 신청 목록</title>
</head>
<body>
<c:set var="newGroupJoinList" value="${requestScope.newGroupJoinList}"/>

<table border="1">
        <thead>
            <tr>
                <th>블로그명</th>
                <th>ID</th>
                <th>블로그메일</th>
                <th>이름</th>
                <th>핸드폰</th>
                <th>주소</th>
                <th>상세주소</th>
                <th>상세주소(1)</th>
                <th>상세주소(2)</th>
            </tr>
        </thead>
        <c:choose>
		<c:when test="${newGroupJoinList != null and fn:length(newGroupJoinList) > 0}">
		<c:forEach var="j_bean" items="${newGroupJoinList}">
        <tbody>
            <tr>
                <td>${j_bean.getGroup_name()}</td>
                <td>${j_bean.getMember_id()}</td>
                <td>${j_bean.getBlog_mail()}</td>
                <td>${j_bean.getMember_name()}</td>
                <td style="mso-number-format:"\@";">${j_bean.getMember_hp()}</td>
                <td>${j_bean.getMember_zipcode()}</td>
                <td>${j_bean.getMember_address()}</td>
                <td>${j_bean.getMember_address_detail()}</td>
                <td>${j_bean.getMember_address_etc()}</td>
            </tr>
            
        </tbody>
       </c:forEach>
       </c:when>
       </c:choose>
    </table>
</body>
</html>