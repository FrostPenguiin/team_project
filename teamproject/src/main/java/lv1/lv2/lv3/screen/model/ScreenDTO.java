package lv1.lv2.lv3.screen.model;

public class ScreenDTO {
	
	public ScreenDTO() {
		
	}
	
	public ScreenDTO(int scrNum) {
		this.scrNum = scrNum;
	}
	
	/*
	CREATE TABLE SCREEN (
	   SCR_NUM NUMBER NOT NULL						-- 상영관 고유번호(PK)
	 , SCR_NAME VARCHAR2(100) NOT NULL				-- 상영관 이름
	 , SCR_LOC VARCHAR2(100) NOT NULL				-- 상영관 지역(EX> 서울, 경기 ...)
	 , SCR_ADDRESS VARCHAR2(300) NOT NULL			-- 상영관 주소
	 , SCR_TEL VARCHAR2(200) NOT NULL				-- 상영관 전화번호
	 --, SCR_IMAGE VARCHAR2(300) 
	 , CONSTRAINT SCREEN_SCR_NUM_PK PRIMARY KEY (SCR_NUM)
);
	*/
	
	private int scrNum;			// 상영관 고유번호
	private String scrName;		// 상영관 이름
	private String scrLoc;		// 상영관 지역
	private String scrAddress;	// 상영관 주소
	private String scrTel;		// 상영관 전화번호
	
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
	
	public String getScrLoc() {
		return scrLoc;
	}

	public void setScrLoc(String scrLoc) {
		this.scrLoc = scrLoc;
	}

	public String getScrAddress() {
		return scrAddress;
	}

	public void setScrAddress(String scrAddress) {
		this.scrAddress = scrAddress;
	}

	public String getScrTel() {
		return scrTel;
	}

	public void setScrTel(String scrTel) {
		this.scrTel = scrTel;
	}

	@Override
	public String toString() {
		return "ScreenDTO [scrNum=" + scrNum + ", scrName=" + scrName + ", scrLoc=" + scrLoc + ", scrAddress="
				+ scrAddress + ", scrTel=" + scrTel + "]";
	}
}