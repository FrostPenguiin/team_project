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
	<%@ include file="../module/header.jsp" %>
	
	<table width="100%" border="0" cellpadding="0" cellspacing="0"
		align="center" class="fullTable">
		<tr>
			<td height="20"></td>
		</tr>
		<tr>
			<td>
				<table width="600" border="0" cellpadding="0" cellspacing="0"
					align="center" class="fullTable" bgcolor="#ffffff"
					style="border-radius: 10px 10px 0 0;">
					<tr class="hiddenMobile">
						<td height="40"></td>
					</tr>
					<tr class="visibleMobile">
						<td height="30"></td>
					</tr>

					<tr>
						<td>
							<table width="480" border="0" cellpadding="0" cellspacing="0"
								align="center" class="fullPadding">
								<tbody>
									<tr>
										<td>
											<table width="220" border="0" cellpadding="0" cellspacing="0"
												align="left" class="col">
												<tbody>
													<tr>
														<td align="left"><a href="../"><img 
															src="../resources/img/logo01.png"
															alt="logo" border="0" style="width: 50%"/></a></td>
													</tr>
													<tr class="hiddenMobile">
														<td height="40"></td>
													</tr>
													<tr class="visibleMobile">
														<td height="20"></td>
													</tr>
													<tr>
														<td
															style="font-size: 12px; color: #5b5b5b; font-family: 'Open Sans', sans-serif; line-height: 18px; vertical-align: top; text-align: left;">
															KH CINEMA에서 결제하신 내역으로, 예매번호는 마이페이지에서 다시 확인이 가능합니다.</td>
													</tr>
												</tbody>
											</table>
											<table width="220" border="0" cellpadding="0" cellspacing="0"
												align="right" class="col">
												<tbody>
													<tr class="visibleMobile">
														<td height="20"></td>
													</tr>
													<tr>
														<td height="5"></td>
													</tr>
													<tr>
														<td
															style="font-size: 21px; color: rgb(69, 91, 168); letter-spacing: -1px; font-family: 'Open Sans', sans-serif; line-height: 1; vertical-align: top; text-align: right;">
															Receipt</td>
													</tr>
													<tr>
													<tr class="hiddenMobile">
														<td height="50"></td>
													</tr>
													<tr class="visibleMobile">
														<td height="20"></td>
													</tr>
													<tr>
														<td
															style="font-size: 12px; color: #5b5b5b; font-family: 'Open Sans', sans-serif; line-height: 18px; vertical-align: top; text-align: right;">
															<small>ORDER</small>${pay.partner_order_id}<br /> <small>${pay.approved_at}</small>
														</td>
													</tr>
												</tbody>
											</table>
										</td>
									</tr>
								</tbody>
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
	<!-- /Header -->
	<!-- Order Details -->
	<table width="100%" border="0" cellpadding="0" cellspacing="0"
		align="center" class="fullTable">
		<tbody>
			<tr>
				<td>
					<table width="600" border="0" cellpadding="0" cellspacing="0"
						align="center" class="fullTable" bgcolor="#ffffff">
						<tbody>
							<tr>
							<tr class="hiddenMobile">
								<td height="60"></td>
							</tr>
							<tr class="visibleMobile">
								<td height="40"></td>
							</tr>
							<tr>
								<td>
									<table width="480" border="0" cellpadding="0" cellspacing="0"
										align="center" class="fullPadding">
										<tbody>
										<tr>
												<td height="1" colspan="4"
													style="border-bottom: 1px solid #e4e4e4"></td> <!-- rgb(69, 91, 168) -->
											</tr>
											<tr>
												<td
													style="font-size: 12px; font-family: 'Open Sans', sans-serif; color: #ff0000; line-height: 18px; vertical-align: top; padding: 10px 0;"
													class="article">${dto.resCode}</td>
												<td
													style="font-size: 12px; font-family: 'Open Sans', sans-serif; color: #646a6e; line-height: 18px; vertical-align: top; padding: 10px 0;"><small>KH성인</small></td>
												<td
													style="font-size: 12px; font-family: 'Open Sans', sans-serif; color: #646a6e; line-height: 18px; vertical-align: top; padding: 10px 0;"
													align="center">${dto.resCnt}</td>
												<td
													style="font-size: 12px; font-family: 'Open Sans', sans-serif; color: #1e2b33; line-height: 18px; vertical-align: top; padding: 10px 0;"
													align="right"><span>₩ </span>${dto.pay}</td>
											</tr>
										</tbody>
									</table>
								</td>
							</tr>
							<tr>
								<td height="20"></td>
							</tr>
						</tbody>
					</table>
				</td>
			</tr>
		</tbody>
	</table>
	<!-- /Order Details -->
	<!-- Total -->
	<table width="100%" border="0" cellpadding="0" cellspacing="0"
		align="center" class="fullTable">
		<tbody>
			<tr>
				<td>
					<table width="600" border="0" cellpadding="0" cellspacing="0"
						align="center" class="fullTable" bgcolor="#ffffff">
						<tbody>
							<tr>
								<td>
									<!-- Table Total -->
									<table width="480" border="0" cellpadding="0" cellspacing="0"
										align="center" class="fullPadding">
										<tbody>
											<tr>
												<td
													style="font-size: 12px; font-family: 'Open Sans', sans-serif; color: #000; line-height: 22px; vertical-align: top; text-align: right;">
													<strong>Grand Total (Incl.Tax)</strong>
												</td>
												<td
													style="font-size: 12px; font-family: 'Open Sans', sans-serif; color: #000; line-height: 22px; vertical-align: top; text-align: right;">
													<strong>₩ <fmt:formatNumber value="${pay.amount.total}" pattern="#,###.##"/></strong>
												</td>
											</tr>
										</tbody>
									</table> <!-- /Table Total -->

								</td>
							</tr>
						</tbody>
					</table>
				</td>
			</tr>
		</tbody>
	</table>
	<!-- /Total -->
	<!-- Information -->
	<table width="100%" border="0" cellpadding="0" cellspacing="0"
		align="center" class="fullTable">
		<tbody>
			<tr>
				<td>
					<table width="600" border="0" cellpadding="0" cellspacing="0"
						align="center" class="fullTable" bgcolor="#ffffff">
						<tbody>
							<tr>
							<tr class="hiddenMobile">
								<td height="60"></td>
							</tr>
							<tr class="visibleMobile">
								<td height="40"></td>
							</tr>
							<tr>
								<td>
									<table width="480" border="0" cellpadding="0" cellspacing="0"
										align="center" class="fullPadding">
										<tbody>
											<tr>
												<td>
													<table width="220" border="0" cellpadding="0"
														cellspacing="0" align="left" class="col">

														<tbody>
															<tr>
																<td
																	style="font-size: 11px; font-family: 'Open Sans', sans-serif; color: #5b5b5b; line-height: 1; vertical-align: top;">
																	<strong>예매 정보</strong>
																</td>
															</tr>
															<tr>
																<td width="100%" height="10"></td>
															</tr>
															<tr>
																<td
																	style="font-size: 12px; font-family: 'Open Sans', sans-serif; color: #5b5b5b; line-height: 20px; vertical-align: top;">
																	 ${dto.mvName}<br>${dto.scrName}점<br>${dto.resDate}<br>${dto.resTime}
																</td>
															</tr>
														</tbody>
													</table>


													<table width="220" border="0" cellpadding="0"
														cellspacing="0" align="right" class="col">
														<tbody>
															<tr class="visibleMobile">
																<td height="20"></td>
															</tr>
															<tr>
																<td
																	style="font-size: 11px; font-family: 'Open Sans', sans-serif; color: #5b5b5b; line-height: 1; vertical-align: top;">
																	<strong>결제 방식</strong>
																</td>
															</tr>
															<tr>
																<td width="100%" height="10"></td>
															</tr>
															<tr>
																<td
																	style="font-size: 12px; font-family: 'Open Sans', sans-serif; color: #5b5b5b; line-height: 20px; vertical-align: top;">
																	${pay.payment_method_type}<br>${pay.card_info.issuer_corp}<br>
																	승인 번호 : ${pay.card_info.approved_id}<br>
																</td>
															</tr>
														</tbody>
													</table>
												</td>
											</tr>
										</tbody>
									</table>
								</td>
							</tr>
							<tr>
								<td>
									<table width="480" border="0" cellpadding="0" cellspacing="0"
										align="center" class="fullPadding">
										<tbody>
											<!-- <tr>
												<td>
													<table width="220" border="0" cellpadding="0"
														cellspacing="0" align="left" class="col">
														<tbody>
															<tr class="hiddenMobile">
																<td height="35"></td>
															</tr>
															<tr class="visibleMobile">
																<td height="20"></td>
															</tr>
															<tr>
																<td
																	style="font-size: 11px; font-family: 'Open Sans', sans-serif; color: #5b5b5b; line-height: 1; vertical-align: top;">
																	<strong>판매자 정보</strong>
																</td>
															</tr>
															<tr>
																<td width="100%" height="10"></td>
															</tr>
															<tr>
																<td
																	style="font-size: 12px; font-family: 'Open Sans', sans-serif; color: #5b5b5b; line-height: 20px; vertical-align: top;">
																	CEO KimAmugae<br> corporate 
																	<br> 000-00-00000<br> Amumal <br>
																	111-11-11111
																</td>
															</tr>
														</tbody>
													</table>
													<table width="220" border="0" cellpadding="0"
														cellspacing="0" align="right" class="col">
														<tbody>
															<tr class="hiddenMobile">
																<td height="35"></td>
															</tr>
															<tr class="visibleMobile">
																<td height="20"></td>
															</tr>
															<tr>
																<td
																	style="font-size: 11px; font-family: 'Open Sans', sans-serif; color: #5b5b5b; line-height: 1; vertical-align: top;">
																	<strong>SNS</strong>
																</td>
															</tr>
															<tr>
																<td width="100%" height="10"></td>
															</tr>
															<tr>
																<td
																	style="font-size: 12px; font-family: 'Open Sans', sans-serif; color: #5b5b5b; line-height: 20px; vertical-align: top;">
																	FaceBook<br> https://www.facebook.com/CJCGV<br>Twitter<br> https://twitter.com/cj_cgv<br>Insta<br> https://www.instagram.com/cgv_korea</td>
															</tr>
														</tbody>
													</table>
												</td>
											</tr>
										</tbody>
									</table>
								</td>
							</tr> -->
							<tr class="hiddenMobile">
								<td height="60"></td>
							</tr>
							<tr class="visibleMobile">
								<td height="30"></td>
							</tr>
						</tbody>
					</table>
				</td>
			</tr>
		</tbody>
	</table>
	<!-- /Information -->
	<table width="100%" border="0" cellpadding="0" cellspacing="0"
		align="center" class="fullTable">

		<tr>
			<td>
				<table width="600" border="0" cellpadding="0" cellspacing="0"
					align="center" class="fullTable" bgcolor="#ffffff"
					style="border-radius: 0 0 10px 10px;">
					<tr>
						<td>
							<table width="480" border="0" cellpadding="0" cellspacing="0"
								align="center" class="fullPadding">
								<tbody>
									<tr>
										<td
											style="font-size: 12px; color: #5b5b5b; font-family: 'Open Sans', sans-serif; line-height: 18px; vertical-align: top; text-align: left;">
											영화 그 이상의 감동. KH CINEMA
											<div
												style="transform: rotate(-268deg); display: inline-block;margin-left: 5px;">
												;)</div>
										</td>
									</tr>
								</tbody>
							</table>
						</td>
					</tr>
					<tr class="spacer">
						<td height="50"></td>
					</tr>

				</table>
			</td>
		</tr>
		<tr>
			<td height="20"></td>
		</tr>
	</table>
	
	<script type="text/javascript">
		var bookCode = "${bookCode}".split(',');
		for ( var i in bookCode ) {
	       console.log(bookCode[i]);
	      }
	</script>
</body>
</html>
