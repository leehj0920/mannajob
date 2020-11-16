package com.mannajob.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mannajob.domain.EmplVO;
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
	public String manage(EmplVO empl, SearchCriteria cri, Model model, HttpServletRequest request) {
					
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
	public String emplOk(int e_num) {
		service.emplOk(e_num);
		return "redirect:/admin/check";
	}
	
	@GetMapping("/emplapply")
	public void emplapply(int e_num, HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.setAttribute("e_num", e_num);
		
		session.setAttribute("emplFile", service.emplApply(e_num));
		System.out.println(session.getAttribute("emplFile"));
	}
	
	@GetMapping("/certif")
	public void certif(HttpServletRequest request) {
		HttpSession session = request.getSession();
		System.out.println(session.getAttribute("e_num"));
		session.setAttribute("emplCertif", service.emplImage((int)session.getAttribute("e_num")));
	}
}
