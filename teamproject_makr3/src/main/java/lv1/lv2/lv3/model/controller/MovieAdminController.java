package lv1.lv2.lv3.model.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lv1.lv2.lv3.model.MovieDTO;
import lv1.lv2.lv3.model.NmovieDTO;
import lv1.lv2.lv3.model.service.MovieService;
import lv1.lv2.lv3.model.service.NmovieService;
import lv1.lv2.lv3.model.vo.MovieVO;
import lv1.lv2.lv3.model.vo.NmovieVO;
import lv1.lv2.lv3.upload.Model.FileUploadDTO;
import lv1.lv2.lv3.upload.Service.FileUploadService;

@Controller
@RequestMapping(value = "/admin")
public class MovieAdminController {	
		@Autowired
		private MovieService service;

		@Autowired
		private NmovieService nservice;
		
		@Autowired
		private FileUploadService fileUploadService;
	
		@GetMapping(value="/addMovie")
		public String addMovie(MovieDTO movieDto) {
			return "admin/addMovie";
		}
		
		@PostMapping(value = "/addMovie")
		public String addMovie(HttpServletRequest request, HttpSession session
			   , @ModelAttribute MovieVO movieVo
			   , @ModelAttribute MovieDTO moviedto
			   , @RequestPart(value = "add", required = false) MultipartFile[] files) throws Exception {
			int id = service.add(session, moviedto, movieVo);
				return "admin/addMovie";
			}
		
		@GetMapping(value="/addIntendedMovie")
		public String addInendedMovie(NmovieDTO nmovieDto) {
			return "/admin/addIntendedMovie";
		}
		
		@PostMapping(value = "/addIntendedMovie")
		public String addInendedMovie(HttpServletRequest request, HttpSession session
			   , @ModelAttribute NmovieVO nmovieVo
			   , @ModelAttribute NmovieDTO nmoviedto
			   , @RequestPart(value = "add", required = false) MultipartFile[] files) throws Exception {
			int id = nservice.add(session, nmoviedto, nmovieVo);
				return "/admin/addIntendedMovie";
			}
				

		@GetMapping(value="/updateMovie")
		public String updateMovie(Model model, HttpSession session
			 , @RequestParam int id) {
			
			MovieDTO data = service.getData(session, id);
			
			model.addAttribute("data", data);
			return "admin/updateMovie";
		}
		
		@PostMapping(value="/updateMovie")
		public String updateMovie(Model model, HttpSession session
			 , @ModelAttribute MovieVO movieVo) {
			
			MovieDTO data = service.getData(session, movieVo.getMv_num());
			
			data.setMv_title(movieVo.getMv_title());
			data.setMv_director(movieVo.getMv_director());
			data.setMv_actor(movieVo.getMv_actor());
			data.setMv_genre(movieVo.getMv_genre());
			data.setMv_playtime(movieVo.getMv_playtime());
			data.setMv_openDate(movieVo.getMv_openDate());
			data.setMv_point(movieVo.getMv_point());
			data.setMv_intime(movieVo.getMv_intime());
			data.setMv_story(movieVo.getMv_story());
			data.setMv_poster(movieVo.getMv_poster());
		
			boolean result = service.update(session, data);
			if(result) {
				return "admin/updateMovie";
			}
			return null;
		}
		
		@GetMapping(value="/updateIntendedMovie")
		public String updateIntendedMovie(Model model, HttpSession session
			 , @RequestParam int id) {
			
			NmovieDTO data = nservice.getData(session, id);
			
			model.addAttribute("data", data);
			return "admin/updateIntendedMovie";
		}
		
		@PostMapping(value="/updateIntendedMovie")
		public String updateIntendedMovie(Model model, HttpSession session
			 , @ModelAttribute NmovieVO nmovieVo) {
			
			NmovieDTO data = nservice.getData(session, nmovieVo.getNmv_num());
			
			data.setNmv_title(nmovieVo.getNmv_title());
			data.setNmv_director(nmovieVo.getNmv_director());
			data.setNmv_actor(nmovieVo.getNmv_actor());
			data.setNmv_genre(nmovieVo.getNmv_genre());
			data.setNmv_openDate(nmovieVo.getNmv_openDate());
			data.setNmv_intime(nmovieVo.getNmv_intime());
			data.setNmv_story(nmovieVo.getNmv_story());
			data.setNmv_poster(nmovieVo.getNmv_poster());
		
			boolean result = nservice.update(session, data);
			if(result) {
				return "admin/updateIntendedMovie";
			}
			return null;
		}
		
		@PostMapping(value="/delete", produces="application/json; charset=utf-8")
		@ResponseBody
		public String delete(HttpSession session
				, @RequestParam int id) {
			
			MovieDTO data = service.getData(session, id);
			
			JSONObject json = new JSONObject();
			
			if(data == null) {
				// 이미 삭제가 되었음.
				json.put("title", "삭제가 된 데이터");
				json.put("message", "해당 데이터는 이미 삭제가 되었습니다.");
				return json.toJSONString();
			} else {
				if(data.getMv_num() == data.getMv_num()) {
					// 삭제 가능
					try {
						boolean result = service.remove(session, data);
						json.put("title", "삭제 완료");
						json.put("message", "삭제 처리가 완료되었습니다.");
						return json.toJSONString();
					} catch (Exception e) {
						json.put("title", "삭제 실패");
						json.put("message", "삭제 작업중 알 수 없는 문제가 발생하였습니다.");
						return json.toJSONString();
					}
				} else {
					// 작성자 불일치 - 삭제 불가 - 권한 없음
					json.put("title", "삭제 불가");
					json.put("message", "해당 데이터를 삭제할 권한이 없습니다.");
					return json.toJSONString();
				}
			}
		}
		}	
		
	
	

