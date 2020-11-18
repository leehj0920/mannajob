package com.mannajob.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mannajob.domain.BMatchVO;
import com.mannajob.domain.Criteria;
import com.mannajob.domain.CriteriaProfile;
import com.mannajob.domain.PageDTO;
import com.mannajob.service.BMatchService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/bmatch/*")
@AllArgsConstructor
public class BMatchController {
	private BMatchService bMatchService;
	
	@GetMapping("/list")
	public String list(Model model, Criteria cri, BMatchVO bMatchVO) {
		if(bMatchVO.getB_category()==null) {
			bMatchVO.setB_category("");
		}
		int total = bMatchService.getTotalCount(cri,bMatchVO);
		model.addAttribute("list", bMatchService.getListWithPaging(cri,bMatchVO));
		model.addAttribute("page", new PageDTO(cri, total));
		System.out.println(cri);
		System.out.println(bMatchService.getListWithPaging(cri, bMatchVO));
		return "/bmatch/list";
	}
	
	// 댓글,대댓글 추가 필요, 현직자의 경우 현직자 정보 추가 필요.
	@GetMapping("/view")
	public String view(BMatchVO bMatchVO, Model model, @ModelAttribute("cri") Criteria cri) {
		model.addAttribute("bMatch", bMatchService.read(bMatchVO.getB_num()));
		if(bMatchVO.getB_category().equals("A")) {
			return "redirect:/bmatch/viewempl";	
		}
		return "/bmatch/viewmember";
	}
	// 프로필에 대한 검색도 함께 포함되도록 추가
	@GetMapping("/search")
	public String search(@ModelAttribute("bMatch")BMatchVO bMatchVO, Model model, Criteria cri, CriteriaProfile scri) {
		cri.setAmount(5);
		int total = bMatchService.getTotalCount(cri,bMatchVO);
		model.addAttribute("list", bMatchService.searchWithPaging(bMatchVO, cri));
		model.addAttribute("page", new PageDTO(cri, total));
		//프로필 검색
		
		scri.setAmountP(5);
		int empltotal = bMatchService.getEmplCount(bMatchVO);
		model.addAttribute("empllist", bMatchService.searchEmplPaging(scri, bMatchVO));
		model.addAttribute("emplpage", new PageDTO(scri, empltotal));
		System.out.println("list:" + model.getAttribute("list") + "\npage: " + model.getAttribute("page"));
		System.out.println("empllist:" + model.getAttribute("empllist") + "\nemplpage: " + model.getAttribute("emplpage"));
		return "/bmatch/searchlist";
	}
	
}
