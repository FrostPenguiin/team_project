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

	public String getMaxRecode() {
		String result = session.selectOne("reserveMapper.getMaxRecode");
		return result;
	}

	public int getInsertReserve(ReserveDTO dto) {
		int result = session.insert("reserveMapper.getInsertReserve", dto);
		System.out.println("dao : " + result);
		return result;
	}
	
}
