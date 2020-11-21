package com.mannajob.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mannajob.domain.Criteria;
import com.mannajob.domain.CriteriaProfile;
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
	@GetMapping("/insert")
	
	@GetMapping("/matlist")
	public String matlist(Model model, HttpServletRequest request,Criteria cri,CriteriaProfile scri) {
		HttpSession session = request.getSession();
		if(session.getAttribute("userId")==null) {
			return "/main";
		}
		
		model.addAttribute("userId", session.getAttribute("userId").toString());
		model.addAttribute("wmatlist", service.searchWMat(session.getAttribute("userId").toString()));
		model.addAttribute("matlist", service.searchMat(session.getAttribute("userId").toString()));
		
		System.out.println("wmatlist" + model.getAttribute("wmatlist"));
		System.out.println("matlist" + model.getAttribute("matlist"));
		return "match/matlist";
	}
	
	@GetMapping("/bmatlist")
	public void bmatlist(Model model, int b_num) {
		model.addAttribute("matchlist", service.searchBmatMat(b_num));
		
		System.out.println(b_num);
	}
	
	@GetMapping("/match")
	public String match(Model model, int b_num) {
		return"/match/matchrequest";
	}
}
