package com.mannajob.service;

import java.util.Map;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.mannajob.domain.EmplVO;
import com.mannajob.domain.MemberVO;

public interface JoinService {
	
	public void MemJoin(MemberVO member);
	
	public void EmplJoin(EmplVO empl, MultipartHttpServletRequest mpRequest) throws Exception;
	
	public void insertFile(Map<String, Object> map) throws Exception;


}
