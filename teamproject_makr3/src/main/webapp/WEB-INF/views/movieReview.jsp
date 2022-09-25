<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${path }/resources/CSS/movieReviewCSS/style.css">
<title>Insert title here</title>
</head>
<body>
    <div class="mvr_wrap">
        <div class="mrv_array_wrap">
            <a href="new.html" class="new">최신순</a> 
            <a href="many.html" class="many">평점순</a>
        </div>
        <div class="mvr_list_wrap">
            <div class="box4">
                <div class="member_img"></div>
                <div class="writer"><b>1234</b></div>
                <div class="option"><a href="modal.html" class="modal">⠇</a></div>
                <div class="text">재밌어요</div>
                <div class="date">2022.8.26</div>
                <div class="staring">★ ★ ★ ★ ★</div>
            </div>
            <div class="box3">
                <div class="member_img"></div>
                <div class="writer"><b>5678</b></div>
                <div class="option"><a href="modal.html" class="modal">⠇</a></div>
                <div class="text">노잼</div>
                <div class="date">2022.8.25</div>
                <div class="staring">★ ★ ☆ ☆ ☆</div>
            </div>
            <div class="box2">
                <div class="member_img"></div>
                <div class="writer"><b>ㄱㄴㄷㄹ</b></div>
                <div class="option"><a href="modal.html" class="modal">⠇</a></div>
                <div class="text">스레기</div>
                <div class="date">2022.8.24</div>
                <div class="staring">★ ☆ ☆ ☆ ☆</div>
            </div>
            <div class="box1">
                <div class="member_img"></div>
                <div class="writer"><b>abcd</b></div>
                <div class="option"><a href="modal.html" class="modal">⠇</a></div>
                <div class="text">굿</div>
                <div class="date">2022.8.23</div>
                <div class="staring">★ ★ ★ ★ ☆</div>
            </div>
                <div class="box0">
                <div class="member_img"></div>
                <div class="writer"><b>고객이름</b></div>
                <div class="option"><a href="modal.html" class="modal">⠇</a></div>
                <div class="text"><textarea class="mvr_textarea" name= "review" rows= "2" cols= "35">내용을 입력해주세요.</textarea></div>
                <div class="date">sysdate</div>
                <div class="staring">
                    <form name="myform" id="myform" method="post" action="./save">
                        <fieldset>
                            <input type="radio" name="rating" value="5" id="rate1"><label for="rate1">★</label>
                            <input type="radio" name="rating" value="4" id="rate2"><label for="rate2">★</label>
                            <input type="radio" name="rating" value="3" id="rate3"><label for="rate3">★</label>
                            <input type="radio" name="rating" value="2" id="rate4"><label for="rate4">★</label>
                            <input type="radio" name="rating" value="1" id="rate5"><label for="rate5">★</label>
                        </fieldset>
                    </form>
                </div>
                <div><a href="write.html" class="mvr_write">리뷰작성</a></div>
            </div>
        </div>
        <div class="mvr_page">
            <a href="#" class="bt_first">&lt;&lt;</a>
            <a href="#" class="bt_prev">&lt;</a>
            <a href="#" class="num_on">1</a>
            <a href="#" class="num">2</a>
            <a href="#" class="num">3</a>
            <a href="#" class="num">4</a>
            <a href="#" class="num">5</a>
            <a href="#" class="bt_next">&gt;</a>
            <a href="#" class="bt_last">&gt;&gt;</a>
        </div>
    </div>
</body>
</html>