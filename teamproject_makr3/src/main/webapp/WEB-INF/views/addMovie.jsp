<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>KH CIENMA</title>
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
	<div>
		<h2>영화 등록</h2>
		
		<span>입력 목록</span>
		<div>
			<div>
			<form enctype="multipart/form-data" method="post">
			<table>
				<tr>
					<td><label>영화 제목</label></td>
					<td><input id="id_title" name="mv_title" placeholder="내용을 입력하세요."></td>
				</tr>
				<tr>
					<td><label>감독</label></td>
					<td><input id="id_director" name="mv_director" placeholder="내용을 입력하세요."></td>
				</tr>
				<tr>
					<td><label>배우</label></td>
					<td><input id="id_actor" name="mv_actor" placeholder="내용을 입력하세요."></td>
				</tr>
				<tr>
					<td><label>장르</label></td>
					<td><input id="id_gerne" name="mv_gerne" placeholder="내용을 입력하세요."></td>
				</tr>
				<tr>
					<td><label>상영시간</label></td>
					<td><input id="id_playtime" name="mv_playtime" placeholder="내용을 입력하세요."></td>
				</tr>
				<tr>
					<td><label>개봉일</label></td>
					<td><input id="id_opendate" name="mv_opendate" placeholder="내용을 입력하세요."></td>
				</tr>
				<tr>
					<td><label>별점</label></td>
					<td><input id="id_point" name="mv_point" placeholder="5점 만점입니다."></td>
				</tr>
				<tr>
					<td><label>줄거리</label></td>
					<td><textarea id="id_story" name="mv_story" placeholder="내용을 입력하세요."></textarea></td>
				</tr>
				<tr>
					<td><label>상영 구분</label></td>
					<td><textarea id="id_intime" name="mv_intime" placeholder="Y 상영중, N 상영 종료, P 상영 예정"></textarea></td>
				</tr>
			</table>
			<button type=type="button" onclick="formCheck(this.form);">영화 등록</button>
		</form>
	</div>
	</div>
	</div>
</body>
</html>