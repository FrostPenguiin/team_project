package kh_cinema.user;

import java.util.List;

public interface AdminUserDAO {

	public List<AdminUserDTO> userList();
	public int userDelete(int mem_uid);
	public AdminUserDTO memberRead(int mem_uid);
	public int userUpdate(AdminUserDTO dto);
	
	public Object idCheck(Object mem_id);
	public Object phoneCheck(Object mem_phone);
	public Object emailCheck(Object mem_email);
	
	public int commentUpdate(int mem_uid, Object mem_id);
	public int reserveUpdate(int mem_uid, Object mem_id);
	
	public List<Integer> commentList();
	public List<Integer> reserveList();
}
