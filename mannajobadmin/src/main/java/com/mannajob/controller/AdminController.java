package com.mannajob.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mannajob.domain.PageDTO;
import com.mannajob.domain.SearchCriteria;
import com.mannajob.service.AdminService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/admin/*")
@AllArgsConstructor
public class AdminController {
	private AdminService service; 
	
	@GetMapping("/manage")
	public String manage(SearchCriteria cri, Model model) {
		
		int total = service.getTotal();
		model.addAttribute("memlist", service.getMemList(cri));
		model.addAttribute("mempageMaker", new PageDTO(cri, total));
		model.addAttribute("searchType", cri.getSearchType());
		model.addAttribute("keyword", cri.getKeyword());
		return "/admin/manage";
	}
	
	@GetMapping("/reset")
	public String resetPasswd(String m_id) {
		service.resetPasswd(m_id);
		return "redirect:/admin/manage";
	}

	@GetMapping("/check")
	public String check(SearchCriteria cri, Model model) {
		
		int total = service.getemplTotal();
		model.addAttribute("empllist", service.getEmplList(cri));
		model.addAttribute("emplpageMaker", new PageDTO(cri, total));
		model.addAttribute("searchType", cri.getSearchType());
		model.addAttribute("keyword", cri.getKeyword());
		return "/admin/check";
	}

	@GetMapping("/emplOk")
	public String emplOk(String m_id) {
		service.emplOk(m_id);
		return "redirect:/admin/check";
	}
}
