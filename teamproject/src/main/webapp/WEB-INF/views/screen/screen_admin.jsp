<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="author" content="webstoryboy">
    
	<c:url var="path" value="${pageContext.request.contextPath}"/>
	
	<!-- CSS -->
	<link href="${path}/resources/css/reset.css" rel="stylesheet" type="text/css">
	
	<title>KH CINEMA - 상영관 관리자 페이지</title>
</head>
<body>
	<header id="header">
		<%@ include file="../module/navigation.jsp"%>
	</header>
	<!-- Begin Page Content -->
	<div class="container-fluid">

		<!-- Page Heading -->
		<h1 class="h3 mb-2 text-gray-800">영화관 관리</h1>
		<p class="mb-4">영화관의 상세정보를 보여줍니다.</p>

		<!-- DataTales Example -->
		<div class="card shadow mb-4">
			<div class="card-header py-3">
				<h6 class="m-0 font-weight-bold text-primary">영화관 상세정보</h6>
			</div>
			<div class="card-body">
				<div class="table-responsive">
					<table class="table table-bordered" id="dataTable" width="100%"
						cellspacing="0">
						<thead>
							<tr>
								<th>번호</th>
								<th>지역</th>
								<th>이름</th>
								<th>주소</th>
								<th>전화번호</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${screenList}" var="slist">
								<tr>
									<td><a
										href="${pageContext.request.contextPath}/admin/admin_cinemaSelect?cinema_num=${slist.cinema_num}">${slist.cinema_num}</a></td>
									<td><a
										href="${pageContext.request.contextPath}/admin/admin_cinemaSelect?cinema_num=${slist.cinema_num}">${slist.cinema_loc}</a></td>
									<td><a
										href="${pageContext.request.contextPath}/admin/admin_cinemaSelect?cinema_num=${slist.cinema_num}">${slist.cinema_name}</a></td>
									<td><a
										href="${pageContext.request.contextPath}/admin/admin_cinemaSelect?cinema_num=${slist.cinema_num}">${slist.cinema_add}</a></td>
									<td><a
										href="${pageContext.request.contextPath}/admin/admin_cinemaSelect?cinema_num=${slist.cinema_num}">${slist.cinema_tel}</a></td>
								</tr>
							</c:forEach>

						</tbody>
					</table>
				</div>
			</div>
		</div>

	</div>
	<!-- /.container-fluid -->

</body>
</html>