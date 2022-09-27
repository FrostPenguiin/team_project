package lv1.lv2.lv3.reserve.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.google.gson.Gson;

import lv1.lv2.lv3.movie.model.MovieDTO;
import lv1.lv2.lv3.reserve.model.ReserveDAO;
import lv1.lv2.lv3.reserve.model.ReserveDTO;
import lv1.lv2.lv3.reserve.model.ScheduleDTO;
import lv1.lv2.lv3.reserve.vo.ScheduleVO;
import lv1.lv2.lv3.screen.model.ScreenDTO;

@Service
public class ReserveService {
	
	@Autowired
	private ReserveDAO redao;

	public ModelAndView getMvIntime() {
		ModelAndView mav = new ModelAndView();
		
		List<MovieDTO> reMvList = redao.selectReMvList();
		
		mav.addObject("reMvList", reMvList);
		mav.setViewName("reserve/reserve");
		
		return mav;
	}
	
	// 영화 극장 선택
	public String getScrList(int mvNum) {
		List<ScreenDTO> scrList = redao.selectScrList(mvNum);
		
		Gson gson = new Gson();
		String scrList_json = gson.toJson(scrList);
		
		return scrList_json;
	}
	
	// 날짜 선택
	public String getsDateList(ScheduleVO scheduleVo) {
		List<ScheduleDTO> sdateList = redao.selectsDate(scheduleVo);
		
		Gson gson = new Gson();
		String SdateList_json = gson.toJson(sdateList);
		
		return SdateList_json;
	}
	
	// 시간 선택
	public String getsTimeList(ScheduleVO scheduleVo) {
		List<ScheduleDTO> stimeList = redao.selectsTime(scheduleVo);
		
		Gson gson = new Gson();
		String StimeList_json = gson.toJson(stimeList);
		
		return StimeList_json;
	}

	public ModelAndView getInsertReserv(ReserveDTO dto, RedirectAttributes ra) {
		System.out.println("reService.getInsertReserv() 호출");
		ModelAndView mav = new ModelAndView();
		
		// 예매 코드 생성
		String resCode = "RE";
		// 예매 코드 생성(select)
		String MaxresCode = redao.getMaxRecode();
		
		if(MaxresCode == null) {		// 초기에는 최대값이 없으므로 null
			resCode = resCode + "001";	// -> re001
		} else {	// 값이 있다면
			MaxresCode = MaxresCode.substring(2);	// re002 -> 2
			// 최대값을 Int 형태로 바꿔주고 + 1
			int codeNum = Integer.parseInt(MaxresCode) + 1;
			
			if(codeNum < 10) {
				// 한자리 이면 (1 ~ 9) 009까지 만든다.
				resCode = resCode + "00" + codeNum;
			} else if(codeNum < 100) {
				// 2자리면 1 ~ 99
				resCode = resCode + "0" + codeNum;
			} else {
				resCode = resCode + codeNum;
			}
		}
		dto.setResCode(resCode);
		System.out.println("resCode : " + resCode);
		
		// 예매 정보 insert
		int insertReserve = redao.getInsertReserve(dto);
		System.out.println(insertReserve);
		
		if(insertReserve > 0) {
			ra.addFlashAttribute("msg", "예매가 완료 되었습니다.");
			mav.setViewName("redirect:/pay/kakaoPay");
		} else {
			ra.addFlashAttribute("msg", "예매 실패");
			mav.setViewName("redirect:/");
		}
		return mav;
	}
	
}
