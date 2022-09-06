<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>    
    <c:set var="path" value="${pageContext.request.contextPath}" />
    <!-- 현재 상영작  -->
<c:choose>
   <c:when test="${result == 0 }">
      <script>
         alert("현재 상영작이 없습니다.");
         history.back();
      </script>
   </c:when>

   <c:otherwise>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
   <!-- jQuery library -->
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

   <!-- Latest compiled and minified CSS -->
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

   <!-- 아이콘 -->
   <link rel="stylesheet"href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
   <link href="https://use.fontawesome.com/releases/v5.7.2/css/all.css">
   
   <!-- 구글폰트 -->
   <link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Bowlby+One+SC&family=Bungee&family=Noto+Sans+KR:wght@400;500&display=swap" rel="stylesheet">
   
   
   <!-- CSS파일 -->
   <link rel="stylesheet" href="${path }/resources/CSS/movie/movieinfo.css">
   
   <!-- 파비콘 설정-->
   <link rel="shortcut icon" href="${path}/resources/img/movie_favicon.ico" type="image/x-icon">

<title>KH CINEMA</title>
</head>
<body>
   <!-- 메뉴바  -->
   <jsp:include page="./theme.jsp" />
  	 <h1 class="title">영화 살펴보기</h1>
        <article>
	        <section class="index-left">
				<ul class="index">
					<li><h2>영화 목록</h2></li>
					<li class="indexmenu"><a href="./openmovie">현재 상영 영화</a></li>
					<li class="indexmenu"><a href="./intendedMovie">상영 예정 영화</a></li>
				</ul>
			</section>
			<section>
				<div>
					<div class="name"><h3>영화 제목</h3></div>
					<div class="info">
						<ul class="movieinfo">
							<li>감독</li>
							<li>주연</li>
							<li>장르</li>
							<li>상영시간</li>
							<li>개봉일</li>
							<li>전문가 별점</li>
						</ul>	
					</div>
					<div class="poster">
						<img img class="moviesrc" src="${path }/resources/img/run.jpg">
					</div>
					<div class="story">
						영화 줄거리를 소개하며 작성하는 곳으로섬니어어어어어어어어어어어어어adadadad어어어어어어어엉sdfsdfsdfsdfsdfsdf
					</div>
				</div>
			</section>
		</article>
			
	<!-- JS파일 -->
   <!-- Popper JS -->
   <script
      src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

   <!-- Latest compiled JavaScript -->
   <script
      src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>




</body>
</html>
</c:otherwise>
</c:choose>