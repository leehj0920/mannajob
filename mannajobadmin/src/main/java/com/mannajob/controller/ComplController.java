package com.mannajob.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.mannajob.domain.BMatchVO;
import com.mannajob.domain.ComplVO;
import com.mannajob.service.ComplService;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/compl/*")
@AllArgsConstructor
public class ComplController {
	@Setter(onMethod_=@Autowired)
	private ComplService service;
	
//	아이디, b_num, c_category 받음
	@GetMapping("/insert")
	public String compl(BMatchVO bMatchVO, Model model) {
		model.addAttribute("bmatch", bMatchVO);
		return "/bmatch/compl";
	}
	@PostMapping("/insert")
	public String compl(ComplVO complVO, Model model,RedirectAttributes rttr, @RequestParam("b_category")String b_category) {
		service.insert(complVO);
		rttr.addFlashAttribute("result", 1);
		return "redirect:/bmatch/view?b_num="+complVO.getBoard_num()+"&b_category="+b_category+"&m_id="+complVO.getM_id();
	};

}
