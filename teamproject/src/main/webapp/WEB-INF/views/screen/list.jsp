<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
<head>
	<meta charset="UTF-8">
	
	<!-- jQuery library -->
	<c:url var="path" value="${pageContext.request.contextPath}"/>
	<script type="text/javascript" src="${path}/resources/js/jquery-3.6.0.js"></script>
	<script type="text/javascript" src="${path}/resources/js/jquery-3.6.0.min.js"></script>
	
	<!-- CSS -->
	<link href="${path}/resources/css/reset.css" rel="stylesheet" type="text/css">
	<link href="${path}/resources/css/list.css" rel="stylesheet" type="text/css">
    
    <!-- 파비콘 -->
    <link rel="shortcut icon" href="${path}/resources/icon/favicon.png">
    <link rel="apple-touch-icon-precomposed" href="${path}/resources/icon/favicon_72.png" />
    <link rel="apple-touch-icon-precomposed" sizes="96x96" href="${path}/resources/icon/favicon_96.png" />
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="${path}/resources/icon/favicon_144.png" />
    <link rel="apple-touch-icon-precomposed" sizes="192x192" href="${path}/resources/icon/favicon_192.png" />
    
    <!-- 웹 폰트 -->
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Gowun+Batang&family=Nanum+Gothic+Coding&display=swap" rel="stylesheet">
	
	<title>KH CINEMA</title>
</head>
<body>
	<!-- header 영역 -->
	<header id="header">
		<%@ include file="../module/navigation.jsp"%>
	</header>
	<section>
		<!-- Contaniner -->
		<div id="contaniner"  class=""><!-- 벽돌 배경이미지 사용 시 class="bg-bricks" 적용 / 배경이미지가 없을 경우 class 삭제  -->
			<!-- Contents Area -->
			<div id="contents" class="">

				<!-- Contents Start -->
				<!-- screen 리스트 -->
				<div class="sect-common">
					<div class="favorite-wrap">
					자주가는 cgv 설정부분
						<div class="sect-city"></div>
					</div>
				</div>

				<div id="mid">
					<!-- 그 영화관 정보 -->
					<div id="minfo"
						style="background-image: url('../resources/img/KH_GANGNAM.jpg')">
						<div id="minfo_txt">
							<h1 class="ct">강남 KH</h1>
							<h2>1544-9970</h2>
							<h3>서울특별시 강남구 테헤란로14길 6</h3>
						</div>

					</div>

				</div>

				<div id="mtime"></div>
			</div>
		</div>
</section>
</body>
</html>
