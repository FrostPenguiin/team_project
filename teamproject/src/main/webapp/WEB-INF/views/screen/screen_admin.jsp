<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<%@ include file="../module/tags.jsp" %>
	<meta charset="UTF-8">
	<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="author" content="webstoryboy">
    
	<c:url var="path" value="${pageContext.request.contextPath}"/>
	<script type="text/javascript" src="${path}/resources/js/jquery-3.6.0.js"></script>
	<script type="text/javascript" src="${path}/resources/js/jquery-3.6.0.min.js"></script>
	
	<!-- CSS -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
	<link href="${path}/resources/css/module/reset.css" rel="stylesheet" type="text/css">
	<link href="${path}/resources/css/screen/screen_admin.css" rel="stylesheet" type="text/css">
	
	<title>KH CINEMA</title>
</head>
<body>
	<%@ include file="../module/header.jsp" %>
	<div class="container-fluid">
		<hr>
		<div class="container">KH CINEMA 상영관 관리</div>
		<hr>
	</div>
	<div class="row">
		<div class="col-sm-12">
			<div id="screenList">
				<h2 align="center">상영관 리스트</h2>
				<form id="frmDelete" name="frmDelete">
					<table id="screenTable" class="table table-hover">
						<thead class="thead-dark">
							<tr>
								<th style="width: 60px">번호</th>
								<th style="width: 60px">지역</th>
								<th style="width: 100px">상영관명</th>
								<th style="width: 180px">주소</th>
								<th style="width: 120px">전화번호</th>
								<th style="width: 120px">관리</th>
							</tr>
						</thead>
						<tbody>
							<c:if test="${not empty datas}">
								<c:forEach items="${datas}" var="data">
									<tr>
										<td>${data.scrNum}</td>
										<td>${data.scrLoc}</td>
										<td>${data.scrName}</td>
										<td>${data.scrAddress}</td>
										<td>${data.scrTel}</td>
										<td><button class="btn btn-secondary btn-sm"
												onclick="scrinfo('${data.scrNum}')">상세 정보</button></td>
									</tr>
								</c:forEach>
							</c:if>
						</tbody>
					</table>
				</form>
			</div>
		</div>
	</div>
	
	<!-- 극장 정보 수정 Modal -->
	<div class="modal fade" id="scrinfoModal" tabindex="-1" role="dialog" 
	     aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document" style="max-width: 800px;">
			<div class="modal-content">
				<div class="modal-header">
				<h5 class="modal-title text-gray-900 text-primary font-weight-bold" id="exampleModalLabel">극장 정보 수정</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">취소</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="col-8">
						
							<div class="col-12">
								<div class="text-gray-900">
								
									<div class="mb-3">
										<label class="small mb-1" for="inputUsername">상영관 코드</label>
										<input class="form-control" id="scrNum" type="text" readonly="readonly" name="scrNum">
									</div>
									<div class="mb-3">
										<label class="small mb-1" for="inputUsername">상영관 지역</label>
										<input class="form-control" id="scrLoc" type="text" readonly="readonly" name="scrLoc">
									</div>
									<div class="mb-3">
										<label class="small mb-1" for="inputUsername">상영관명</label>
										<input class="form-control" id="scrName" type="text" readonly="readonly" name="scrName">
									</div>
									<div class="mb-3">
										<label class="small mb-1" for="inputUsername">상영관 주소</label>
										<input class="form-control" id="scrAddress" type="text" readonly="readonly" name="scrAddress">
									</div>
									<div class="mb-3">
										<label class="small mb-1" for="inputUsername">상영관 번호</label>
										<input class="form-control" id="scrTel" type="text" readonly="readonly" name="scrTel">
									</div>
									
									<button type="button" class="btn btn-primary" id="openbtn" onclick="modifyopen()">정보수정</button>
									<button type="button" class="btn btn-primary btn_dNone" id="closebtn" onclick="modifyclose()">취소</button>
								</div>
							</div>
							
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary btn_dNone" id="submitbtn" onclick="modifyScreen()">수정하기</button>
					<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		function scrinfo(scrNum) {
			console.log(scrNum);
			
			// 극장 정보 조회
			$.ajax({
				type: "get",
				url: "screen/getselectScrinfo",
				data: {
					"scrNum" : scrNum 
				},
				dataType: "json",
				async: false,
				success: function(result) {
					console.log(result.scrNum);
					
					$("#scrNum").val(result.scrNum);
					$("#scrLoc").val(result.scrLoc);
					$("#scrName").val(result.scrName);
					$("#scrAddress").val(result.scrAddress);
					$("#scrTel").val(result.scrTel);
					
					$("#scrinfoModal").modal('show');
				}
			});
		}
			
		function modifyopen() {
			$("#openbtn").toggleClass("btn_dNone");
			$("#submitbtn").toggleClass("btn_dNone");
			$("#closebtn").toggleClass("btn_dNone");
			
			$("#scrName").removeAttr("readonly");
			$("#scrAddress").removeAttr("readonly");
			$("#scrTel").removeAttr("readonly");
		}
	</script>
</body>
<footer>
	<%@ include file="../module/footer.jsp" %>
</footer>
</html>