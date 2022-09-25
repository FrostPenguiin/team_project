package lv1.lv2.lv3.model.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lv1.lv2.lv3.common.util.Paging;
import lv1.lv2.lv3.model.NmovieDAO;
import lv1.lv2.lv3.model.NmovieDTO;
import lv1.lv2.lv3.model.vo.NmovieVO;

@Service
public class NmovieService {
	
	@Autowired
	private NmovieDAO dao;
	
	public List<NmovieDTO> getAll(HttpSession session){
		List<NmovieDTO> datas = dao.selectAll();
		return datas;
	}
	
	@Transactional
	public Paging getPage(HttpSession session, int page, int limit) {
		int totalRows = dao.getTotalRows();
		
		Paging paging = new Paging(page, limit, totalRows);
		dao.selectPage(paging);
		return paging;
	}
	
	public NmovieDTO getData(HttpSession session, int id) {
		NmovieDTO data = dao.selectData(id);
		return data;
	}
	
	public int add(HttpSession session, NmovieDTO nmoviedto, NmovieVO data) {
		
		nmoviedto.setNmv_num(nmoviedto.getNmv_num());
		nmoviedto.setNmv_title(nmoviedto.getNmv_title());
		nmoviedto.setNmv_openDate(nmoviedto.getNmv_openDate());
		nmoviedto.setNmv_director(nmoviedto.getNmv_director());
		nmoviedto.setNmv_actor(nmoviedto.getNmv_actor());
		nmoviedto.setNmv_genre(nmoviedto.getNmv_genre());
		nmoviedto.setNmv_story(nmoviedto.getNmv_story());
		nmoviedto.setNmv_poster(nmoviedto.getNmv_poster());
		nmoviedto.setNmv_intime(nmoviedto.getNmv_intime());
		
		
		boolean result = dao.insertData(nmoviedto);
		
		if(result) {
			return nmoviedto.getNmv_num();
		}
		return 0;
	}
	
	public boolean update(HttpSession session, NmovieDTO data) {
		boolean result = dao.updateData(data);
		return result;
	}
	

	public boolean remove(HttpSession session, NmovieDTO data) {
		boolean result = dao.deleteData(data);
		return result;
	}
}
