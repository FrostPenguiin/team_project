<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="${path }/resources/CSS/admin/update.css">
	<title>수정 - ${data.nmv_title}</title>
</head>
<script type="text/javascript">
	function formCheck(form) {
		if(form.title.value === undefined || form.title.value.trim() === "") {
			// 모달 활성
			var modal = new bootstrap.Modal(document.getElementById("errorModal"), {
				keyboard: false
			})
			modal.show();
			return;
		}
		form.submit();
	}
</script>
<body>
	<header></header>
	<h1 class="title">영화 수정</h1>
	<section class="container">
		<div class="main">
			<c:url var="movieUpdateUrl" value="/admin/updateIntendedMovie" />
			<form action="${movieUpdateyUrl}" method="post">
				<input type="hidden" name="nmv_num" value="${data.nmv_num}">
				<div class="mb-3">
					<input class="content" id="nmv_title" name="nmv_title" placeholder="제목을 입력하세요." value="${data.nmv_title}">
				</div>
				<div class="mb-3">
					<input class="content" id="nmv_director" name="nmv_director" placeholder="감독을 입력하세요." value="${data.nmv_director}">
				</div>
				<div class="mb-3">
					<input class="content" id="nmv_actor" name="nmv_actor" placeholder="주연배우를 입력하세요." value="${data.nmv_actor}">
				</div>
				<div class="mb-3">
					<input class="content" id="nmv_genre" name="nmv_genre" placeholder="장르를 입력하세요." value="${data.nmv_genre}">
				</div>
				<div class="mb-3">
					<input class="content" id="nmv_openDate" name="nmv_openDate" placeholder="개봉일을 입력하세요." value="${data.nmv_openDate}">
				</div>
				<div class="mb-3">
					<input class="content" id="nmv_intime" name="nmv_intime" placeholder="상영 중 Y, 상영 종료 N, 상영 예정 P" value="${data.nmv_intime}">
				</div>
				<div class="mb-3">
					<textarea class="content" id="nmv_story" name="nmv_story"
						rows="5" placeholder="내용을 입력하세요.">${data.nmv_story}</textarea>
				</div>
				<div class="mb-3">
					<input class="form-control" type="file" name="nmv_poster" onchange="uploadCheck(this);" multiple value="${data.nmv_poster }">
      			</div>
				<div class="text-end">
					<button class="btn btn-primary" type="submit" onclick="formCheck(this.form);">저장</button>
				</div>
			</form>
		</div>	
	</section>
</body>
</html>
