<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
	<%@ include file="../module/tags.jsp" %>
	<meta charset="UTF-8">
	<title>KH 시네마</title>
	
	<link rel="stylesheet" type="text/css" href="/resources/css/reserve/reserve.css">
</head>

<body>
	<%@ include file="../module/header.jsp" %>
<script type="text/javascript">
/*
// 로그인 확인 
var loginId = '${sessionScope.mem_Id}';
if(mem_Id.length == 0) {
	alert("로그인 후에 이용가능합니다.");
	location.href=""; // 로그인 주소 입력
}
*/
</script>
	<div id="container">
		<h3 class="ticket-title">영화예매</h3>
			<div class="ticket-info-area">
				<ul class="ticket-info">
				<li>
					<span class="ticket-movie-poster">
					<img src="#"> <!-- 영화 포스터 경로 -->
					</span>
					<div class="ticket-movie">
						<div class="ticket-info-title">영화</div>
						<div id="viewSelMvname"></div>
					</div>
				</li>
				<li>
					<div class="ticket-info-title">관람일시</div>
					<div id="viewSelsDay"></div>
					<div id="viewsTime"></div>
				</li>
				<li>
					<!-- <div class="ticket-info-title">선택좌석</div> -->
					<div class="ticket-info-title">선택인원</div>
					<div class="seatInfo"><span>0</span>명</div>
				</li>
				<li>
					<div class="ticket-info-title">총 결제금액</div>
					<div class="ticket-price"><span>0</span>원</div>
				</li>
			</ul>
		</div>
		
		<!-- 예매본문 -->
		<div class="layout-content reserve-wrap">
			<div class="box-step">
				<dl class="mv-choice">
					<dt>
						<span class="round">STEP 1</span> 영화 선택
					</dt>
					<dd>	
						<ul class="choice-list mv-choice-list">
							<c:forEach items="${reMvList}" var="mvList">
								<li>
									<button id="${mvList.mvNum }" onclick="mySelect(this,'${mvList.mvNum}')">${mvList.mvTitle}</button>
								</li>
							</c:forEach>
						</ul>
					</dd>
				</dl>
				<dl class="cinema-choice">
					<dt>
						<span class="round">STEP 2</span> 영화관 선택
					</dt>
					<dd>
						<ul class="choice-list" id="scrList">
						
						</ul>
					</dd>
				</dl>
  				<dl class="date-choice">
					<dt>
						<span class="round">STEP 3</span> 관람일 선택
					</dt>
					<dd>
						<ul class="choice-list" id="sdateList">
						
						</ul>
					</dd>
				</dl>
				<dl class="time-choice">
					<dt>
						<span class="round">STEP 4</span> 관람시간 선택
					</dt>
					<dd>
						<ul class="choice-list" id="sTimeList">
							
						</ul>
					</dd>
				</dl>
				<dl class="seat-choice">
					<dt>  
						<!--<span class="round">STEP 5</span> 좌석 및 잔여석 확인-->
						<span class="round">STEP 5</span> 인원 선택
					</dt>
					<dd>
						<div class="seat-choice-content">
							<!-- 선택 시간에 관한 좌석 및 잔여석 --
							<div class="remain-seat">일반석 : <span id="remainSeatNum">${remainseats}</span>석</div>
								<!-- 몇좌석 남았는지 seat-v에 넣기 ajax로-->
								
								<!--  선택 전-->
								<div class="select-person-area">
									<label for="ticketCount" class="select-title">인원선택</label>
									<span>
										<select id="ticketCount" class="select-person" onchange="selectPeople(this.value)">
											<option value="" selected>--- 선택 ---</option>
											<option value="1">1</option>
											<option value="2">2</option>
											<option value="3">3</option>
											<option value="4">4</option>
											<option value="5">5</option>
											<option value="6">6</option>
											<option value="7">7</option>
											<option value="8">8</option>
											<option value="9">9</option>
											<option value="10">10</option>
										</select>
									</span>
								</div>
								<p class="select-caption">※최대 10명까지 선택가능 합니다.</p>
							</div>
						</dd>
					</dl>
				</div>
				<div class="screen">
					<span class="screen-title">SCREEN</span>
					<div class="seat-area">
						<span class="screen-stage">SCREEN</span>
						<ul class="all-seats">
						</ul>
					</div>
				</div>
				<div class="reserve-note">
					<div class="precautions"><strong>예매 시 주의사항</strong></div>
					<div class="precautions-content">
						<p>※ 예매시 주의 사항</p>
						<p>1. 홈페이지 예매 후 현장에서 결제수단을 변경 할 수 없습니다.</p>
						<p>2. 영화 날짜 및 시간 변경은 취소 후 다시 예매 진행을 하셔야 합니다.</p>
						<p>3. 부분 취소 환불은 불가능합니다.</p>
						<ul class="reserve-rule">
							<li>※예매 취소 및 환불 규정</li>
							<li>&nbsp; &nbsp;· 인터넷(모바일)예매 : 영화 상영 시간 20분 전까지 환불 가능.<br>
								&nbsp; &nbsp; &nbsp; &nbsp;(인터넷(모바일)예매 후 현장에서 결제수단변경을 원하실 경우 상영시간 20분전까지 직접 예매 취소 후 재결제 하셔야 합니다.)
							</li>
							<li>&nbsp; &nbsp;· 현장예매 : 영화상영시간 전까지 취소 및 환불 가능.</li>
						</ul>
					</div>
				</div>
			<div class="payment-area">
				<c:url value="/reserve" var="reserveUrl" />
				<form action="${reserveUrl}/movieReservation" id="frm" method="post">
					<button id="payment" class="join-submit join-button">결제</button>
				</form>
			</div>
		</div>
	</div>
		
  <script type="text/javascript" src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
  <script type="text/javascript" src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>

<script type="text/javascript">
var selRemvNum = "";	// 선택한 영화 코드
var selRemvName = "";	// 선택한 영화 이름
var selRescrNum = "";	// 선택한 극장 코드
var selRescrName = "";	// 선택한 극장 이름
var selResDay = "";		// 선택한 영화 날짜
var selResTime = "";	// 선택한 영화 시간

// 영화 목록 출력 및 극장 이름 출력
function mySelect(selObj, selmvNum){
	
	selRemvNum = selmvNum; // 영화코드를 다른곳에 사용해야하기 때문에 새로운 변수안에 선택한 영화코드를 넣는다.
	selRemvName = $(selObj).text(); 
	
	// 극장,영화 를 변경하면 확인 화면, 날짜 목록을 없어져야 사용자 입장에서 보기 편하기 때문에 명령어추가 
	/* 날짜 선택 내용 초기화 */
	$("#viewSelsDay").text( "" );
	/* 시간 내용 초기화 */
	$("#viewsTime").text( "" );
	/* 날짜 목록 초기화 */
	$("#sdateList").html("");
	/* 시간 목록 초기화 */
	$("#sTimeList").html("");
	
	/* 영화 목록 css 변경 */
	$(document).on('click', '.mv-choice-list>li>button', function () {
		$(".mv-choice-list>li>button").removeClass("active");
		$(this).addClass("active");
	});
	
	console.log("선택 영화 코드 : " + selmvNum);
	
	/* 극장 목록 조회 및 출력 */
	var output = "";
	
	$.ajax({
		
		type : "get",
		url : "reserve/getScrList",
		data : { "mvNum" : selmvNum },
		dataType : "json",
		async : false,
		success : function(scrList){
			
			for (var i = 0; i < scrList.length; i++ ){
				
				console.log(scrList[i].scrName);
				output += "<li><button onclick =\"scrSelect(this,'"+scrList[i].scrNum+"')\" >"+scrList[i].scrName+"</button></li>";
			}
		}
	});
				 		
	$("#scrList").html(output);
	
	console.log("선택 영화 제목 : " + $(selObj).text());
	
	/* 선택 내용 출력 */
	$("#viewSelMvname").text($(selObj).text());
}

/* 상영관 선택 후 */
function scrSelect(selObj,selscrNum){
	selRescrNum = selscrNum; 
	selRescrName = $(selObj).text(); 

	/* 선택 날짜 초기화 */
	$("#viewSelsDay").text( "" );
	/* 상영관 및 시간 내용 초기화 */
	$("#viewsTime").text( "" );
	/* 상영관 및 시간 목록 초기화 */
	$("#sTimeList").html("");
	
	/* 상영관 목록 css 변경 */
	$(document).on('click', '.cinema-choice .choice-list>li>button', function () {
		$(".cinema-choice .choice-list>li>button").removeClass("active");
		$(this).addClass("active");
	});
	
	console.log("선택한 상영관 코드 " + selscrNum);
	console.log("선택한 영화 코드 : " + selRemvNum);
	console.log("선택 상영관 이름 : " + $(selObj).text());
	
	/* 예매 가능한 날짜 목록 조회 및 출력 */		
	var output = "";
	
	$.ajax({
		type : "get",
		url : "reserve/getsDateList",
		data : { "mvNum" : selRemvNum , "scrNum" : selRescrNum },
		dataType : "json",
		async : false,
		success : function(sdateList){
			
			for(var i = 0; i < sdateList.length; i++){
				console.log(sdateList[i].sDay);
				output += "<li><button onclick =\"scSelect(this,'"+sdateList[i].sDay+"')\" >"+sdateList[i].sDay+"</button></li>";
			}
		}						
	});
	
	$("#sdateList").html(output);
	
}	

/* 예매 가능한 상영관 및 시간 목록 조회 및 출력 */
function scSelect(selObj,sDay){
	/* 예매 가능한 날짜 */
	selResDay = sDay;
	
	/* 상영관 및 시간 내용 초기화 */
	$(document).on('click', '.date-choice .choice-list>li>button', function () {
		$(".date-choice .choice-list>li>button").removeClass("active");
		$(this).addClass("active");
	});
	
	console.log("선택한 영화의 날짜 : " + selResDay);
	
	/* 예매 가능한 상영관 및 시간 목록 조회 및 출력 */
	var output = "";
	
	$.ajax({
		type : "get",
		url : "reserve/getTime",
		data : { "mvNum" : selRemvNum , "scrNum" : selRescrNum , "sDay" : sDay },
		dataType : "json",
		async : false,
		success : function(stimeList){
			console.log(stimeList);
			
			for(var i = 0; i < stimeList.length; i++){
				console.log(stimeList[i].sTime);
				output += "<li><button onclick =\"timeSelect(this,'"+stimeList[i].sTime+"')\" >"+stimeList[i].sTime+"</button></li>";
			}
		}						
	});
	
	$("#sTimeList").html(output);

	/* 선택 내용 출력 */
	$("#viewSelsDay").text($(selObj).text());
}

/* 시간 선택 */
function timeSelect(selObj,sTime){
	/* 예매 가능한 시간 */
	selResTime = sTime;
	
	//시간 선택
	$(document).on('click', '.time-choice .choice-list>li>button', function () {
		$(".time-choice .choice-list>li>button").removeClass("active");
		$(this).addClass("active");
	});
	
	/* 선택 내용 출력 */
	$("#viewsTime").text($(selObj).text());
}

 /* 인원 선택, 결제 출력 */
function selectPeople(){	
	/* 예매 가능한 날짜 */
	 var cnt = $('#ticketCount').val();
	
	selReCnt = cnt;
	selReAmount = cnt * 8000;
	
	console.log("인원" + selReCnt);
	console.log("금액" + selReAmount);
	
	 $('.seatInfo>span').text(selReCnt);
     $('.ticket-price>span').text(selReAmount);
     
}

$(document).on("click","#payment",function(){
	
	if(selRemvNum != "" && selRemvName != "" && selRescrNum != "" && selRescrName != "" 
			&& selResDay != "" && selResTime != "" && selReCnt != "" && selReAmount) {
		
		console.log("check");
		console.log(selRemvNum);
		console.log(selRemvName);
		console.log(selRescrNum);
		console.log(selRescrName);
		console.log(selResDay);
		console.log(selResTime);
		console.log(selReCnt);
		console.log(selReAmount);
		
		 //$("#frm").append('<input type="hidden" name="memId" value="'+${sessionScope.mem_id}+'">');
		 $("#frm").append('<input type="hidden" name="mvNum" value="'+selRemvNum+'">');
         $("#frm").append('<input type="hidden" name="mvName" value="'+selRemvName+'">');
         $("#frm").append('<input type="hidden" name="scrNum" value="'+selRescrNum+'">');
         $("#frm").append('<input type="hidden" name="scrName" value="'+selRescrName+'">');
         $("#frm").append('<input type="hidden" name="resDay" value="'+selResDay+'">');
         $("#frm").append('<input type="hidden" name="resTime" value="'+selResTime+'">');
         $("#frm").append('<input type="hidden" name="resCnt" value="'+selReCnt+'">');
         $("#frm").append('<input type="hidden" name="pay" value="'+selReAmount+'">');
       
         $("#frm").submit();
	} else {
		alert("영화를 바르게 선택해주세요");
	}
	
});
</script>
</body>
<footer>
	<%@ include file="../module/footer.jsp" %>
</footer>
</html>