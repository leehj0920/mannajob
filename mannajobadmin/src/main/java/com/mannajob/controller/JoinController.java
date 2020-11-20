package com.mannajob.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.mannajob.domain.MemberVO;
import com.mannajob.service.JoinService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/join/*")
@AllArgsConstructor
public class JoinController {
	private JoinService service;
	
	//ȸ������ �������� member.jsp
//	@GetMapping("/member_agree")
//	public void insert_agree() {
//		
//	}
	
	@GetMapping("/member")
	public void insert() {
		
	}
//	약관동의 화면
	@GetMapping("/member_agree")
	public void member_agree() {
		//return "redirect:/join/member";	
	}
	
	
		
	@PostMapping("/member")
	public String insert(MemberVO member, RedirectAttributes rttr) {
		log.info("����..............................");
		service.MemJoin(member);
//		rttr.addFlashAttribute("result", 1);
		
		return "redirect:/login";
	}
	
	@GetMapping("/join")
	public void insertapi() {
		
	}
	
	@PostMapping("/join")
	public String insertapi(MemberVO member, RedirectAttributes rttr, HttpSession session) {
		member.setM_id(session.getAttribute("sessionId").toString());
		member.setM_api(session.getAttribute("userapi").toString());
		service.ApiJoin(member);
//		rttr.addFlashAttribute("result", 1);
		session.setAttribute("userId", session.getAttribute("sessionId"));
		return "redirect:/main";
	}
	
}
