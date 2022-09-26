package kh_cinema.user;

import java.util.List;

import kh_cinema.user.AdminUserDAO;
import kh_cinema.user.AdminUserDTO;

public class AdminUserRead implements Command {

	@Override
	public void execute(Model model) {
		int mem_uid = (Integer)model.getAttribute("mem_uid");
		AdminUserDAO dao = (AdminUserDAO) Common.sqlSession.getMapper4(AdminUserDAO.class);
		AdminUserDTO dto = dao.memberRead(mem_uid);
		
		model.addAttribute("list", dto);
		
	}

}
