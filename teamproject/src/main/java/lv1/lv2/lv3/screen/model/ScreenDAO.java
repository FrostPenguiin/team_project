package lv1.lv2.lv3.screen.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ScreenDAO {

	@Autowired
	private SqlSession session;
	
	public List<ScreenDTO> selectScreen() {
		List<ScreenDTO> result = session.selectList("screenMapper.selectScreen");
		return result;
	}
	
	public ScreenDTO getselectScrinfo(int scrNum) {
		ScreenDTO result = session.selectOne("screenMapper.selectScrinfo");
		return result;
	}

	
}
