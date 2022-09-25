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
	<title>수정 - ${data.mv_title}</title>
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
			<c:url var="movieUpdateUrl" value="/admin/updateMovie" />
			<form action="${movieUpdateyUrl}" method="post">
				<input type="hidden" name="mv_num" value="${data.mv_num}">
				<div class="mb-3">
					<input class="content" id="mv_title" name="mv_title" placeholder="제목을 입력하세요." value="${data.mv_title}">
				</div>
				<div class="mb-3">
					<input class="content" id="mv_director" name="mv_director" placeholder="제목을 입력하세요." value="${data.mv_director}">
				</div>
				<div class="mb-3">
					<input class="content" id="mv_actor" name="mv_actor" placeholder="제목을 입력하세요." value="${data.mv_actor}">
				</div>
				<div class="mb-3">
					<input class="content" id="mv_genre" name="mv_genre" placeholder="제목을 입력하세요." value="${data.mv_genre}">
				</div>
				<div class="mb-3">
					<input class="content" id="mv_playtime" name="mv_playtime" placeholder="제목을 입력하세요." value="${data.mv_playtime}">
				</div>
				<div class="mb-3">
					<input class="content" id="mv_openDate" name="mv_openDate" placeholder="제목을 입력하세요." value="${data.mv_openDate}">
				</div>
				<div class="mb-3">
					<input class="content" id="mv_point" name="mv_point" placeholder="제목을 입력하세요." value="${data.mv_point}">
				</div>
				<div class="mb-3">
					<input class="content" id="mv_intime" name="mv_intime" placeholder="제목을 입력하세요." value="${data.mv_intime}">
				</div>
				<div class="mb-3">
					<textarea class="content" id="mv_story" name="mv_story"
						rows="5" placeholder="내용을 입력하세요.">${data.mv_story}</textarea>
				</div>
				<div class="mb-3">
					<input class="form-control" type="file" name="mv_poster" onchange="uploadCheck(this);" multiple value="${data.mv_poster }">
      			</div>
				<div class="text-end">
					<button class="btn btn-primary" type="submit" onclick="formCheck(this.form);">저장</button>
				</div>
			</form>
		</div>	
	</section>
</body>
</html>
