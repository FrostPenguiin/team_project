package lv1.lv2.lv3.reserve.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import lv1.lv2.lv3.movie.model.MovieDTO;
import lv1.lv2.lv3.reserve.vo.ScheduleVO;
import lv1.lv2.lv3.screen.model.ScreenDTO;

@Repository
public class ReserveDAO {

	@Autowired
	private SqlSession session;

	// 상영중인 영화목록
	public List<MovieDTO> selectReMvList() {
		List<MovieDTO> result = session.selectList("movieMapper.selectReMvList");
		return result;
	}
	
	// 영화 극장 선택 기능
	public List<ScreenDTO> selectScrList(int mvNum) {
		List<ScreenDTO> result = session.selectList("screenMapper.selectScrList", mvNum);
		return result;
	}

	// 날짜 선택
	public List<ScheduleDTO> selectsDate(ScheduleVO scheduleVo) {
		List<ScheduleDTO> result = session.selectList("scheduleMapper.selectsDate", scheduleVo);
		return result;
	}
	
	// 시간 선택
	public List<ScheduleDTO> selectsTime(ScheduleVO scheduleVo) {
		List<ScheduleDTO> result = session.selectList("scheduleMapper.selectsTime", scheduleVo);
		return result;
	}

	// resCode 의 최대값 구하기
	public String getMaxRecode() {
		String result = session.selectOne("reserveMapper.getMaxRecode");
		return result;
	}

	// 예매정보 insert
	public boolean getInsertReserve(ReserveDTO dto) {
		int result = 0;
		if(dto.getResCode() == null) {
			result = session.insert("reserveMapper.getInsertReserve", dto);
		} else {
			result = session.insert("reserveMapper.InsertReserveAutoSeq", dto);
		}
    	// result 결과가 1이면 추가가 될것 이므로 true 반환, 1이 아니면 문제가 생긴것이므로 false 반환
		System.out.println(result);
		return result == 1 ? true : false;
	}
	
}
