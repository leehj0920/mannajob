package com.mannajob.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.mannajob.domain.EmplVO;
import com.mannajob.service.ProfileService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/profile/*")
@AllArgsConstructor
public class ProfileController {
	private ProfileService service;
	
	//메인페이지
	@GetMapping("/main")
	public String main(Model model, HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		
		if(session.getAttribute("m_id") == null) {
			return "redirect:/login";
		}
		
		
		
		return "/main";
	}
	
	//경력자 등록 페이지로 empl.jsp
	@GetMapping("/empl")
	public void EmplJoin() {
				
	}
			
	//EmplVO에 가입 정보 INSERT 후 mypage로 redirect
	@PostMapping("/empl")
	public String EmplJoin(EmplVO empl, RedirectAttributes rttr, MultipartHttpServletRequest mpRequest) throws Exception {
		log.info("가입..............................");
			
		service.EmplJoin(empl, mpRequest);
		rttr.addFlashAttribute("result", 1);
			
		return "redirect:/profile/main";
	}
	
	@GetMapping("/update")
	public void update() {
	}
	
	@PostMapping("/update")
	public void update(@RequestParam("m_id") String m_id, HttpServletRequest request) {
		HttpSession session = request.getSession();
		if(session.getAttribute("m_id") != null) {
			
		}
		
	}
}
