package lv1.lv2.lv3.movie.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import lv1.lv2.lv3.movie.model.MovieDAO;
import lv1.lv2.lv3.movie.model.MovieDTO;

@Service
public class MovieService {

	@Autowired
	private MovieDAO mdao;

	public ModelAndView getMvIntime() {
		System.out.println("MovieService.getMvIntime() 호출");
		ModelAndView mav = new ModelAndView();
		
		// 예매가능한 영화목록 조회
		List<MovieDTO> reMvList = mdao.selectReserveMvList();
		
		System.out.println(reMvList);
		mav.addObject("reMvList", reMvList);
		mav.setViewName("reserve/reserve");
		
		return mav;
	}
	
}
