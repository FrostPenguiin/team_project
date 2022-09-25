package lv1.lv2.lv3;

import java.io.IOException;
import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;


import lv1.lv2.lv3.common.util.Paging;
import lv1.lv2.lv3.model.MovieDTO;
import lv1.lv2.lv3.model.NmovieDTO;
import lv1.lv2.lv3.model.service.MovieService;
import lv1.lv2.lv3.model.service.NmovieService;
import lv1.lv2.lv3.upload.Model.FileUploadDTO;
import lv1.lv2.lv3.upload.Service.FileUploadService;

/**
 * Handles requests for the application home page.
 */


@Controller
@RequestMapping(value="/movie")
public class MovieController {
	
	@Autowired
	private MovieService service;
	
	@Autowired
	private NmovieService nservice;
	
	@Autowired
	private FileUploadService fileUploadService;

	@RequestMapping(value="/openmovie", method=RequestMethod.GET)
	public String getData(Model model, HttpSession session
			, HttpServletResponse response
			, @RequestParam(defaultValue="1", required=false) int page
			, @RequestParam(defaultValue="0", required=false) int pageCount) throws IOException {
		if(session.getAttribute("pageCount") == null) {
			session.setAttribute("pageCount", 5);
		}
		
		if(pageCount > 0) {
			session.setAttribute("pageCount", pageCount);
		}
		
		
		Paging pageData = null;
		
			pageData = service.getPage(session, page, Integer.parseInt(session.getAttribute("pageCount").toString()));
			model.addAttribute("pageData", pageData);
			model.addAttribute("datas", pageData.getPageDatas());
			return "movie/openmovie";
		}

	
	@RequestMapping(value = "/intendedMovie", method = RequestMethod.GET)
	public String getData2(Model model, HttpSession session
			, HttpServletResponse response
			, @RequestParam(defaultValue="1", required=false) int page
			, @RequestParam(defaultValue="0", required=false) int pageCount) throws IOException {
		if(session.getAttribute("pageCount") == null) {
			session.setAttribute("pageCount", 6);
		}
		
		if(pageCount > 0) {
			session.setAttribute("pageCount", pageCount);
		}
		
		
		Paging pageData = null;
		
			pageData = nservice.getPage(session, page, Integer.parseInt(session.getAttribute("pageCount").toString()));
			model.addAttribute("pageData", pageData);
			model.addAttribute("datas", pageData.getPageDatas());
		return "movie/intendedMovie";
	}
	
	@RequestMapping(value="/movieinfo", method=RequestMethod.GET)
	public String movieinfo(Model model, HttpSession session
		 , @RequestParam int id) throws RuntimeException {
		
		MovieDTO data = service.getData(session, id);
		
		if(data == null) {
			model.addAttribute("error", "해당 데이터는 존재하지 않습니다.");
			return "movie/openmovie";
		} else {
			model.addAttribute("data", data);
			return "movie/movieinfo";
		}
	}
	
	@RequestMapping(value="/intendedMovieInfo", method=RequestMethod.GET)
	public String intededMovieInfo(Model model, HttpSession session
			, @RequestParam int id) throws RuntimeException {
		
		NmovieDTO data = nservice.getData(session, id);
		
		if(data == null) {
			model.addAttribute("error", "해당 데이터는 존재하지 않습니다.");
			return "movie/intendedMovie";
		} else {
			model.addAttribute("data", data);
			return "movie/intendedMovieInfo";
		}
	}
	
	@RequestMapping(value = "/movieReview", method = RequestMethod.GET)
	public String review(Locale locale, Model model) {
				
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "movieReview";
	}
	
}