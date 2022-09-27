package lv1.lv2.lv3.reserve.model;

public class ScheduleDTO {

	/*
	-- SCHEDULES 테이블 / 형소리/
	-- 미리 INSERT 해둔 값 빼서 쓰는 방식으로 사용
	CREATE TABLE SCHEDULES (
		   SCHE_NUM NUMBER 							-- PK
		 , SCHE_SCRNUM NUMBER 						-- 상영관 고유번호 FK
		 , SCHE_MVNUM NUMBER 						-- 영화 고유번호 FK
		 , SCHE_DAY VARCHAR2(100)					-- 상영날짜
	 	 , SCHE_TIME VARCHAR2(100)					-- 상영시간
		 , RESERVED_SEATNUM VARCHAR2(100) 			-- 예약된 좌석
		 , CONSTRAINT SCHEDULES_SCHE_NUM_PK PRIMARY KEY (SCHE_NUM)
		 , CONSTRAINT SCHEDULES_SCHE_MVNUM_FK FOREIGN KEY (SCHE_MVNUM) REFERENCES MOVIE(MV_NUM)
		 , CONSTRAINT SCHEDULES_SCHE_SCRNUM_FK FOREIGN KEY (SCHE_SCRNUM) REFERENCES SCREEN(SCR_NUM)
	);
	 */
	
	private int sNum;
	private int sScrNum;
	private int sMvNum;
	private String sDay;
	private String sTime;
	private String sReservSeatNum;
	
	public int getsNum() {
		return sNum;
	}
	
	public void setsNum(int sNum) {
		this.sNum = sNum;
	}
	
	public int getsScrNum() {
		return sScrNum;
	}
	
	public void setsScrNum(int sScrNum) {
		this.sScrNum = sScrNum;
	}
	
	public int getsMvNum() {
		return sMvNum;
	}
	
	public void setsMvNum(int sMvNum) {
		this.sMvNum = sMvNum;
	}
	
	public String getsDay() {
		return sDay;
	}
	
	public void setsDay(String sDay) {
		this.sDay = sDay;
	}

	public String getsTime() {
		return sTime;
	}

	public void setsTime(String sTime) {
		this.sTime = sTime;
	}

	public String getsReservSeatNum() {
		return sReservSeatNum;
	}
	
	public void setsReservSeatNum(String sReservSeatNum) {
		this.sReservSeatNum = sReservSeatNum;
	}

	@Override
	public String toString() {
		return "ScheduleDTO [sNum=" + sNum + ", sScrNum=" + sScrNum + ", sMvNum=" + sMvNum + ", sDay=" + sDay
				+ ", sTime=" + sTime + ", sReservSeatNum=" + sReservSeatNum + "]";
	}

}
