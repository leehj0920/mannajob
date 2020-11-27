package com.mannajob.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.mannajob.domain.EmplFileVO;
import com.mannajob.domain.MemberRestVO;
import com.mannajob.domain.MemberVO;
import com.mannajob.service.JoinService;
import com.mannajob.service.MemberService;
import com.mannajob.service.ProfileService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@RestController
@Log4j
@RequestMapping("/rest/*")
@AllArgsConstructor
public class MemberRestController {
	private MemberService service;
	private JoinService joinservice;
	private ProfileService profileservice;
	
	@PostMapping (value = "/logincheck",produces = MediaType.APPLICATION_JSON_VALUE)
	public String login(MemberVO member, HttpServletRequest request) {
		HttpSession session = request.getSession();
		if(!service.memberCheck(member.getM_id())){
			return "3";
		}
		if(service.SecretLogin(member)) {
			session.setAttribute("userId", member.getM_id());
			return "1"; 
		} else {
			return "2";
		}
	}
	
	@PostMapping(value = "/membercheck", produces = MediaType.APPLICATION_JSON_VALUE)
	public String membercheck(MemberVO member, HttpServletRequest request) {
		HttpSession session = request.getSession();
		if(service.memberCheck(member.getM_id())) {
			session.setAttribute("userId", member.getM_id());
			return "1";
		}
		return "2";
	}
//	아이디 패스워드 이름 전화번호 이메일
	@PostMapping(value = "/memberjoin", produces = MediaType.APPLICATION_JSON_VALUE)
	public String insert(MemberVO member) {
		joinservice.MemJoin(member);
		if(service.memberCheck(member.getM_id())){
			return "1";	
		}
		return "2";
	}
	
//	아이디 패스워드 이름 전화번호 이메일 구분
	@PostMapping(value = "/apijoin", produces = MediaType.APPLICATION_JSON_VALUE)
	public String insertapi(MemberVO member, HttpServletRequest request) {
		HttpSession session = request.getSession();
		
		
		joinservice.ApiJoin(member);
		if(service.memberCheck(member.getM_id())){
			session.setAttribute("uesrId", member.getM_id());
			return "1";	
		}
		return "2";
	}
	@GetMapping (value = "/myprofile",produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	public MemberRestVO myprofile(MemberVO member, HttpServletRequest request) {
		HttpSession session = request.getSession();
		if(session.getAttribute("userId") ==null) {
			return null;
		}
		String m_id = session.getAttribute("userId").toString();
		MemberVO memberVO = profileservice.getMemProfile(m_id);
		EmplFileVO empl = profileservice.getRestEmpl(m_id);
		MemberRestVO restVO = new MemberRestVO();
		restVO.setM_email(memberVO.getM_email());
		restVO.setM_id(m_id);
		restVO.setM_name(memberVO.getM_name());
		restVO.setM_phone(memberVO.getM_phone());
		if(empl != null) {
		restVO.setE_num(memberVO.getE_num());
		restVO.setStored_file_name(empl.getStored_file_name());
		}
		return restVO;
	}
	
	@GetMapping (value = "/check",produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	public String check(HttpSession session) {
		if(session.getAttribute("userId")==null) {
			return "2";
		}
		return "1";
	}
	@GetMapping (value = "/logout",produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	public String logout(HttpSession session) {
		session.invalidate();
		return "1";
	}

}
