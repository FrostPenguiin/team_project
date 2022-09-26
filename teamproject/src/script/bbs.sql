CREATE TABLE BBS(
	  bbsID INT NOT NULL					-- 리뷰 번호
	, bbsTitle VARCHAR(50)					-- 영화 제목
	, userID VARCHAR(20)					-- 유저 ID
	, bbsDate DATE DEFAULT SYSDATE NOT NULL -- 작성일
	, bbsContent VARCHAR(2048)				-- 내용
	, bbsAvailable int						-- 삭제를 위한 변수
	, PRIMARY KEY (bbsID)
);