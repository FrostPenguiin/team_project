<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<c:url var="path" value="${pageContext.request.contextPath}"/>
	<link rel="stylesheet" type="text/css" href="${path}/resources/css/module/header.css">
</head>
<body>
	<div id="header">
		<div class="header-inner">
			<h1 class="header-logo"><a href="/"><img src="${path}/resources/img/logo01.png" alt="KH CINEMA"></a></h1>
				<div id="gnb">
					<ul class="nav">
						<c:url var="mainUrl" value="." />
							<li><a href="#">상영작</a></li>
							<li><a href="#">상영예정작</a></li>
							<li><a href="${mainUrl}/screen">영화관</a></li>
							<li><a href="${mainUrl}/reserve">예매</a></li>
					</ul>
				</div>
				<ul class="user-menu">
					<c:choose>
					<%-- 로그인 데이터 없을시 뜨는 메뉴 --%>
					<c:when test="${empty sessionScope.loginData}">
	   					<li> <a href="#">로그인</a></li>
						<li> <a href="#">회원가입</a></li>
					</c:when>
					<c:otherwise>
			         	<%-- 로그인 사용자 이름뜨게 설정할것
						이름누르거나 마이페이지 누를경우 마이페이지로 이동하도록 --%>
	   					<li><a href="#"> #님 </a>
	   					<li><a href="/logout"> 로그아웃 </a>
	   					<li><a href="#"> 마이페이지</a>
					</c:otherwise>
					</c:choose>
				</ul>
			</div>
		</div>
</body>

</html>