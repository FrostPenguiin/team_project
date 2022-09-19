<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<head>
	<!-- CSS -->
	<c:url var="path" value="${pageContext.request.contextPath}"/>
	<link href="${path}/resources/css/navigation.css" rel="stylesheet" type="text/css">
	<link href="${path}/resources/css/reset.css" rel="stylesheet" type="text/css">
	
	<!-- jQuery library -->
	<c:url var="path" value="${pageContext.request.contextPath}"/>
	<script type="text/javascript" src="${path}/resources/js/jquery-3.6.0.js"></script>
	<script type="text/javascript" src="${path}/resources/js/jquery-3.6.0.min.js"></script>
</head>

<body>
	<header>
		<div class="small_container">
			<nav class="navbar navbar-expand-lg navbar-light bg-top p-0"
				id="navbar-top">
				<div class="collapse navbar-collapse">
					<ul class="navbar-nav">
						<c:if test="${not empty sessionScope.loginData}">
							<li class="nav-item"><a href="#" class="nav-link">마이페이지</a></li>
							<li class="nav-item"><a href="/logout" class="nav-link">로그아웃</a></li>
							<li class="nav-item"><a href="#" class="nav-link">빠른예매</a></li>
						</c:if>
						<c:if test="${empty sessionScope.loginData}">
							<li class="nav-item"><a href="#" class="nav-link">로그인</a></li>
							<li class="nav-item"><a href="#" class="nav-link">회원가입</a></li>
						</c:if>
						<%-- login 시 admin 계정일 경우 버튼생기도록 --%>
					</ul>
				</div>
			</nav>
		</div>

		<div class="container">
			<div class="row">
				<div class="header clearfix">
					<h1>
						<c:url var="mainUrl" value="." />
						<a href="./"> <em><img
								src="${path}/resources/img/logo.png" alt="KH CINEMA"></em>
						</a>
					</h1>
					<nav class="nav">
						<ul class="clearfix">
							<c:url var="mainUrl" value="." />
							<li><a href="#">영화</a></li>
							<li><a href="${mainUrl}/screen">영화관</a></li>
							<li><a href="#">예매</a></li>
						</ul>
					</nav>
				</div>
			</div>
		</div>
	</header>
</body>