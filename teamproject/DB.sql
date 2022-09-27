-- 하나의 DB 로 공동접속

-- 회원관리 / 문혜은
CREATE TABLE member_tb
(  mem_uid number DEFAULT 1 NOT NULL, -- 회원 고유번호 (1부터시작, 관리자만 0)
   mem_id varchar2(100) NOT NULL UNIQUE, -- 회원 아이디
   mem_pw varchar2(100) NOT NULL, -- 회원 비밀번호  
   mem_name varchar2(100) NOT NULL, -- 회원 이름   
   mem_birth varchar2(100) NOT NULL, -- 회원 생년월일  
   mem_phone varchar2(100) NOT NULL UNIQUE, -- 회원 전화번호  
   mem_email varchar2(100) NOT NULL UNIQUE, -- 회원 이메일
  PRIMARY KEY (mem_uid)
);

-- 영화 관리 / 유병욱
CREATE TABLE movie(
   -- 컬럼추가 (상영중인지/예정인지/종료인지 판별) => 별도의 테이블로 생성하여 FK 로 묶는게 좋다. 
   -- 영화 고유번호
   mv_num number DEFAULT 0 NOT NULL,
   -- 영화 제목
   mv_title varchar2(100) NOT NULL,
   --영화 개봉일
   mv_openDate varchar2(100) NOT NULL,
   --영화 감독
   mv_dirctor varchar2(100) NOT NULL,
   --영화 주연
   mv_actor varchar2(100) NOT NULL,
   --영화 장르
   mv_gerne varchar2(100) NOT NULL,
   --영화 상영시간
   mv_playtime varchar2(100) NOT NULL,
   --영화 줄거리
   mv_story varchar2(100) NOT NULL,
   --영화 전문가별점
   mv_point varchar2(50)
   -- 상영중: Y, 상영 종료: N, 상영예정: P
   mv_intime varchar2(1) DEFAULT('Y') CHECK(mv_intime IN ('Y', 'N', 'P'),
   PRIMARY KEY(mv_num)
);

-- 상영 예정 목록 관리 / 유병욱
CREATE TABLE n_movie(
   -- 영화 고유번호
   nmv_num number DEFAULT 0 NOT NULL,
   --영화 제목
   nmv_title varchar2(100) NOT NULL,
   --영화 개봉일예정일
   nmv_openDate varchar2(100) NOT NULL,
   --영화 감독
   nmv_dirctor varchar2(100) NOT NULL,
   --영화 주연
   nmv_actor varchar2(100) NOT NULL,
   --영화 장르
   nmv_gerne varchar2(100) NOT NULL,
   --영화 상영시간
   nmv_playtime varchar2(100) NOT NULL
   );

-- 리뷰 관리 TABLE / 강훈
CREATE TABLE tb_review
(
   -- 리뷰 번호
   rvt_num number DEFAULT 0 NOT NULL,
   -- 리뷰 평점
   rvt_star number NOT NULL,
   -- 리뷰 내용
   rvt_content text NOT NULL,
   -- 리뷰 등록 일자
   rvt_regDate DEFAULT sysdate, NOT NULL,
   -- 리뷰된 영화 고유번호
   rvt_movieNum number NOT NULL,
   -- 리뷰된 영화 제목
   rvt_movieName varchar2(100) NOT NULL,
   -- 리뷰어 고유ID
   rvt_memberUID number NOT NULL,
   -- 리뷰어 ID
   rvt_memberID varchar2(100) NOT NULL, 
   PRIMARY KEY (rvt_num)
);

-- 예매테이블 / 형소리
CREATE TABLE RESERVATION (
	   RES_NUM NUMBER PRIMARY KEY DEFAULT 0 NOT NULL	-- 예매 고유번호(기본키)
	 , MV_NUM NUMBER NOT NULL							-- 예약한 영화 고유번호
	 , MV_NAME VARCHAR2(100) NOT NULL					-- 예매 영화제목
	 , SCR_NUM NUMBER NOT NULL							-- 예약 영화 상영관 고유번호
	 , SCR_NAME VARCHAR2(100) NOT NULL					-- 예매 상영관명
	 , RES_DATE VARCHAR2(100) NOT NULL					-- 예매 상영날짜
	 , TIMEINFO_NUM NUMBER(4)							-- 예매 상영시간 고유번호
	 , RES_TOTALPEOPLE NUMBER NOT NULL					-- 예약한 총 인원수
	 , MEM_UID NUMBER NOT NULL							-- 예약자 고유번호
	 , RES_MEMID VARCHAR2(100) NOT NULL					-- 예매한 관객 아이디
	 , RES_PAYTIME DATE DEFAULT SYSDATE NOT NULL		-- 예매 결제한 시간
	 , RES_PAY NUMBER NOT NULL							-- 예매 결제금액
	 , RES_PAYCODE VARCHAR2(100) NOT NULL				-- 예매 결제번호
	 , CONSTRAINT RESERVATION_RES_NUM_PK PRIMARY KEY (RES_NUM)
	 , CONSTRAINT RESERVATION_MV_NUM_FK FOREIGN KEY (MV_NUM) REFERENCES MOVIE(MV_NUM)			-- MOVIE 테이블의 영화 고유번호 FK
	 , CONSTRAINT RESERVATION_SCR_NUM_FK FOREIGN KEY (SCR_NUM) REFERENCES SCREEN(SCR_NUM)		-- SCREEN 테이블의 상영관 고유번호 FK
	 , CONSTRAINT RESERVATION_MEM_UID_FK FOREIGN KEY (MEM_UID) REFERENCES member_tb(MEM_UID)		-- MEMBER 테이블의 예약자 고유번호 FK
	 , CONSTRAINT RESERVATION_TIMEINFO_NUM_FK FOREIGN KEY (TIMEINFO_NUM) REFERENCES TIMEINFO(TIMEINFO_NUM)		-- TIMEINFO 테이블의 상영시간 고유번호 FK
);

-- 상영관테이블 / 형소리/
CREATE TABLE SCREEN (
	   SCR_NUM NUMBER NOT NULL						-- 상영관 고유번호(PK)
	 , SCR_NAME VARCHAR2(100) NOT NULL				-- 상영관 이름
	 , SCR_ADDRESS VARCHAR2(300) NOT NULL			-- 상영관 주소
	 , SCR_TEL VARCHAR2(200) NOT NULL				-- 상영관 전화번호
	 --, SCR_IMAGE VARCHAR2(300) 
	 , CONSTRAINT SCREEN_SCR_NUM_PK PRIMARY KEY (SCR_NUM)
);

CREATE SEQUENCE SCREEN_SEQ NOCACHE;

INSERT INTO SCREEN
VALUES (0, 'KH 강남점', '서울특별시 강남구 테헤란로 14길 6 남도빌딩 2F, 3F, 4F, 5F, 6F', '1544-9970');
INSERT INTO SCREEN
VALUES (1, 'KH 종로지원', '서울특별시 중구 남대문로 120 대일빌딩 2F, 3F', '1544-9970');
INSERT INTO SCREEN
VALUES (2, 'KH 당산점', '서울특별시 영등포구 선유동2로 57 이레빌딩(구관) 19F, 20F ', '1544-9970');


SELECT * FROM SCREEN;
DROP TABLE SCREEN;

-- 좌석 테이블 / 형소리/
CREATE TABLE SEAT (
	   SEAT_NUM NUMBER(5)			-- 좌석 고유번호(PK)
	 , SCR_NUM NUMBER(5)			-- 상영관 고유번호(FK)
	 , SEAT_NAME VARCHAR2(20)		-- 좌석 이름 
	 , CONSTRAINT SEAT_SEAT_NUM_PK PRIMARY KEY (SEAT_NUM)
	 , CONSTRAINT SEAT_SCR_NUM_FK FOREIGN KEY (SCR_NUM) REFERENCES SCREEN(SCR_NUM)	
);

-- 상영시간정보 테이블 / 형소리/
-- 미리 INSERT 해둔 값 빼서 쓰는 방식으로 사용
CREATE TABLE TIMEINFO (
	   TIMEINFO_NUM NUMBER(4)					-- 시간정보 고유번호(PK)
	 , TIMEINFO_START VARCHAR2(200) NOT NULL	-- 상영시작 시간
	 , CONSTRAINT TIMEINFO_TIMEINFO_NUM_PK PRIMARY KEY (TIMEINFO_NUM)
);

SELECT * FROM TIMEINFO;

DROP TABLE TIMEINFO;

INSERT ALL
  INTO TIMEINFO VALUES (0800, '08:00')
  INTO TIMEINFO VALUES (1100, '11:00')
  INTO TIMEINFO VALUES (1400, '14:00')
  INTO TIMEINFO VALUES (1700, '17:00')
  INTO TIMEINFO VALUES (1800, '18:00')
  INTO TIMEINFO VALUES (2000, '20:00')
SELECT *
  FROM DUAL;
