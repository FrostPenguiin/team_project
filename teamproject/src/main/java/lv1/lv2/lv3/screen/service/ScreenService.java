package lv1.lv2.lv3.screen.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.google.gson.Gson;

import lv1.lv2.lv3.screen.model.ScreenDAO;
import lv1.lv2.lv3.screen.model.ScreenDTO;

@Service
public class ScreenService {
 
	@Autowired
	private ScreenDAO dao;

	public List<ScreenDTO> getscreenList() {
		// 극장 목록 조회
		List<ScreenDTO> datas = dao.selectScreen();
		return datas;
	}

	// 상영관 상세정보(ajax)
	public String getselectScrinfo(int scrNum) {
		System.out.println("ScreenService.getselectScrinfo 호출");
		ScreenDTO result = dao.getselectScrinfo(scrNum);
		
		Gson gson = new Gson();
		String scrinfo_json = gson.toJson(result);
		System.out.println("json 으로 변환 : " + scrinfo_json);
		
		return scrinfo_json;
	}

}
