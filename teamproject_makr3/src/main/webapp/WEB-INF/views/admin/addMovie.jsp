<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	 <link rel="stylesheet" href="${path }/resources/CSS/admin/add.css">
	<title>KH CIENMA</title>
</head>
<script type="text/javascript">
	function formCheck(form) {
		if(form.title.value === undefined || form.title.value.trim() === "") {
			
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
			<h1 class="title">영화 등록</h1>
		<div class="main">
			<c:url value="/admin/addMovie" var="movieAddUrl" />
			<form action="${movieAddUrl}" method="post">
				<div class="mb-3">
					<input class="content" id="id_title" name="mv_title" placeholder="제목을 입력하세요.">
				</div>
				<div class="mb-3">
					<input class="content" id="id_director" name="mv_director" placeholder="감독을 입력하세요.">
				</div>
				<div class="mb-3">
					<input class="content" id="id_actor" name="mv_actor" placeholder="주연배우를 입력하세요.">
				</div>
				<div class="mb-3">
					<input class="content" id="id_genre" name="mv_genre" placeholder="장르를 입력하세요.">
				</div>
				<div class="mb-3">
					<input class="content" id="id_playtime" name="mv_playtime" placeholder="상영시간을 입력하세요.">
				</div>
				<div class="mb-3">
					<input class="content" id="id_openDate" name="mv_openDate" placeholder="개봉일을 입력하세요.">
				</div>
				<div class="mb-3">
					<input class="content" id="id_point" name="mv_point" placeholder="5점 만점 점수를 입력하세요.">
				</div>
				<div class="mb-3">
					<input class="content" id="id_intime" name="mv_intime" placeholder="상영 중 Y, 상영 종료 N, 상영 예정 P">
				</div>
				<div class="mb-3">
					<textarea class="content" id="id_story" name="mv_story"
						rows="5" placeholder="줄거리를 입력하세요."></textarea>
				</div>
				<div class="mb-3">
					<input class="form-control" type="file" name="mv_poster" onchange="uploadCheck(this);" multiple>
      			</div>
				<div class="text-end">
					<button class="btn btn-primary" type="submit" onclick="formCheck(this.form);">저장</button>
				</div>
			</form>
		</div>

</body>
</html>
