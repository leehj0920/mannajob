package com.mannajob.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.mannajob.domain.EmplVO;
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
	
	//회원가입 페이지로 member.jsp
	@GetMapping("/member")
	public void insert() {
		
	}
	
	//MemberVO에 가입 정보 INSERT 후 login.jsp로 redirect
	@PostMapping("/member")
	public String insert(MemberVO member, RedirectAttributes rttr) {
		log.info("가입..............................");
		
		service.MemJoin(member);
		rttr.addFlashAttribute("result", 1);
		
		return "redirect:/login";
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
		
		return "redirect:/mypage/main";
	}

}
