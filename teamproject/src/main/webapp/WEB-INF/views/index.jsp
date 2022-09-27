<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html>
<head>
	<%@ include file="./module/tags.jsp" %>
	<link rel="stylesheet" type="text/css" href="/resources/css/index.css">
</head>
<body>
	<div class="visual">
		<ul class="slick-items">
			<li class="visual">
				<a href="" class="img-wrap" style="background-image: url('/resources/img/main_slider01.jpg')">
					<span class="visual-text"> 
						<strong class="visual-text-title">아바타 리마스터링<em>AVATAR: Remastering</em></strong> 
						<span class="visual-text-sub">판도라가 다시 열린다</span>
					</span>
				</a>
			</li>
			<li class="visual">
				<a href="#none" class="img-wrap" style="background-image: url('/resources/img/main_slider02.jpg')">
					<span class="visual-text"> 
						<strong class="visual-text-title">늑대사냥<em>Project Wolf Hunting</em></strong> 
						<span class="visual-text-sub">인간, 스스로 먹잇감이 되다</span>
					</span>
				</a>
			</li>
			<li class="visual">
				<a href="" class="img-wrap"style="background-image: url('/resources/img/main_slider02.jpg')">
					<span class="visual-text"> 
						<strong class="visual-text-title">그것: 두번째 이야기 <em>It Chapter Two</em></strong> 
						<span class="visual-text-sub">그것의 마지막</span>
					</span>
				</a>
			</li>
			<li class="visual">
				<a href="" class="img-wrap" style="background-image: url('/resources/img/main_slider02.jpg')">
					<span class="visual-text"> 
						<strong class="visual-text-title">그것: 두번째 이야기 <em>It Chapter Two</em></strong> 
						<span class="visual-text-sub">그것의 마지막</span>
					</span>
				</a>
			</li>
		</ul>
	</div>
	<!--//slick-->

	<div id="container">
		<!-- 영화 탭 콘텐츠 -->
		<div class="movie-wrap">
			<div class="movie-box">
				<ul class="movie-tabmenu">
					<li>
						<a href="#" class="active">
							<strong>최신개봉작</strong>
						</a>
						<div class="tab-content-wrap on">
							<!-- 임시로 작성한 것 -> 나중엔 c:forEach 태그사용해서 반복하여 데이터 추출 -->
							<div class="tab-content">
								<div class="movie-content">
									<div class="movie_img">
										<a>
											<c:url var="path" value="${pageContext.request.contextPath}"/>
											<img src="${path}/resources/img/poster01.jpg">
										</a>
									</div>
									<div class="movie-info">
										<h3 class="movie-title">
											<a href="#">영화제목</a>
										</h3>
										<div class="info-text-area">
											<span class="info-text">#개봉</span> 
											<span class="info-text">관람 평점:#</span>
										</div>
									</div>
									<div class="movie-btn-area">
										<a href="#" class="movie-btn">예매하기</a> 
										<a href="#" class="movie-btn">상세보기</a>
									</div>
								</div>
							</div>
						</div>
					</li>
					<li>
					<a href="#"><strong>상영예정작</strong></a>
						<div class="tab-content-wrap">
							<!-- 임시로 작성한 것 -> 나중엔 c:forEach 태그사용해서 반복하여 데이터 추출 -->
							<div class="tab-content">
								<div class="movie-content">
									<div class="movie_img">
										<a href=""> 
											<img src="${path}/resources/img/poster02.jpg">
										</a>
									</div>
									<div class="movie-info">
										<h3 class="movie-title">
											<a href="">최신영화 제목</a>
										</h3>
										<div class="info-text-area">
											<span class="info-text">/개봉날짜데이터입력/개봉</span> 
											<span class="info-text">관람 평점:/평점연결/</span>
										</div>
									</div>
									<div class="movie-btn-area">
										<a href="#" class="movie-btn">예매하기</a> 
										<a href="#"class="movie-btn">상세보기</a>
									</div>
								</div>
							</div>
						</div>
					</li>
				</ul>
			</div>
		</div>
	</div>
	<!--영화관 이미지 -->
	<div class="kh-cinema">
		<a href="" class="cinema-content">
			<div><img src="/resources/img/logo_white01.png" alt=""></div>
			<p class="cinema-text">영화를 본다는 것, 그 놀라운 경험을 선사하는 KH시네마에서</p>
		</a>
	</div>
		
	<!-- script -->
	<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
	<script type="text/javascript" src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
	<script type="text/javascript" src="/resources/slick/slick.min.js"></script>
	<script>
    $(document).ready(function () {
      $('.slick-items').slick({
        autoplay: true,
        dots: true,
        speed: 300 /* 이미지가 슬라이딩시 걸리는 시간 */ ,
        infinite: false,
        autoplaySpeed: 3000 /* 이미지가 다른 이미지로 넘어 갈때의 텀 */ ,
        arrows: false,
        slidesToShow: 1,
        slidesToScroll: 1,
        fade: true,
      });
      //영화 탭메뉴 제이쿼리
      $(".movie-tabmenu>li>a").on("click", function () {
        $(".movie-tabmenu>li>a").removeClass("active");
        $(this).addClass("active");
        $(".tab-content-wrap").removeClass("on");
        $(this).siblings(".tab-content-wrap").addClass("on");
      });
      // hover
      $(".movie_img > a").on("mouseenter focus", function () {
        $(this).parent().siblings(".movie-btn-area").addClass("on");
      });
      $(".movie-btn-area a:last-child").on("focusout", function () {
        $(".movie-btn-area").removeClass("on");
      });
      $(".movie-content").on("mouseleave", function () {
        $(".movie-btn-area").removeClass("on");
      });
    });
  </script>
</body>
</html>
=======
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
   <link rel="stylesheet" href="${path }/resources/CSS/main/openMovie.css">
   
   <!-- 파비콘 설정-->
   <link rel="shortcut icon" href="${path}/resources/img/movie_favicon.ico" type="image/x-icon">

<title>KH CINEMA</title>
</head>
<body>
   <!-- 메뉴바  -->
   <jsp:include page="./theme.jsp" />
   
   <h1 class="title">현재 상영작</h1>
        <article>
	        <section class="index-left">
				<ul class="index">
					<li><h2>영화 목록</h2></li>
					<li class="indexmenu"><a href="./index">▶현재 상영 영화</a></li>
					<li class="indexmenu"><a href="./index2">상영 예정 영화</a></li>
				</ul>
			</section>
			<section class="list-center">
				<div class="list">	
					<table>
						<colgroup>
							<col class="news">
						</colgroup>
						<tbody>
							<tr>
								<td>
									<div class="content">
										<span class="moviesrc">
											<a class="movieinfo" href="./index3">
												<img class="moviesrc" src="${path }/resources/img/run.jpg">
											</a>
										</span>
										<span class="name info"><a class="movieinfo" href="./index3">영화</a></span>
										<span class="point info">5.0</span>
										<span class="palytime info">132분</span>
										<span><a class="reservation" href="./home.jsp">예매</a></span> 
									</div>
								</td>
							</tr>
							<tr>
								<td>
									<div class="content">
										<span class="moviesrc">
											<a class="movieinfo" href="./index3">
												<img class="moviesrc" src="${path }/resources/img/run.jpg">
											</a>
										</span>
										<span class="name info"><a class="movieinfo" href="./index3">영화</a></span>
										<span class="point info">5.0</span>
										<span class="palytime info">132분</span>
										<span><a class="reservation" href="./home.jsp">예매</a></span> 
									</div>
								</td>
							</tr>
							<tr>
								<td>
									<div class="content">
										<span class="moviesrc">
											<a class="movieinfo" href="./index3">
												<img class="moviesrc" src="${path }/resources/img/run.jpg">
											</a>
										</span>
										<span class="name info"><a class="movieinfo" href="./index3">영화</a></span>
										<span class="point info">5.0</span>
										<span class="palytime info">132분</span>
										<span><a class="reservation" href="./home.jsp">예매</a></span> 
									</div>
								</td>
							</tr>
							<tr>
								<td>
									<div class="content">
										<span class="moviesrc">
											<a class="movieinfo" href="./index3">
												<img class="moviesrc" src="${path }/resources/img/run.jpg">
											</a>
										</span>
										<span class="name info"><a class="movieinfo" href="./index3">영화</a></span>
										<span class="point info">5.0</span>
										<span class="palytime info">132분</span>
										<span><a class="reservation" href="./home.jsp">예매</a></span> 
									</div>
								</td>
							</tr>
							<tr>
								<td>
									<div class="content">
										<span class="moviesrc">
											<a class="movieinfo" href="./index3">
												<img class="moviesrc" src="${path }/resources/img/run.jpg">
											</a>
										</span>
										<span class="name info"><a class="movieinfo" href="./index3">영화</a></span>
										<span class="point info">5.0</span>
										<span class="palytime info">132분</span>
										<span><a class="reservation" href="./home.jsp">예매</a></span> 
									</div>
								</td>
							</tr>
							<tr>
								<td>
									<div class="content">
										<span class="moviesrc">
											<a class="movieinfo" href="./index3">
												<img class="moviesrc" src="${path }/resources/img/run.jpg">
											</a>
										</span>
										<span class="name info"><a class="movieinfo" href="./index3">영화</a></span>
										<span class="point info">5.0</span>
										<span class="palytime info">132분</span>
										<span><a class="reservation" href="./home.jsp">예매</a></span> 
									</div>
								</td>
							</tr>
						</tbody>
					</table>
			    </div>
			    <div class="paginate">
				    <a href="" class="first">처음 페이지</a>
				    <a href="" class="prev">이전 페이지</a>
				    <span>
				        <c:forEach var="i" begin="1" end="5" step="1">
				            <c:choose>
				                <c:when test="${i eq param.pageNo}"><a href="javascript:goPage(${i})" class="choice">${i}</a></c:when>
				                <c:otherwise><a href="javascript:goPage(${i})">${i}</a></c:otherwise>
				            </c:choose>
				        </c:forEach>
				    </span>
				    <a href="" class="next">다음 페이지</a>
				    <a href="" class="last">마지막 페이지</a>
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
>>>>>>> refs/remotes/origin/유병욱
