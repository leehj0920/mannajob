package com.mannajob.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.http.MediaType;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.mannajob.domain.BMatchVO;
import com.mannajob.domain.BmatchProfileVO;
import com.mannajob.domain.Criteria;
import com.mannajob.domain.MatchVO;
import com.mannajob.service.BMatchService;
import com.mannajob.service.MatchService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@RestController
@Log4j
@RequestMapping("/rest/bmatch/*")
@AllArgsConstructor
public class BMatchRestController {
	private BMatchService service;
	private MatchService matchservice;
	
	@PostMapping(value = "/list", produces ={ MediaType.APPLICATION_JSON_UTF8_VALUE})
	public List<BmatchProfileVO> bmatchlist(BmatchProfileVO bmatchProfileVO){
		return service.getListProfile(bmatchProfileVO); 
	}
	
	@PostMapping(value = "/search", produces ={ MediaType.APPLICATION_JSON_UTF8_VALUE})
	public List<BmatchProfileVO> bmatchsearch(BmatchProfileVO bmatchProfileVO){
		return service.getListProfileSearch(bmatchProfileVO);
	}
	@Transactional
	@PostMapping("/cancel")
	public String cancel(BMatchVO bMatchVO, Criteria cri, HttpServletRequest request) {
		HttpSession session = request.getSession();
		if(session.getAttribute("userId") == null) {
			return "2";
		}else {
			if(matchservice.matchfinalCount(bMatchVO.getB_num())) {
				MatchVO matchVO = matchservice.findfinalMat(bMatchVO.getB_num());
				matchservice.reject(matchVO);
			}
			service.cancel(bMatchVO.getB_num());
		}
		return "1";
	}
	
}
