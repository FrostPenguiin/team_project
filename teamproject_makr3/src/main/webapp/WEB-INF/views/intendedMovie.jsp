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
   <link rel="stylesheet" href="${path }/resources/CSS/main/intendedMovie.css">
   
   <!-- 파비콘 설정-->
   <link rel="shortcut icon" href="${path}/resources/img/movie_favicon.ico" type="image/x-icon">

<title>KH CINEMA</title>
</head>
<body>
   <!-- 메뉴바  -->
   <jsp:include page="./theme.jsp" />
   
   <h1 class="title">상영 예정작</h1>
        <article>
	        <section class="index-left">
				<ul class="index">
					<li><h2>영화 목록</h2></li>
					<li class="indexmenu"><a href="./index">현재 상영 영화</a></li>
					<li class="indexmenu"><a href="./index2">▶상영 예정 영화</a></li>
				</ul>
			</section>
			<section class="list-center">
				<div class="list">	
					<table>
						<colgroup>
							<col class="news">
						</colgroup>
						<ul class="content">
							<li class="movielist">
								<div class="moviesrc">
									<a class="movieinfo" href="./index3">
								<img class="moviesrc" src="${path }/resources/img/run.jpg">
									</a>
								</div>
								<div class="name"><a class="movieinfo" href="./index3">영화</a></div>
								<div class="opendate">예정일</div>
							</li>
							<li class="movielist">
								<div class="moviesrc">
									<a class="movieinfo" href="./index3">
								<img class="moviesrc" src="${path }/resources/img/run.jpg">
									</a>
								</div>
								<div class="name"><a class="movieinfo" href="./index3">영화</a></div>
								<div class="opendate">예정일</div>
							</li>
							<li class="movielist">
								<div class="moviesrc">
									<a class="movieinfo" href="./index3">
								<img class="moviesrc" src="${path }/resources/img/run.jpg">
									</a>
								</div>
								<div class="name"><a class="movieinfo" href="./index3">영화</a></div>
								<div class="opendate">예정일</div>
							</li>
							<li class="movielist">
								<div class="moviesrc">
									<a class="movieinfo" href="./index3">
								<img class="moviesrc" src="${path }/resources/img/run.jpg">
									</a>
								</div>
								<div class="name"><a class="movieinfo" href="./index3">영화</a></div>
								<div class="opendate">예정일</div>
							</li>
							<li class="movielist">
								<div class="moviesrc">
									<a class="movieinfo" href="./index3">
								<img class="moviesrc" src="${path }/resources/img/run.jpg">
									</a>
								</div>
								<div class="name"><a class="movieinfo" href="./index3">영화</a></div>
								<div class="opendate">예정일</div>
							</li>
							<li class="movielist">
								<div class="moviesrc">
									<a class="movieinfo" href="./index3">
								<img class="moviesrc" src="${path }/resources/img/run.jpg">
									</a>
								</div>
								<div class="name"><a class="movieinfo" href="./index3">영화</a></div>
								<div class="opendate">예정일</div>
							</li>
						</ul>
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