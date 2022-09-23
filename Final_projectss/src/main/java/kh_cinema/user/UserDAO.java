package kh_cinema.user;

import java.io.File;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.conn.db.DBConn;
import kh_cinema.user.UserVO;

/*
 * 회원 가입 처리를 위해 데이터베이스에 직접 엑세스
 * 하기 위한 객체로 활용
 */
public class UserDAO {
	private DBConn db;
	
	public UserDAO() {
		try {
			db = new DBConn(new File(System.getProperty("user.home") + "/oracle_db.conf"));
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	// 회원 가입 처리를 담당
	public boolean register(UserDAO data) {
		String query = "INSERT INTO accounts VALUES(?, ?, ?, ?, ?, SYSDATE)";
		try {
			PreparedStatement pstat = db.getPstat(query);
			
			pstat.setInt(1, data.getMem_uid());
			pstat.setString(2, data.getMem_id()); 
			pstat.setString(3, data.getMem_pw());
			pstat.setString(4, data.getMem_name()); 
			pstat.setString(5, data.getMem_birth());  
			pstat.setString(6, data.getMem_phone()); 
			pstat.setString(7, data.getMem_email()); 
			
			int rs = db.sendInsertQuery();
			if(rs == 1) {
				db.commit();
				return true;
			}
			db.rollback();
			return false;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	
	private String getMem_email() {
		// TODO Auto-generated method stub
		return null;
	}

	private String getMem_phone() {
		// TODO Auto-generated method stub
		return null;
	}

	private String getMem_birth() {
		// TODO Auto-generated method stub
		return null;
	}

	private String getMem_name() {
		// TODO Auto-generated method stub
		return null;
	}

	private String getMem_pw() {
		// TODO Auto-generated method stub
		return null;
	}

	private String getMem_id() {
		// TODO Auto-generated method stub
		return null;
	}

	private int getMem_uid() {
		// TODO Auto-generated method stub
		return 0;
	}
	
	public UserVO login(String mem_id, String mem_pw) {
		// TODO Auto-generated method stub
		return null;
	}
	
	public int signUpInsert(UserVO dto) {
		// TODO Auto-generated method stub
		return 0;
	}
	

	// 회원 정보 수정을 담당
	public boolean update(UserVO data) {
		String query = "UPDATE accounts"
				+ "        SET MEM_PW = ?"
				+ "          , MEM_NAME = ?"
				+ "          , MEM_PHONE = ?"
				+ "          , MEM_EMAIL = ?"
				+ "      WHERE MEM_ID = ?";
		try {
			PreparedStatement pstat = db.getPstat(query);
			pstat.setString(1, data.getMem_pw());
			pstat.setString(2, data.getMem_name());
			pstat.setString(3, data.getMem_phone());
			pstat.setString(4, data.getMem_email());
			pstat.setString(5, data.getMem_id());
			
			int rs = db.sendUpdateQuery();
			if(rs == 1) {
				db.commit();
				return true;
			}
			db.rollback();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	
	// 회원 정보 삭제를 담당
	public boolean remove(UserVO data) {
		String query = "DELETE FROM accounts WHERE MEM_ID = ?";
		try {
			PreparedStatement pstat = db.getPstat(query);
			pstat.setString(1, data.getMem_id());
			
			int rs = db.sendDeleteQuery();
			if(rs == 1) {
				db.commit();
				return true;
			}
			db.rollback();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	
	// mem_id 에 해당하는 회원 정보를 반환
	public UserVO get(String userid) {
		String query = "SELECT * FROM accounts WHERE MEM_ID = ?";
		try {
			PreparedStatement pstat = db.getPstat(query);
			pstat.setString(1, userid);
			
			ResultSet rs = db.sendSelectQuery();
			if(rs.next()) {
				UserVO data = new UserVO();
				data.setMem_uid(rs.getInt("mem_uid"));
				data.setMem_id(rs.getString("mem_id"));
				data.setMem_pw(rs.getString("mem_pw"));
				data.setMem_name(rs.getString("mem_name"));
				data.setMem_birth(rs.getString("mem_birth"));
				data.setMem_phone(rs.getString("mem_phone"));
				data.setMem_email(rs.getString("mem_email"));
				return data;
			}
			rs.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

}
