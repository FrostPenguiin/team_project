<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<ul class="pagination justify-content-center">
	<c:choose>
		<c:when test="${pageData.hasPrevPage()}">
			<li class="page-item">
				<a class="page-link bi bi-caret-left-fill" href="${param.url}?page=${pageData.prevPage}">이전</a>
			</li>
		</c:when>
		<c:otherwise>
			<li class="page-item disabled">
				<a class="page-link bi bi-caret-left-fill" href="#"></a>
			</li>
		</c:otherwise>
	</c:choose>
	<c:forEach items="${pageData.getPages(pageData.currentPage - 2, pageData.currentPage + 2)}" var="item">
		<li class="page-item ${pageData.currentPage == item ? ' active' : ''}">
			<a class="page-link" href="${param.url}?page=${item}">${item}</a>
		</li>
	</c:forEach>
	<c:choose>
		<c:when test="${pageData.hasNextPage()}">
			<li class="page-item">
				<a class="page-link bi bi-caret-right-fill" href="${param.url}?page=${pageData.nextPage}">다음</a>
			</li>
		</c:when>
		<c:otherwise>
			<li class="page-item disabled">
				<a class="page-link bi bi-caret-right-fill" href="#"></a>
			</li>
		</c:otherwise>
	</c:choose>
</ul>