package lv1.lv2.lv3.model;

import java.util.List;

import org.apache.ibatis.cursor.Cursor;
import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;



import lv1.lv2.lv3.common.util.Paging;
import lv1.lv2.lv3.model.controller.*;

@Repository
	public class MovieDAO {
	
		@Autowired
		private SqlSession session;

		public List<MovieDTO> selectAll() {
			List<MovieDTO> result = session.selectList("movieMapper.selectAll");
			return result;
		}
		
		public MovieDTO selectData(int id) {
			MovieDTO result = session.selectOne("movieMapper.selectMovie", id);
			return result;
		}
		
		public int getTotalRows() {
			int result = session.selectOne("movieMapper.getTotalRows");
			return result;
		}
		
		public void selectPage(Paging paging) {
			RowBounds rb = new RowBounds(paging.getOffset(), paging.getLimit());
			Cursor<Object> cursor = session.selectCursor("movieMapper.selectPage", null, rb);
			paging.setPageDatas(cursor.iterator());
		}
		
		
		public boolean insertData(MovieDTO data) {
			int result = 0;
			System.out.println(data);
			if(data.getMv_num() == 0) {
				result = session.insert("movieMapper.insertMovieAutoSeq", data);
			} else {
				result = session.insert("movieMapper.insertMovie", data);
			}
			return result == 1 ? true : false;
		}
		
		public boolean updateData(MovieDTO data) {
			int result = session.update("movieMapper.updateMovie", data);
			return result == 1 ? true : false;
		}
		
		public boolean deleteData(MovieDTO data) {
			int result = session.delete("movieMapper.deleteMovie", data.getMv_num());
			return result == 1 ? true : false;
		}

}
