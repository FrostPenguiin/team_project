package lv1.lv2.lv3.screen.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;

import lv1.lv2.lv3.screen.model.ScreenDTO;
import lv1.lv2.lv3.screen.service.ScreenService;

@Controller
@RequestMapping(value="/screen")
public class ScreenAdminController {
	
	@Autowired
	private ScreenService service;

	@RequestMapping(value="", method=RequestMethod.GET)
	public String getScreenList(Model model) {
		
		List<ScreenDTO> datas = service.getscreenList();
		model.addAttribute("datas", datas);
		
		return "screen/screen_admin";
	}
	
	// 상영관 상세정보(ajax)
	@RequestMapping(value="getselectScrinfo")
	public @ResponseBody String getselectScrinfo(@RequestParam ("scrNum")int scrNum) {
		System.out.println("해당 극장 정보 검색.");
		String result = service.getselectScrinfo(scrNum);
		
		return result;
	}
	
}
