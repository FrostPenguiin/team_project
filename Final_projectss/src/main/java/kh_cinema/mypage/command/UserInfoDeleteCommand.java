package kh_cinema.mypage.command;

import kh_cinema.user.*;

import kh_cinema.mypage.MyPageQuery;
import kh_cinema.mypage.beans.IAjaxDAO;
import kh_cinema.mypage.beans.UserInfoDTO;


public class UserInfoDeleteCommand implements UserInfoCommand {

	@Override
	public void execute(Model model) {
		IAjaxDAO dao = (MyPageQuery.sqlSession2).getMapper5(IAjaxDAO.class);
		
		String dto = (String)model.getAttribute("dto");
	
		StringBuffer message = new StringBuffer();
		String status = "FAIL";
		
		int cnt = 0;
		int cnt2 = 0;
		int cnt3 = 0;
		try {		
			cnt = dao.deleteByNum(dto);
			cnt2 = dao.deleteResByNum(dto);
			cnt3 = dao.deleteCommByNum(dto);
			status = "OK";
			
			// cnt 가 0 이면 Arithmetic 에러 catch
			int chkResult = 1 / cnt;
		} catch(Exception e) {
			e.printStackTrace();
			message.append("[에러: " + e.getMessage() + "]");
		}
		
		model.addAttribute("status", status);
		model.addAttribute("message", message.toString());
		model.addAttribute("result", cnt);
		
	}

}