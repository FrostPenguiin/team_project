package lv1.lv2.lv3.reserve.controller;


import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lv1.lv2.lv3.reserve.model.ReserveDTO;
import lv1.lv2.lv3.reserve.service.ReserveService;
import lv1.lv2.lv3.reserve.vo.ScheduleVO;

@Controller
@RequestMapping(value="/reserve/**")
public class ReserveController {

	@Autowired
	private ReserveService reService;
	
	// 영화 예매 페이지 이동
	@RequestMapping(value="")
	public ModelAndView MovieReserve() {
		ModelAndView mav = reService.getMvIntime();
		
		return mav;
	}
	
	@RequestMapping(value="/getScrList")
	public @ResponseBody String getScrList(int mvNum) {
		String scrList = reService.getScrList(mvNum);
		
		return scrList;
	}
	
	@RequestMapping(value="/getsDateList")
	public @ResponseBody String getsDateList(ScheduleVO scheduleVo) {
		String sdateList = reService.getsDateList(scheduleVo);
		
		return sdateList;
	}
	
	@RequestMapping(value="/getTime")
	public @ResponseBody String getTime(ScheduleVO scheduleVo) {
		String stimeList = reService.getsTimeList(scheduleVo);
		
		return stimeList;
	}
	
	@RequestMapping(value="/movieReservation")
	public ModelAndView movieReservation(HttpServletRequest request, ReserveDTO dto, RedirectAttributes ra) {
		System.out.println("예매 입력기능");
		
		ModelAndView mav = reService.getInsertReserv(request, dto, ra);
		
		return mav;
	}
}
