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
	
	/*
	 * @GetMapping("/insert") public void insert() {
	 * 
	 * }
	 */
	
	@GetMapping("/insert")
	public void insert(Model model, HttpServletRequest request, int mat_num, String r_w_m_id, String r_mat_m_id) {
		HttpSession session = request.getSession();
		log.info("................................................."+mat_num);
		model.addAttribute("mat_num", mat_num);
		model.addAttribute("r_w_m_id", r_w_m_id);
		model.addAttribute("r_mat_m_id", r_mat_m_id);
		model.addAttribute("userId", session.getAttribute("userId"));
		
	}
	
	@PostMapping("/insertok")
	public String insertok(int mat_num, String r_good, String r_contents, String r_w_m_id, HttpServletRequest request) {
		String r_mat_m_id = request.getSession().getAttribute("userId").toString();
		service.insertR(mat_num, r_good, r_contents, r_w_m_id, r_mat_m_id);
		return "redirect:/match/matlist";
	}
	
	@GetMapping("/update")
	public void update(Model model, int mat_num, String r_w_m_id, String r_mat_m_id, String r_contents ) {
		model.addAttribute("mat_num", mat_num);
		model.addAttribute("r_w_m_id", r_w_m_id);
		model.addAttribute("r_mat_m_id", r_mat_m_id);
		model.addAttribute("r_contents", r_contents);
		
	}
	
	@PostMapping("/updateok")
	public String updateok(int mat_num, String r_good, String r_contents) {
		service.updateR(mat_num, r_good, r_contents);
		return "redirect:/match/matlist";
		
	}

	//현직자 프로필에서 수정
	@GetMapping("/updatee")
	public void updatee(Model model, int r_num, String r_w_m_id, String r_mat_m_id, String r_contents ) {
		log.info(".........................................................." + r_w_m_id);
		model.addAttribute("r_num", r_num);
		model.addAttribute("r_w_m_id", r_w_m_id);
		model.addAttribute("r_mat_m_id", r_mat_m_id);
		model.addAttribute("r_contents", r_contents);
	}
	
	@PostMapping("/updateokk")
	public String updateokk(int r_num, String r_good, String r_contents) {
		service.updateRR(r_num, r_good, r_contents);
		String emplId = service.searchEmplId(r_num);
		return "redirect:/profile/showempl?m_id=" + emplId;
		
	}
	
	@GetMapping("/delete")
	public String delete(int r_num) {
		service.deleteR(r_num);
		return "redirect:/match/matlist";
	}
	
	//현직자 프로필에서 삭제
	@GetMapping("/deletee")
	public String deletee(int r_num) {
		service.deleteR(r_num);
		String emplId = service.searchEmplId(r_num);
		return "redirect:/profile/showempl?m_id=" + emplId;
	}
}
