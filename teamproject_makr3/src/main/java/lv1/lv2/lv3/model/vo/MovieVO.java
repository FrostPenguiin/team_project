package lv1.lv2.lv3.model.vo;

public class MovieVO {
	private int mv_num;
	private String mv_title;
	private String mv_openDate;
	private String mv_director;
	private String mv_actor;
	private String mv_genre;
	private String mv_playtime;
	private String mv_story;
	private String mv_point;
	private String mv_intime;
	private String mv_poster;
	
	public int getMv_num() {
		return mv_num;
	}
	public void setMv_num(int mv_num) {
		this.mv_num = mv_num;
	}
	public String getMv_title() {
		return mv_title;
	}
	public void setMv_title(String mv_title) {
		this.mv_title = mv_title;
	}
	public String getMv_openDate() {
		return mv_openDate;
	}
	public void setMv_openDate(String mv_openDate) {
		this.mv_openDate = mv_openDate;
	}
	public String getMv_director() {
		return mv_director;
	}
	public void setMv_director(String mv_director) {
		this.mv_director = mv_director;
	}
	public String getMv_actor() {
		return mv_actor;
	}
	public void setMv_actor(String mv_actor) {
		this.mv_actor = mv_actor;
	}
	public String getMv_genre() {
		return mv_genre;
	}
	public void setMv_genre(String mv_genre) {
		this.mv_genre = mv_genre;
	}
	public String getMv_playtime() {
		return mv_playtime;
	}
	public void setMv_playtime(String mv_playtime) {
		this.mv_playtime = mv_playtime;
	}
	public String getMv_story() {
		return mv_story;
	}
	public void setMv_story(String mv_story) {
		this.mv_story = mv_story;
	}
	public String getMv_point() {
		return mv_point;
	}
	public void setMv_point(String mv_point) {
		this.mv_point = mv_point;
	}
	public String getMv_intime() {
		return mv_intime;
	}
	public void setMv_intime(String mv_intime) {
		this.mv_intime = mv_intime;
	}
	public String getMv_poster() {
		return mv_poster;
	}
	public void setMv_poster(String mv_poster) {
		this.mv_poster = mv_poster;
	}
	@Override
	public String toString() {
		return "MovieVO [mv_num=" + mv_num + ", mv_title=" + mv_title + ", mv_openDate=" + mv_openDate
				+ ", mv_director=" + mv_director + ", mv_actor=" + mv_actor + ", mv_genre=" + mv_genre
				+ ", mv_playtime=" + mv_playtime + ", mv_story=" + mv_story + ", mv_point=" + mv_point + ", mv_intime="
				+ mv_intime + ", mv_poster=" + mv_poster + "]";
	}
	
}
