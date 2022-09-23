package kh_cinema.user;

import java.sql.Date;

public class UserVO {
	
	public int signUpInsert;
	private int mem_uid;  //  회원 고유번호 (1부터시작, 관리자만 0)
	private String mem_id; //  회원 아이디
	private String mem_pw; //  회원 비밀번호
	private String mem_name; //  회원 이름
	private String mem_birth; // 회원 생년월일
	private String mem_phone; // 회원 전화번호 
	private String mem_email; // 회원 이메일
	
	public int getMem_uid() {
		return mem_uid;
	}
	public void setMem_uid(int mem_uid) {
		this.mem_uid = mem_uid;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public String getMem_pw() {
		return mem_pw;
	}
	public void setMem_pw(String mem_pw) {
		this.mem_pw = mem_pw;
	}
	public String getMem_name() {
		return mem_name;
	}
	public void setMem_name(String mem_name) {
		this.mem_name = mem_name;
	}
	public String getMem_birth() {
		return mem_birth;
	}
	public void setMem_birth(String mem_birth) {
		this.mem_birth = mem_birth;
	}
	public String getMem_phone() {
		return mem_phone;
	}
	public void setMem_phone(String mem_phone) {
		this.mem_phone = mem_phone;
	}
	public String getMem_email() {
		return mem_email;
	}
	public void setMem_email(String mem_email) {
		this.mem_email = mem_email;
	}
	
	
}
