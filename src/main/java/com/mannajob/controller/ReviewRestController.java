package com.mannajob.controller;

import javax.servlet.http.HttpSession;

import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.mannajob.domain.BMatchVO;
import com.mannajob.domain.MatchVO;
import com.mannajob.service.BMatchService;
import com.mannajob.service.MatchService;
import com.mannajob.service.ReviewService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;


@RestController
@Log4j
@RequestMapping("/rest/*")
@AllArgsConstructor
public class ReviewRestController {
	private ReviewService service;
	private MatchService matchservice;
	private BMatchService bmatchservice;
	
	@PostMapping(value = "/review/insert", produces ={ MediaType.APPLICATION_JSON_UTF8_VALUE})
	public String insertok(int mat_num,int b_num, String r_good, String r_contents,HttpSession session) {
		if(session.getAttribute("userId")==null) {
			return "2";
		}
		String r_w_m_id = session.getAttribute("userId").toString();
		BMatchVO bMatchVO = bmatchservice.read(b_num);
		String r_mat_m_id = bMatchVO.getM_id();
		service.insertR(mat_num, r_good, r_contents, r_w_m_id, r_mat_m_id);
		return "1";
	}
	
	@PostMapping(value = "/review/insertbmatch", produces ={ MediaType.APPLICATION_JSON_UTF8_VALUE})
	public String insertbmatchok(int b_num, String r_good, String r_contents,HttpSession session) {
		if(session.getAttribute("userId")==null) {
			return "2";
		}
		MatchVO matchVO = matchservice.findfinalMat(b_num);
		int mat_num = matchVO.getMat_num();
		String r_w_m_id = session.getAttribute("userId").toString();
		BMatchVO bMatchVO = bmatchservice.read(b_num);
		String r_mat_m_id = matchVO.getM_id();
		service.insertR(mat_num, r_good, r_contents, r_w_m_id, r_mat_m_id);
		return "1";
		
	}
}
