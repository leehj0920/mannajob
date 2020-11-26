package com.mannajob.controller;

import java.util.List;

import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.mannajob.domain.QnaRestVO;
import com.mannajob.service.QnaService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@RestController
@Log4j
@RequestMapping("/rest/qna*")
@AllArgsConstructor
public class QnaRestController {
	private QnaService service;
	
	@GetMapping (value = "/list",produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	public List<QnaRestVO> getlist(QnaRestVO qnaRestVO){
		return service.getListSearch(qnaRestVO);
	}
	@PostMapping (value = "/search",produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	public List<QnaRestVO> getsearch(QnaRestVO qnaRestVO){
		return service.getListSearch(qnaRestVO);
	}
}
