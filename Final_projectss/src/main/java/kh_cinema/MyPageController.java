package kh_cinema;


import kh_cinema.mypage.MyPageQuery;
import kh_cinema.user.RequestMapping;
import kh_cinema.user.SqlSession;


@kh_cinema.user.Controller
@kh_cinema.user.RequestMapping("/mypage")
public class MyPageController {
	
	
	// MyBatis
	private kh_cinema.user.SqlSession sqlSession;
	
	
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
		MyPageQuery.sqlSession2 = sqlSession;
	}
	
	
	@RequestMapping("/resManage")
	public void resManage() {}

	@RequestMapping("/userInfo")
	public void userInfo() {}
	
	
}
