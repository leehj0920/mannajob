package com.mannajob.service;

import java.util.List;
import java.util.Map;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.mannajob.domain.EmplVO;
import com.mannajob.domain.MemberVO;

public interface ProfileService {
	
	public List<MemberVO> getMemProfile();
	
	public List<EmplVO> getEmplProfile();

	public void EmplJoin(EmplVO empl, MultipartHttpServletRequest mpRequest) throws Exception;
	
	public void insertFile(Map<String, Object> map) throws Exception;

//	public List<Map<String, Object>> selectCertif(int e_num) throws Exception;
}
