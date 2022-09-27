package lv1.lv2.lv3.reserve.model;

public class ReserveDTO {
	
	public ReserveDTO() {
		
	}
	
	/*
	   RES_NUM NUMBER DEFAULT 0 NOT NULL				-- 예매 고유번호(기본키)
	 , MV_NUM NUMBER NOT NULL							-- 예약한 영화 고유번호
	 , MV_NAME VARCHAR2(100) NOT NULL					-- 예매 영화제목
	 , SCR_NUM NUMBER NOT NULL							-- 예약 영화 상영관 고유번호
	 , SCR_NAME VARCHAR2(100) NOT NULL					-- 예매 상영관명
	 , RES_SCHEDAY VARCHAR2(100) NOT NULL				-- 예매 상영날짜
	 , RES_SCHETIME VARCHAR2(100)						-- 예매 상영시간
	 , RES_CNT NUMBER NOT NULL							-- 예약한 총 인원수
	 , RES_MEMID VARCHAR2(100) --NOT NULL				-- 예매한 관객 아이디
	 , RES_PAY NUMBER NOT NULL							-- 예매 결제금액
	 */
	
	private String resCode;
	private int mvNum;
	private String mvName;
	private int scrNum;
	private String scrName;
	private String resDate;
	private String resTime;
	private int resCnt;
	private String memId;
	private int pay;
	
	public String getResCode() {
		return resCode;
	}
	
	public void setResCode(String resCode) {
		this.resCode = resCode;
	}
	
	public int getMvNum() {
		return mvNum;
	}
	
	public void setMvNum(int mvNum) {
		this.mvNum = mvNum;
	}
	
	public String getMvName() {
		return mvName;
	}
	
	public void setMvName(String mvName) {
		this.mvName = mvName;
	}
	
	public int getScrNum() {
		return scrNum;
	}
	
	public void setScrNum(int scrNum) {
		this.scrNum = scrNum;
	}
	
	public String getScrName() {
		return scrName;
	}
	
	public void setScrName(String scrName) {
		this.scrName = scrName;
	}
	
	public String getResDate() {
		return resDate;
	}
	
	public void setResDate(String resDate) {
		this.resDate = resDate;
	}
	
	public String getResTime() {
		return resTime;
	}
	
	public void setResTime(String resTime) {
		this.resTime = resTime;
	}
	
	public int getResCnt() {
		return resCnt;
	}
	
	public void setResCnt(int resCnt) {
		this.resCnt = resCnt;
	}
	
	public String getMemId() {
		return memId;
	}
	
	public void setMemId(String memId) {
		this.memId = memId;
	}
	
	public int getPay() {
		return pay;
	}
	
	public void setPay(int pay) {
		this.pay = pay;
	}

	@Override
	public String toString() {
		return "ReservDTO [resCode=" + resCode + ", mvNum=" + mvNum + ", mvName=" + mvName + ", scrNum=" + scrNum
				+ ", scrName=" + scrName + ", resDate=" + resDate + ", resTime=" + resTime + ", resCnt="
				+ resCnt + ", memId=" + memId + ", pay=" + pay + "]";
	}
	
}
