package lv1.lv2.lv3.model.vo;

public class NmovieVO {

	private int nmv_num;
	private String nmv_title;
	private String nmv_openDate;
	private String nmv_director;
	private String nmv_actor;
	private String nmv_genre;
	private String nmv_story;
	private String nmv_intime;
	private String nmv_poster;
	
	public int getNmv_num() {
		return nmv_num;
	}
	public void setNmv_num(int nmv_num) {
		this.nmv_num = nmv_num;
	}
	public String getNmv_title() {
		return nmv_title;
	}
	public void setNmv_title(String nmv_title) {
		this.nmv_title = nmv_title;
	}
	public String getNmv_openDate() {
		return nmv_openDate;
	}
	public void setNmv_openDate(String nmv_openDate) {
		this.nmv_openDate = nmv_openDate;
	}
	public String getNmv_director() {
		return nmv_director;
	}
	public void setNmv_director(String nmv_director) {
		this.nmv_director = nmv_director;
	}
	public String getNmv_actor() {
		return nmv_actor;
	}
	public void setNmv_actor(String nmv_actor) {
		this.nmv_actor = nmv_actor;
	}
	public String getNmv_genre() {
		return nmv_genre;
	}
	public void setNmv_genre(String nmv_genre) {
		this.nmv_genre = nmv_genre;
	}
	public String getNmv_story() {
		return nmv_story;
	}
	public void setNmv_story(String nmv_story) {
		this.nmv_story = nmv_story;
	}
	public String getNmv_intime() {
		return nmv_intime;
	}
	public void setNmv_intime(String nmv_intime) {
		this.nmv_intime = nmv_intime;
	}
	public String getNmv_poster() {
		return nmv_poster;
	}
	public void setNmv_poster(String nmv_poster) {
		this.nmv_poster = nmv_poster;
	}
	@Override
	public String toString() {
		return "NmovieVO [nmv_num=" + nmv_num + ", nmv_title=" + nmv_title + ", nmv_openDate=" + nmv_openDate
				+ ", nmv_director=" + nmv_director + ", nmv_actor=" + nmv_actor + ", nmv_genre=" + nmv_genre
				+ ", nmv_story=" + nmv_story + ", nmv_intime=" + nmv_intime + ", nmv_poster=" + nmv_poster + "]";
	}
	
	
}
