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
	public class NmovieDAO {
	
		@Autowired
		private SqlSession session;

		public List<NmovieDTO> selectAll() {
			List<NmovieDTO> result = session.selectList("nmovieMapper.selectAll");
			return result;
		}
		
		public NmovieDTO selectData(int id) {
			NmovieDTO result = session.selectOne("nmovieMapper.selectMovie", id);
			return result;
		}
		
		public int getTotalRows() {
			int result = session.selectOne("nmovieMapper.getTotalRows");
			return result;
		}
		
		public void selectPage(Paging paging) {
			RowBounds rb = new RowBounds(paging.getOffset(), paging.getLimit());
			Cursor<Object> cursor = session.selectCursor("nmovieMapper.selectPage", null, rb);
			paging.setPageDatas(cursor.iterator());
		}
		
		
		public boolean insertData(NmovieDTO data) {
			int result = 0;
			System.out.println(data);
			if(data.getNmv_num() == 0) {
				result = session.insert("nmovieMapper.insertMovieAutoSeq", data);
			} else {
				result = session.insert("nmovieMapper.insertMovie", data);
			}
			return result == 1 ? true : false;
		}
		
		public boolean updateData(NmovieDTO data) {
			int result = session.update("nmovieMapper.updateMovie", data);
			return result == 1 ? true : false;
		}
		
		public boolean deleteData(NmovieDTO data) {
			int result = session.delete("nmovieMapper.deleteMovie", data.getNmv_num());
			return result == 1 ? true : false;
		}

}