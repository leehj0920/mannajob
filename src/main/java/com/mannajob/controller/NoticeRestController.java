package com.mannajob.controller;

import java.util.List;

import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.mannajob.domain.NoticeRestVO;
import com.mannajob.domain.NoticeVO;
import com.mannajob.service.NoticeService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@RestController
@Log4j
@RequestMapping("/rest/notice/*")
@AllArgsConstructor
public class NoticeRestController {
	private NoticeService service;
	
	@GetMapping(value = "/list", produces ={ MediaType.APPLICATION_JSON_UTF8_VALUE})
	public List<NoticeRestVO> getlist(NoticeVO noticeVO){
		return service.getListSearch(noticeVO);
	}
	
	@PostMapping(value = "/search", produces ={ MediaType.APPLICATION_JSON_UTF8_VALUE})
	public List<NoticeRestVO> getsearch(NoticeVO noticeVO){
		return service.getListSearch(noticeVO);
	}

}
