package lv1.lv2.lv3.model.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lv1.lv2.lv3.common.util.Paging;
import lv1.lv2.lv3.model.MovieDAO;
import lv1.lv2.lv3.model.MovieDTO;
import lv1.lv2.lv3.model.vo.MovieVO;

@Service
public class MovieService {
	
	@Autowired
	private MovieDAO dao;
	
	public List<MovieDTO> getAll(HttpSession session){
		List<MovieDTO> datas = dao.selectAll();
		return datas;
	}
	
	@Transactional
	public Paging getPage(HttpSession session, int page, int limit) {
		int totalRows = dao.getTotalRows();
		
		Paging paging = new Paging(page, limit, totalRows);
		dao.selectPage(paging);
		return paging;
	}
	
	public MovieDTO getData(HttpSession session, int id) {
		MovieDTO data = dao.selectData(id);
		return data;
	}
	
	public int add(HttpSession session, MovieDTO moviedto, MovieVO data) {
		
		moviedto.setMv_num(moviedto.getMv_num());
		moviedto.setMv_title(moviedto.getMv_title());
		moviedto.setMv_openDate(moviedto.getMv_openDate());
		moviedto.setMv_director(moviedto.getMv_director());
		moviedto.setMv_actor(moviedto.getMv_actor());
		moviedto.setMv_genre(moviedto.getMv_genre());
		moviedto.setMv_playtime(moviedto.getMv_playtime());
		moviedto.setMv_story(moviedto.getMv_story());
		moviedto.setMv_point(moviedto.getMv_point());
		moviedto.setMv_intime(moviedto.getMv_intime());
		moviedto.setMv_poster(moviedto.getMv_poster());
		
		boolean result = dao.insertData(moviedto);
		
		if(result) {
			return moviedto.getMv_num();
		}
		return 0;
	}
	
	public boolean update(HttpSession session, MovieDTO data) {
		boolean result = dao.updateData(data);
		return result;
	}
	

	public boolean remove(HttpSession session, MovieDTO data) {
		boolean result = dao.deleteData(data);
		return result;
	}
}
