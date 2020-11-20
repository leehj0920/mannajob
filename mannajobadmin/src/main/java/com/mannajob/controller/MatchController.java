package com.mannajob.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mannajob.service.MatchService;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;


@Controller
@Log4j
@RequestMapping("/match/*")
@AllArgsConstructor
public class MatchController {
	@Setter(onMethod_ = @Autowired)
	private MatchService service;
	
	
	@GetMapping("/matlist")
	public void matlist(Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		
		model.addAttribute("bmatlist", service.searchBMat(session.getAttribute("userId").toString()));
		model.addAttribute("matlist", service.searchMat(session.getAttribute("userId").toString()));
		
//		System.out.println(model.getAttribute("bmatlist"));
	}
	
	@GetMapping("/match")
	public String match(Model model, int b_num) {
		model.addAttribute("matchlist", service.searchBmatMat(b_num));
		
		System.out.println(b_num);
		return"/match/matchrequest";
	}
}
