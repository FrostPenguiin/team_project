package lv1.lv2.lv3.movie.model;

public class MovieDTO {

	/*
	   CREATE TABLE movie(
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
	 */
	
	private int mvNum;
	private String mvTitle;
	private String mvOpendate;
	private String mvDirctor;
	private String mvActor;
	private String mvGerne;
	private String mvPlaytime;
	private String mvStory;
	private String mvPoint;
	private String mvIntime;
	
	public int getMvNum() {
		return mvNum;
	}
	
	public void setMvNum(int mvNum) {
		this.mvNum = mvNum;
	}
	
	public String getMvTitle() {
		return mvTitle;
	}
	
	public void setMvTitle(String mvTitle) {
		this.mvTitle = mvTitle;
	}
	
	public String getMvOpendate() {
		return mvOpendate;
	}
	
	public void setMvOpendate(String mvOpendate) {
		this.mvOpendate = mvOpendate;
	}
	
	public String getMvDirctor() {
		return mvDirctor;
	}
	
	public void setMvDirctor(String mvDirctor) {
		this.mvDirctor = mvDirctor;
	}
	
	public String getMvActor() {
		return mvActor;
	}
	
	public void setMvActor(String mvActor) {
		this.mvActor = mvActor;
	}
	
	public String getMvGerne() {
		return mvGerne;
	}
	
	public void setMvGerne(String mvGerne) {
		this.mvGerne = mvGerne;
	}
	
	public String getMvPlaytime() {
		return mvPlaytime;
	}
	
	public void setMvPlaytime(String mvPlaytime) {
		this.mvPlaytime = mvPlaytime;
	}
	
	public String getMvStory() {
		return mvStory;
	}
	
	public void setMvStory(String mvStory) {
		this.mvStory = mvStory;
	}
	
	public String getMvPoint() {
		return mvPoint;
	}
	
	public void setMvPoint(String mvPoint) {
		this.mvPoint = mvPoint;
	}
	
	public String getMvIntime() {
		return mvIntime;
	}
	
	public void setMvIntime(String mvIntime) {
		this.mvIntime = mvIntime;
	}

	@Override
	public String toString() {
		return "MovieDTO [mvNum=" + mvNum + ", mvTitle=" + mvTitle + ", mvOpendate=" + mvOpendate + ", mvDirctor="
				+ mvDirctor + ", mvActor=" + mvActor + ", mvGerne=" + mvGerne + ", mvPlaytime=" + mvPlaytime
				+ ", mvStory=" + mvStory + ", mvPoint=" + mvPoint + ", mvIntime=" + mvIntime + "]";
	}
	
}
