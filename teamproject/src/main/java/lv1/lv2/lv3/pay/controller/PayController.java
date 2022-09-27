package lv1.lv2.lv3.pay.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import lv1.lv2.lv3.pay.service.PayService;
import lv1.lv2.lv3.pay.vo.PayInfoVO;
import lv1.lv2.lv3.reserve.model.ReserveDTO;

@Controller
@RequestMapping(value="/pay/**")
public class PayController {
	
	@Autowired
	private PayService pService;
	
	@GetMapping(value = "kakaoPay")
	public void KakaoPayGet() throws Exception {

	}

	@PostMapping(value = "kakaoPay")
	public String KakaoPayPost(String total_amount, String quantity) throws Exception {
		System.out.println(total_amount);
		System.out.println(quantity);
		return "redirect:" + pService.KakaoPayReady(total_amount, quantity);
	}

	@GetMapping("kakaoPaySuccess")
	public ModelAndView kakaoPaySuccess(HttpServletRequest request, HttpSession session) throws Exception {
		String resCode = (String) session.getAttribute("resCode");
		String pg_token = request.getParameter("pg_token");
		ReserveDTO reserveDTO = (ReserveDTO) session.getAttribute("ReserveDTO");
		PayInfoVO payInfoVO = new PayInfoVO();
		ModelAndView mv = new ModelAndView();
		payInfoVO = pService.KakaoPayApprove(pg_token);
		mv.addObject("dto", reserveDTO);
		mv.addObject("resCode", resCode);
		mv.addObject("pay", payInfoVO);
		return mv;
	}

}
