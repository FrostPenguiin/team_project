package kh_cinema.mypage.beans;

import java.util.List;

import javax.websocket.server.PathParam;

@MapperScan
public interface IAjaxDAO {
   
	// 기존값 조회
	public List<UserInfoDTO> selectByNum(@PathParam("uid") int uid);
	
   	// 개인정보 수정
	public int updateOk(UserInfoDTO dto);
	
	// 회원탈퇴
	public int deleteByNum(String dto);
   
	// 회원탈퇴시 예약삭제
	public int deleteResByNum(String dto);
	
	// 회원탈퇴시 댓글삭제
	public int deleteCommByNum(String dto);

	public List<UserInfoDTO> selectByNum(String uid);

	public int updateOk(String dto);
}
