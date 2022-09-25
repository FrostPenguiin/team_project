<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>   
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

	<!-- Popper JS -->
   <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
   
   <!-- Latest compiled JavaScript -->
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

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
        	<c:url value="/movie" var="movieUrl" />
	        <section class="index-left">
				<ul class="index">
					<li><h2>영화 목록</h2></li>
					<li class="indexmenu"><a href="./openmovie">현재 상영 영화</a></li>
					<li class="indexmenu"><a href="./intendedMovie">상영 예정 영화</a></li>
				</ul>
			</section>
			<section>
				<div>
					<div class="name"><h3>${data.nmv_title }</h3></div>
						<div class="info">
							<ul class="movieinfo">
								<li>감독 ${data.nmv_director }</li>
								<li>주연 ${data.nmv_actor }</li>
								<li>장르 ${data.nmv_genre }</li>
								<li>개봉일 ${data.nmv_openDate }</li>
							</ul>	
						</div>
							<div class="poster">
								<img img class="moviesrc" src="${path }/resources/img/${data.nmv_poster}">
							</div>
								<div class="story">
									${data.nmv_story }
								</div>		
				</div>
			</section>
			<section>
				<div class="mb-3 text-end">
					<c:url var="adminUrl" value="/admin" />
						<c:if test="${data.nmv_num eq data.nmv_num}">
							<button class="btn btn-success" type="button" onclick="location.href='${adminUrl}/updateIntendedMovie?id=${data.nmv_num}'">수정</button>
							<button class="btn btn-danger" type="button" data-bs-toggle="modal" data-bs-target="#deleteModal">삭제</button>
						</c:if>
				</div>
				<div class="modal fade" tabindex="-1" id="deleteModal">
			<div class="modal-dialog modal-dialog-centered">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title">글 삭제</h5>
						<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
					</div>
					<div class="modal-body">
						<p>해당 게시글을 삭제하시겠습니까?</p>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
						<button type="button" class="btn btn-danger" data-bs-dismiss="modal" onclick="#deleteModal(${data.nmv_num});">삭제</button>
					</div>
				</div>
			</div>
		</div>
			</section>
		</article>
		<script type="text/javascript">
		function deleteModal(nmv_num) {
			$.ajax({
				type: "post",
				url: "${adminUrl}/deleteMovie",
				data: {
					id: nmv_num
				},
				dataType: "json",
				success: function(data) {
					var myModal = new bootstrap.Modal(document.getElementById("resultModal"), {
						keyboard: false
					});
					
					var title = myModal._element.querySelector(".modal-title");
					var body = myModal._element.querySelector(".modal-body");
					title.innerText = data.title;
					body.innerHTML = "<p>" + data.message + "</p>"
					
					myModal.show();
				}
			})
		}
		</SCRIPT>	   
</body>
</html>
</c:otherwise>
</c:choose>