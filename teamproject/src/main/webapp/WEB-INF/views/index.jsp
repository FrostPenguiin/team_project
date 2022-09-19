<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
   
<!-- 메인페이지 -->

<!DOCTYPE html>
<html >
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="author" content="webstoryboy">
	
	<!-- jQuery library -->
	<c:url var="path" value="${pageContext.request.contextPath}"/>
	<script type="text/javascript" src="${path}/resources/js/jquery-3.6.0.js"></script>
	<script type="text/javascript" src="${path}/resources/js/jquery-3.6.0.min.js"></script>
	
	<!-- CSS -->
	<link href="${path}/resources/css/reset.css" rel="stylesheet" type="text/css">
	<link href="${path}/resources/css/index.css" rel="stylesheet" type="text/css">
	<link href="${path}/resources/css/swiper.css" rel="stylesheet" type="text/css">
    
    <!-- 파비콘 -->
    <link rel="shortcut icon" href="${path}/resources/icon/favicon.png">
    <link rel="apple-touch-icon-precomposed" href="${path}/resources/icon/favicon_72.png" />
    <link rel="apple-touch-icon-precomposed" sizes="96x96" href="${path}/resources/icon/favicon_96.png" />
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="${path}/resources/icon/favicon_144.png" />
    <link rel="apple-touch-icon-precomposed" sizes="192x192" href="${path}/resources/icon/favicon_192.png" />
    
    <!-- 웹 폰트 -->
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Gowun+Batang&family=Nanum+Gothic+Coding&display=swap" rel="stylesheet">
	
	<title>KH CINEMA</title>
</head>
<body>
    <header id="header">
        <%@ include file="./module/navigation.jsp" %>
    </header>
    
    <section id="banner">
        <div class="banner_menu">
            <h2 class="ir_so">배너 영역</h2>
            <div class="container">
                <div class="row">
                    <div class="bm_left">
                        <ul>
                            <li class="total"><a href="#">전체메뉴</a></li>
                        </ul>
                    </div>
                    <div class="bm_right">
                        <ul>
                            <li class="line"><a href="custom/faq.html">고객센터</a></li>
                            <li class="line"><a href="#">멤버쉽</a></li>
                            <li><a href="#">VIP</a></li>
                        </ul>
                        <ul>
                            <li class="white"><a href="#">상영시간표</a></li>
                            <li class="purple"><a href="#">빠른예매</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="slider">
           <div class="swiper-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide ss1">
                        <div class="container">
                            <div class="row">
                                <h3>공조2</h3>
                                <p>공조 이즈 백! 이번엔 삼각 공조다! </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide ss2">
                        <div class="container">
                            <div class="row">
                                <h3>알라딘</h3>
                                <p>2022년 09월, 재개봉! </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide ss3">
                        <div class="container">
                            <div class="row">
                                <h3>어벤져스 : 앤드게임</h3>
                                <p>역대 최단 기간 1000만 관객 돌파 기록 </p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="swiper-pagination"></div>
                <div class="swiper-button-prev"></div>
                <div class="swiper-button-next"></div>
            </div>
        </div>
    </section>
    <!-- //banner -->
    
    
    <section id="movie">
        <div class="container">
            <div class="row">
                <h2 class="ir_so">영화 예매</h2>
                <div class="movie">
                    <div class="movie_title">
                        <ul class="clearfix">
                            <li class="active"><a href="#">박스오피스</a></li>
                            <li><a href="#">최신개봉작</a></li>
                            <li><a href="#">상영예정작</a></li>
                        </ul>
                    </div>
                    <div class="movie_chart">
                        <div class="swiper-container2">
                           <div class="chart_cont1 swiper-wrapper">
                               <div class="swiper-slide">
                                   <div class="poster">
                                       <figure>
                                           <img src="${path}/resources/img/poster01.jpg" srcset="${path}/resources/img/poster01@2.jpg 2x" alt="공조2">
                                       </figure>
                                       <div class="rank"><strong>1</strong></div>
                                       <div class="mx">
                                           <span class="icon m ir_pm">MX</span>
                                           <span class="icon b ir_pm">Boutique</span>
                                       </div>
                                   </div>
                                   <div class="infor">
                                       <h3><span class="icon all ir_pm">15세 이상 관람</span> <strong>공조2</strong></h3>
                                       <div class="infor_btn">
                                           <a href="#">상세정보</a>
                                           <a href="#">예매하기</a>
                                       </div>
                                   </div>
                               </div>
                               <div class="swiper-slide">
                                   <div class="poster">
                                       <figure>
                                           <img src="${path}/resources/img/poster02.jpg" srcset="${path}/resources/img/poster02@2.jpg 2x" alt="알라딘">
                                       </figure>
                                       <div class="rank"><strong>2</strong></div>
                                       <div class="mx">
                                           <span class="icon m ir_pm">MX</span>
                                       </div>
                                   </div>
                                   <div class="infor">
                                       <h3><span class="icon a19 ir_pm">전체관람가</span> <strong>알라딘</strong></h3>
                                       <div class="infor_btn">
                                           <a href="#">상세정보</a>
                                           <a href="#">예매하기</a>
                                       </div>
                                   </div>
                               </div>
                               <div class="swiper-slide">
                                   <div class="poster">
                                       <figure>
                                           <img src="${path}/resources/img/poster03.jpg" srcset="${path}/resources/img/poster03@2.jpg 2x" alt="블랙폰">
                                       </figure>
                                       <div class="rank"><strong>3</strong></div>
                                       <div class="mx">
                                           <span class="icon m ir_pm">MX</span>
                                       </div>
                                   </div>
                                   <div class="infor">
                                       <h3><span class="icon a12 ir_pm">15세 이상 관람</span> <strong>블랙폰</strong></h3>
                                       <div class="infor_btn">
                                           <a href="#">상세정보</a>
                                           <a href="#">예매하기</a>
                                       </div>
                                   </div>
                               </div>
                               <div class="swiper-slide">
                                   <div class="poster">
                                       <figure>
                                           <img src="${path}/resources/img/poster04.jpg" srcset="${path}/resources/img/poster04@2.jpg 2x" alt="인생은 뷰티풀">
                                       </figure>
                                       <div class="rank"><strong>4</strong></div>
                                       <div class="mx">
                                           <span class="icon m ir_pm">MX</span>
                                       </div>
                                   </div>
                                   <div class="infor">
                                       <h3><span class="icon a15 ir_pm">전체관람가</span> <strong>인생은 뷰티풀</strong></h3>
                                       <div class="infor_btn">
                                           <a href="#">상세정보</a>
                                           <a href="#">예매하기</a>
                                       </div>
                                   </div>
                               </div>
                               <div class="swiper-slide">
                                   <div class="poster">
                                       <figure>
                                           <img src="${path}/resources/img/poster05.jpg" srcset="${path}/resources/img/poster05@2.jpg 2x" alt="탑건-매버릭">
                                       </figure>
                                       <div class="rank"><strong>5</strong></div>
                                       <div class="mx">
                                           <span class="icon m ir_pm">MX</span>
                                       </div>
                                   </div>
                                   <div class="infor">
                                       <h3><span class="icon a15 ir_pm">12세 이상 관람</span> <strong>탑건-매버릭</strong></h3>
                                       <div class="infor_btn">
                                           <a href="#">상세정보</a>
                                           <a href="#">예매하기</a>
                                       </div>
                                   </div>
                               </div>
                               <div class="swiper-slide">
                                   <div class="poster">
                                       <figure>
                                           <img src="${path}/resources/img/poster06.jpg" srcset="${path}/resources/img/poster06@2.jpg 2x" alt="헌트">
                                       </figure>
                                       <div class="rank"><strong>6</strong></div>
                                       <div class="mx">
                                           <span class="icon m ir_pm">MX</span>
                                       </div>
                                   </div>
                                   <div class="infor">
                                       <h3><span class="icon a15 ir_pm">15세 이상 관람</span> <strong>헌트</strong></h3>
                                       <div class="infor_btn">
                                           <a href="#">상세정보</a>
                                           <a href="#">예매하기</a>
                                       </div>
                                   </div>
                               </div>
                               <div class="swiper-slide">
                                   <div class="poster">
                                       <figure>
                                           <img src="${path}/resources/img/poster07.jpg" srcset="${path}/resources/img/poster07@2.jpg 2x" alt="육사오">
                                       </figure>
                                       <div class="rank"><strong>7</strong></div>
                                       <div class="mx">
                                           <span class="icon m ir_pm">MX</span>
                                       </div>
                                   </div>
                                   <div class="infor">
                                       <h3><span class="icon a15 ir_pm">12세 이상 관람</span> <strong>육사오</strong></h3>
                                       <div class="infor_btn">
                                           <a href="#">상세정보</a>
                                           <a href="#">예매하기</a>
                                       </div>
                                   </div>
                               </div>
                               <div class="swiper-slide">
                                   <div class="poster">
                                       <figure>
                                           <img src="${path}/resources/img/poster08.jpg" srcset="${path}/resources/img/poster08@2.jpg 2x" alt="시맨틱에러-더무비">
                                       </figure>
                                       <div class="rank"><strong>8</strong></div>
                                       <div class="mx">
                                           <span class="icon m ir_pm">MX</span>
                                       </div>
                                   </div>
                                   <div class="infor">
                                       <h3><span class="icon a15 ir_pm">12세 이상 관람</span> <strong>시맨틱에러-더무비</strong></h3>
                                       <div class="infor_btn">
                                           <a href="#">상세정보</a>
                                           <a href="#">예매하기</a>
                                       </div>
                                   </div>
                               </div>
                           </div>
                        </div>
                        
                        <!-- 최신개봉작 스와이프 -->
                        <div class="swiper-container2">
                            <div class="chart_cont2 swiper-wrapper">
                                <div class="swiper-slide">
                                    <div class="poster">
                                        <figure>
                                            <img src="${path}/resources/img/poster07.jpg" srcset="${path}/resources/img/poster07@2.jpg 2x" alt="영화제목입력">
                                        </figure>
                                        <div class="rank"><strong>1</strong></div>
                                        <div class="mx">
                                            <span class="icon m ir_pm">MX</span>
                                            <span class="icon b ir_pm">Boutique</span>
                                        </div>
                                    </div>
                                    <div class="infor">
                                        <h3><span class="icon all ir_pm">전체관람가</span> <strong>영화제목입력</strong></h3>
                                        <div class="infor_btn">
                                            <a href="#">상세정보</a>
                                            <a href="#">예매하기</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="swiper-slide">
                                    <div class="poster">
                                        <figure>
                                            <img src="${path}/resources/img/poster08.jpg" srcset="${path}/resources/img/poster08@2.jpg 2x" alt="영화제목입력">
                                        </figure>
                                        <div class="rank"><strong>2</strong></div>
                                        <div class="mx">
                                            <span class="icon m ir_pm">MX</span>
                                        </div>
                                    </div>
                                    <div class="infor">
                                        <h3><span class="icon a19 ir_pm">19세 이상 관람</span> <strong>영화제목입력</strong></h3>
                                        <div class="infor_btn">
                                            <a href="#">상세정보</a>
                                            <a href="#">예매하기</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="swiper-slide">
                                    <div class="poster">
                                        <figure>
                                            <img src="${path}/resources/img/poster07.jpg" srcset="${path}/resources/img/poster07@2.jpg 2x" alt="영화제목입력">
                                        </figure>
                                        <div class="rank"><strong>3</strong></div>
                                        <div class="mx">
                                            <span class="icon m ir_pm">MX</span>
                                        </div>
                                    </div>
                                    <div class="infor">
                                        <h3><span class="icon a12 ir_pm">12세 이상 관람</span> <strong>영화제목입력</strong></h3>
                                        <div class="infor_btn">
                                            <a href="#">상세정보</a>
                                            <a href="#">예매하기</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="swiper-slide">
                                    <div class="poster">
                                        <figure>
                                            <img src="${path}/resources/img/poster08.jpg" srcset="${path}/resources/img/poster08@2.jpg 2x" alt="영화제목입력">
                                        </figure>
                                        <div class="rank"><strong>4</strong></div>
                                        <div class="mx">
                                            <span class="icon m ir_pm">MX</span>
                                        </div>
                                    </div>
                                    <div class="infor">
                                        <h3><span class="icon a15 ir_pm">15세 이상 관람</span> <strong>영화제목입력</strong></h3>
                                        <div class="infor_btn">
                                            <a href="#">상세정보</a>
                                            <a href="#">예매하기</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="swiper-slide">
                                    <div class="poster">
                                        <figure>
                                            <img src="${path}/resources/img/poster08.jpg" srcset="${path}/resources/img/poster08@2.jpg 2x" alt="영화제목입력">
                                        </figure>
                                        <div class="rank"><strong>4</strong></div>
                                        <div class="mx">
                                            <span class="icon m ir_pm">MX</span>
                                        </div>
                                    </div>
                                    <div class="infor">
                                        <h3><span class="icon a15 ir_pm">15세 이상 관람</span> <strong>영화제목입력</strong></h3>
                                        <div class="infor_btn">
                                            <a href="#">상세정보</a>
                                            <a href="#">예매하기</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="swiper-slide">
                                    <div class="poster">
                                        <figure>
                                            <img src="${path}/resources/img/poster08.jpg" srcset="${path}/resources/img/poster08@2.jpg 2x" alt="영화제목입력">
                                        </figure>
                                        <div class="rank"><strong>4</strong></div>
                                        <div class="mx">
                                            <span class="icon m ir_pm">MX</span>
                                        </div>
                                    </div>
                                    <div class="infor">
                                        <h3><span class="icon a15 ir_pm">15세 이상 관람</span> <strong>영화제목입력</strong></h3>
                                        <div class="infor_btn">
                                            <a href="#">상세정보</a>
                                            <a href="#">예매하기</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- //chart_cont2-->
                        
                        <div class="swiper-container2">
                            <div class="chart_cont3 swiper-wrapper">
                                <div class="swiper-slide">
                                    <div class="poster">
                                        <figure>
                                            <img src="${path}/resources/img/poster09.jpg" srcset="${path}/resources/img/poster09@2.jpg 2x" alt="영화제목입력">
                                        </figure>
                                        <div class="rank"><strong>1</strong></div>
                                        <div class="mx">
                                            <span class="icon m ir_pm">MX</span>
                                            <span class="icon b ir_pm">Boutique</span>
                                        </div>
                                    </div>
                                    <div class="infor">
                                        <h3><span class="icon all ir_pm">전체관람가</span> <strong>영화제목입력</strong></h3>
                                        <div class="infor_btn">
                                            <a href="#">상세정보</a>
                                            <a href="#">예매하기</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="swiper-slide">
                                    <div class="poster">
                                        <figure>
                                            <img src="${path}/resources/img/poster01.jpg" srcset="${path}/resources/img/poster01@2.jpg 2x" alt="영화제목입력">
                                        </figure>
                                        <div class="rank"><strong>2</strong></div>
                                        <div class="mx">
                                            <span class="icon m ir_pm">MX</span>
                                        </div>
                                    </div>
                                    <div class="infor">
                                        <h3><span class="icon a12 ir_pm">19세 이상 관람</span> <strong>영화제목입력</strong></h3>
                                        <div class="infor_btn">
                                            <a href="#">상세정보</a>
                                            <a href="#">예매하기</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="swiper-slide">
                                    <div class="poster">
                                        <figure>
                                            <img src="${path}/resources/img/poster02.jpg" srcset="${path}/resources/img/poster02@2.jpg 2x" alt="영화제목입력">
                                        </figure>
                                        <div class="rank"><strong>3</strong></div>
                                        <div class="mx">
                                            <span class="icon m ir_pm">MX</span>
                                        </div>
                                    </div>
                                    <div class="infor">
                                        <h3><span class="icon a12 ir_pm">12세 이상 관람</span> <strong>영화제목입력</strong></h3>
                                        <div class="infor_btn">
                                            <a href="#">상세정보</a>
                                            <a href="#">예매하기</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="swiper-slide">
                                    <div class="poster">
                                        <figure>
                                            <img src="${path}/resources/img/poster03.jpg" srcset="${path}/resources/img/poster03@2.jpg 2x" alt="영화제목입력">
                                        </figure>
                                        <div class="rank"><strong>4</strong></div>
                                        <div class="mx">
                                            <span class="icon m ir_pm">MX</span>
                                        </div>
                                    </div>
                                    <div class="infor">
                                        <h3><span class="icon a19 ir_pm">15세 이상 관람</span> <strong>영화제목입력</strong></h3>
                                        <div class="infor_btn">
                                            <a href="#">상세정보</a>
                                            <a href="#">예매하기</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="swiper-slide">
                                    <div class="poster">
                                        <figure>
                                            <img src="${path}/resources/img/poster03.jpg" srcset="${path}/resources/img/poster03@2.jpg 2x" alt="영화제목입력">
                                        </figure>
                                        <div class="rank"><strong>4</strong></div>
                                        <div class="mx">
                                            <span class="icon m ir_pm">MX</span>
                                        </div>
                                    </div>
                                    <div class="infor">
                                        <h3><span class="icon a19 ir_pm">15세 이상 관람</span> <strong>영화제목입력</strong></h3>
                                        <div class="infor_btn">
                                            <a href="#">상세정보</a>
                                            <a href="#">예매하기</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="swiper-slide">
                                    <div class="poster">
                                        <figure>
                                            <img src="${path}/resources/img/poster03.jpg" srcset="${path}/resources/img/poster03@2.jpg 2x" alt="영화제목입력">
                                        </figure>
                                        <div class="rank"><strong>4</strong></div>
                                        <div class="mx">
                                            <span class="icon m ir_pm">MX</span>
                                        </div>
                                    </div>
                                    <div class="infor">
                                        <h3><span class="icon a19 ir_pm">15세 이상 관람</span> <strong>영화제목입력</strong></h3>
                                        <div class="infor_btn">
                                            <a href="#">상세정보</a>
                                            <a href="#">예매하기</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- //chart_cont3-->
                    </div>
                </div>
            </div>
        </div>
    </section>
	 <!-- //movie -->
    
    
    <section id="event">
        <div class="container">
            <div class="row">
                <div class="event">
                    <h2><em>새로운 이벤트</em></h2>
                    <div class="event_left">
                        <div class="event_slider">
                            <img src="${path}/resources/img/event01.jpg" alt="A good movie 시사회">
                        </div>
                        <figure class="event_box1">
                            <img src="${path}/resources/img/event02.jpg" alt="안심 영화관 만들기">
                        </figure>
                        <figure class="event_box2">
                            <img src="${path}/resources/img/event03.jpg" alt="군 장병 온라인 할인 오픈">
                        </figure>
                    </div>
                    <figure class="event_right">
                        <img src="${path}/resources/img/event04.jpg" alt="사표 대신 영화표">
                    </figure>
                </div>
            </div>
        </div>
    </section>
    <!-- //event -->
    
     <footer id="footer">
        <div id="footer_sns">
            <div class="container">
                <div class="footer_sns">
                    <ul>
                        <li class="icon s1"><a href="#"><span class="ir_pm">트위터</span></a></li>
                        <li class="icon s2"><a href="#"><span class="ir_pm">페이스북</span></a></li>
                        <li class="icon s3"><a href="#"><span class="ir_pm">인스타그램</span></a></li>
                        <li class="icon s4"><a href="#"><span class="ir_pm">구글 플레이</span></a></li>
                        <li class="icon s5"><a href="#"><span class="ir_pm">아이폰 앱스토어</span></a></li>
                    </ul>    
                    <div class="tel">
                        <a href="#">ARS <em>1544-9970</em></a>
                    </div>
                </div>
            </div>
        </div>
        <div id="footer_infor">
            <div class="container">
                <div class="row">
                    <div class="footer_infor">
                        <h2><img src="${path}/resources/img/logo_footer.png" alt="megabox"></h2>
                        <ul>
                            <li><a href="#">회사소개</a></li>
                            <li><a href="#">채용정보</a></li>
                            <li><a href="#">제휴/광고/부대사업 문의</a></li>
                            <li><a href="#">이용약관</a></li>
                            <li><a href="#">개인정보처리방침</a></li>
                            <li><a href="#">고객센터</a></li>
                            <li><a href="#">윤리경영</a></li>
                        </ul>
                        <address>
                            <p>서울특별시 강남구 테헤란로 14길 6 남도빌딩 2F, 3F, 4F, 5F, 6F<br><span class="bar2">4조</span> 유병욱, 형소리, 문혜은, 강훈<br><span class="bar2">프로젝트명</span> 영화 예매 프로젝트</p>
                            <p>Copyright 2022 by KH CINEMA Inc. All right reserved</p>
                        </address>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- //footer -->

	<!-- 자바스크립트 라이브러리 -->
    <script src="${path}/resources/js/modernizr-custom.js"></script>
    <script src="${path}/resources/js/ie-checker.js"></script>
    <script src="${path}/resources/js/swiper.min.js"></script>
    <script>
        //배너 이미지 슬라이드
        var swiper = new Swiper('.swiper-container',{
            pagination: {
                el: '.swiper-pagination',
            },
            navigation: {
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev',
            },
            autoplay: {
                delay: 5000,
            },
        });
        
        //영화차트 이미지 슬라이드
        var swiper = new Swiper('.swiper-container2',{
            slidesPerView: 4,
            spaceBetween: 24,
            mousewheel: {
                invert: true,
            },
            keyboard: {
                enabled: true,
                onlyInViewport: false,
            },
            autoplay: {
                delay: 6000,
            },
            breakpoints: {
                600: {
                    slidesPerView: 1.4,
                    spaceBetween: 24
                },
                768: {
                    slidesPerView: 2,
                    spaceBetween: 24
                },
                960: {
                    slidesPerView: 3,
                    spaceBetween: 24
                }
            }
        });
        
        //영화차트 탭 메뉴
        var movBtn = $(".movie_title > ul > li");    
        var movCont = $(".movie_chart > div");  

        movCont.hide().eq(0).show();

        movBtn.click(function(e){
            e.preventDefault();
            var target = $(this);         
            var index = target.index();  
            movBtn.removeClass("active");   
            target.addClass("active");    
            movCont.css("display","none");
            movCont.eq(index).css("display","block");
        });
    </script>
</body>
</html>