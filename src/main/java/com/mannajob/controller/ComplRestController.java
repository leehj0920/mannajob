package com.mannajob.controller;

import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.mannajob.domain.ComplVO;
import com.mannajob.service.ComplService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@RestController
@Log4j
@RequestMapping("/rest/compl/*")
@AllArgsConstructor
public class ComplRestController {
	private ComplService service;
	
	@PostMapping(value = "/insert", produces ={ MediaType.APPLICATION_JSON_UTF8_VALUE})
	public String insert(ComplVO complVO) {
		service.insert(complVO);
		return "1";
	}
	

}
