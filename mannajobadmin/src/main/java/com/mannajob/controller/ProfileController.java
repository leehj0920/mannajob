package com.mannajob.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.mannajob.domain.EmplVO;
import com.mannajob.domain.MemberVO;
import com.mannajob.service.ProfileService;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/profile/*")
public class ProfileController {
	@Autowired
	private ProfileService service;
	private MemberVO member;
	private EmplVO empl;
	
	//메인페이지
	@GetMapping("/main")
	public String main(Model model, HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		
		if(session.getAttribute("userId") == null) {
			return "redirect:/login";
		}
		member = service.getMemProfile(session.getAttribute("userId").toString());
		
		model.addAttribute("userId", member.getM_id());
		model.addAttribute("username", member.getM_name());
		model.addAttribute("userphone", member.getM_phone());
		model.addAttribute("useremail", member.getM_email());
		
		empl = service.getEmplProfile(session.getAttribute("userId").toString());
		
		session.setAttribute("empl", empl);
		
		if(empl != null) {
			model.addAttribute("emplcorp", empl.getE_corp());
			model.addAttribute("empldept", empl.getE_dept());
			model.addAttribute("emplrank", empl.getE_rank());
			model.addAttribute("empltask", empl.getE_task());
			model.addAttribute("emplcareer", empl.getE_career());
			model.addAttribute("emplintro", empl.getE_intro());
			model.addAttribute("emplok", empl.getE_ok());
		}
		
		return "profile/main";
	}
	
	//경력자 등록 페이지로 empl.jsp
	@GetMapping("/empl")
	public void EmplJoin(Model model, HttpSession session) {
		System.out.println(session.getAttribute("userId"));
		model.addAttribute("userId", session.getAttribute("userId"));
	}
			
	//EmplVO에 가입 정보 INSERT 후 mypage로 redirect
	@PostMapping("/empl")
	public String EmplJoin(EmplVO empl, RedirectAttributes rttr, MultipartHttpServletRequest mpRequest) throws Exception {
		log.info("가입..............................");
		
		service.EmplJoin(empl, mpRequest);
//		rttr.addFlashAttribute("result", 1);
			
		return "redirect:/profile/main";
	}
	
	@GetMapping("/update")
	public void update(Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		member = service.getMemProfile(session.getAttribute("userId").toString());
		
		model.addAttribute("userphone", member.getM_phone());
		model.addAttribute("useremail", member.getM_email());
	}
	
	@PostMapping("/update")
	public String update(MemberVO member, HttpServletRequest request, Model model) {
		service.updateProfile(member);

		HttpSession session = request.getSession();
		
		member = service.getMemProfile(session.getAttribute("userId").toString());
		  
		model.addAttribute("userId", member.getM_id());
		model.addAttribute("username", member.getM_name());
		model.addAttribute("userphone", member.getM_phone());
		model.addAttribute("useremail", member.getM_email());
		
		return "profile/main";
	}
	
	@GetMapping("/matlist")
	public void matlist() {
		
	}
	
	@GetMapping("/calendar")
	public void calendar() {
		
	}
	
	@GetMapping("/emplprofile")
	public void emplprofile() {
		
	}
}
