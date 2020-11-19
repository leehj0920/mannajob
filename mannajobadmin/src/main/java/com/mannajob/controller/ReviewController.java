package com.mannajob.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mannajob.service.ReviewService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/review/*")
@AllArgsConstructor
public class ReviewController {
	private ReviewService service;
	
	@GetMapping("/insert")
	public void insert() {
		
	}
	
	@PostMapping("/insert")
	public void insert(Model model, HttpServletRequest request, int mat_num, String r_w_m_id, String r_mat_m_id) {
		HttpSession session = request.getSession();
		
		model.addAttribute("mat_num", mat_num);
		model.addAttribute("b.m_id", r_w_m_id);
		model.addAttribute("userId", session.getAttribute("userId"));
		
	}
	
	@PostMapping("/insertok")
	public String insertok(int mat_num, String good, String contents, String b_id, String w_id) {
		service.insertR(mat_num, good, contents, b_id, w_id);
		return "redirect:/profile/matlist";
	}
	
	@GetMapping("/update")
	public void update() {
		
	}
	
	@PostMapping("/updateok")
	public String updateok(int mat_num, String r_good, String r_contents) {
		service.updateR(mat_num, r_good, r_contents);
		return "redirect:/profile/matlist";
	}
}
