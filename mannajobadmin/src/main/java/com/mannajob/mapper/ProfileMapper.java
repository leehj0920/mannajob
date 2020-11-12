package com.mannajob.mapper;

import java.util.List;
import java.util.Map;

import com.mannajob.domain.EmplVO;
import com.mannajob.domain.MemberVO;

public interface ProfileMapper {
	
	public List<MemberVO> getMemProfile();
	
	public List<EmplVO> getEmplProfile();

	public void EmplJoin(EmplVO empl);
	
	public void insertFile(Map<String, Object> map) throws Exception;

	public void EmplJoin(String string, Map<String, Object> map);
}
