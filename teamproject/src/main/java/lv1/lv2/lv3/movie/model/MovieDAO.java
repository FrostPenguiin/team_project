package lv1.lv2.lv3.movie.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MovieDAO {

	@Autowired
	private SqlSession session;

	public List<MovieDTO> selectReserveMvList() {
		List<MovieDTO> result = session.selectList("movieMapper.selectReserveMvList");
		return result;
	}
}
