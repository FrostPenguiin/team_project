package lv1.lv2.lv3.reserve.vo;

public class ScheduleVO {

	private int sNum;
	private int scrNum;
	private int mvNum;
	private String sDay;
	private String sTime;
	private String sReservSeatNum;
	
	public int getsNum() {
		return sNum;
	}
	public void setsNum(int sNum) {
		this.sNum = sNum;
	}
	public int getScrNum() {
		return scrNum;
	}
	public void setScrNum(int scrNum) {
		this.scrNum = scrNum;
	}
	public int getMvNum() {
		return mvNum;
	}
	public void setMvNum(int mvNum) {
		this.mvNum = mvNum;
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
		return "ScheduleVO [sNum=" + sNum + ", scrNum=" + scrNum + ", mvNum=" + mvNum + ", sDay=" + sDay + ", sTime="
				+ sTime + ", sReservSeatNum=" + sReservSeatNum + "]";
	}

	
}