package com.mannajob.controller;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mannajob.domain.Criteria;
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
	public void manage() {
		
	}
	
	@PostMapping("/manage")
	public void manage(SearchCriteria cri, Model model) {
		int total = service.getTotal();
		model.addAttribute("memlist", service.getMemList(cri));
		model.addAttribute("mempageMaker", new PageDTO(cri, total));
	} 

}
