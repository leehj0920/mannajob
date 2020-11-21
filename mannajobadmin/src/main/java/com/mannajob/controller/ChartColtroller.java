package com.mannajob.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mannajob.service.JoinService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/chart/*")
@AllArgsConstructor
public class ChartColtroller {
	
	@GetMapping("/chart_cnt")
	public void chart_cnt() {
		
	}
	
	@GetMapping("/chart_field")
	public void chart_field() {
		
	}
}
