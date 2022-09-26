package kh_cinema.user;

import java.util.List;

import kh_cinema.user.AdminUserDAO;
import kh_cinema.user.AdminUserDTO;

public class AdminUserList implements Command {
	
	@Override
	public void execute(Model model) {
		AdminUserDAO dao = (AdminUserDAO) Common.sqlSession.getMapper2(AdminUserDAO.class);
		List<AdminUserDTO> list = null;
		
		list = dao.userList();
		
		model.addAttribute("list", list);

		
		
//		model.addAttribute("totalPage", totalPage);
//		model.addAttribute("curPage", curPage);		
		
		
//		int curPage = 1;   // 현재 페이지 (디폴트 1 page)
//		int cnt = 0;   // 글 목록 전체의 개수
//
//		
//		// 페이징 관련 세팅 값들
//		int writePages = 4;    // 한 [페이징] 에 몇개의 '페이지'를 표현할 것인가?
//		int pageRows = 10;   // 한 '페이지'에 몇개의 글을 리스트 할것인가? 
//		int totalPage = 0; //총 몇 '페이지' 분량인가? 
		
//		curPage = (Integer)model.getAttribute("page");
//
//
//		cnt = dao.countAll();	//전체 글 갯수
//		
//		totalPage = (int)Math.ceil(cnt / (double)pageRows); //총 몇 페이지 분량인가?
//		int fromRow = (curPage - 1) * pageRows + 1;	// 몇번째 row 부터?
		
//		list = dao.userList(fromRow);
   }
}