<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

	<!-- jQuery library -->
	<c:url var="path" value="${pageContext.request.contextPath}"/>
	<script type="text/javascript" src="${path}/resources/js/jquery-3.6.0.js"></script>
	<script type="text/javascript" src="${path}/resources/js/jquery-3.6.0.min.js"></script>
	
	<!-- css  -->
	<link rel="stylesheet" type="text/css" href="${path}/resources/css/module/reset.css">
	<link rel="stylesheet" type="text/css" href="${path}/resources/css/module/common.css">