<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<%@ include file="../module/tags.jsp" %>
	<meta charset="UTF-8">
	<title>KH CINEMA</title>
</head>
<body>
	<form action="kakaoPay" method="post" id="frm">
		<input type="hidden" value="${count}" name="quantity">
		<input type="hidden" value="${price}" name="total_amount">
	</form>
	<script type="text/javascript">
			$("#frm").submit();
	</script>
</body>
</html>