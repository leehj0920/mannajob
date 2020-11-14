package com.mannajob.service;

import java.util.Map;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.mannajob.domain.EmplVO;
import com.mannajob.domain.MemberVO;

public interface ProfileService {
	
	public MemberVO getMemProfile(String m_id);
	
	public void updateProfile(MemberVO member);
	
	public EmplVO getEmplProfile(String m_id);

	public void EmplJoin(EmplVO empl, MultipartHttpServletRequest mpRequest) throws Exception;
	
	public void insertFile(Map<String, Object> map) throws Exception;
	
//	public List<Map<String, Object>> selectCertif(int e_num) throws Exception;
}
