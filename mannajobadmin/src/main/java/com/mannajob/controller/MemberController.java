package com.mannajob.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mannajob.domain.MemberVO;
import com.mannajob.service.MemberService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/member/*")
@AllArgsConstructor
public class MemberController {
	private MemberService service;
	
	@GetMapping("/login")
	public void login() {
		
	}
	
	@PostMapping ("login")
	public String login(MemberVO member, HttpServletRequest request, HttpSession session) {
		if(service.LoginSelect(member)) {
			log.info("로그인 오케이");
			session.setAttribute("m_id", member.getM_id());
			return "redirect:/shop/list"; 
		} else {
			log.info("로그인 실패");
			return "redirect:/member/login";
		}
	}
	
	@GetMapping("/logout")
	public String logout(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.invalidate();
		return "redirect:/member/login";
	}
}