package kh_cinema;

import kh_cinema.user.Common;
import kh_cinema.user.Controller;
import kh_cinema.user.Model;
import kh_cinema.user.RequestMapping;
import kh_cinema.user.SqlSession;
import kh_cinema.user.AdminUserDTO;
import kh_cinema.user.AdminUserDelete;
import kh_cinema.user.AdminUserList;
import kh_cinema.user.AdminUserRead;
import kh_cinema.user.AdminUserUpdate;

@Controller
@RequestMapping("/admin")
public class MemberAdminController {
	
	// MyBatis
	private SqlSession sqlSession2;
	
	
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession2 = sqlSession;
		Common.sqlSession = sqlSession;
	}

	@RequestMapping("/managerMemberList")
	public void managerMemberList(Model model) {
//		model.addAttribute("page", page);
		new AdminUserList().execute(model);
	}
	
	@RequestMapping("/updateUserData")
	public void updateUserData(Model model, int mem_uid) {
		model.addAttribute("mem_uid", mem_uid);
		new AdminUserRead().execute(model);
	}
	
	@RequestMapping("/updateUserDataOk")
	public void updateUserDataOk(Model model, AdminUserDTO dto) {
		model.addAttribute("dto", dto);
		new AdminUserUpdate().execute(model);
	}
	
	@RequestMapping("/deleteUserDataOk")
	public void deleteUserDataOk(Model model, int mem_uid) {
		model.addAttribute("mem_uid", mem_uid);
		new AdminUserDelete().execute(model);
	}

	
	
}