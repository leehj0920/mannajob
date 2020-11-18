package com.mannajob.mapper;

import java.util.List;
import java.util.Map;

import com.mannajob.domain.BMatchVO;
import com.mannajob.domain.EmplVO;
import com.mannajob.domain.MatchVO;
import com.mannajob.domain.MemberVO;

public interface ProfileMapper {
	
	public MemberVO getMemProfile(String m_id);
	
	public void updateProfile(MemberVO member);
	
	public EmplVO getEmplProfile(String m_id);

	public void EmplJoin(EmplVO empl);
	
	public void insertFile(Map<String, Object> map) throws Exception;

	public void EmplJoin(String string, Map<String, Object> map);
	
	public List<BMatchVO> searchBMat(String m_id);
	
	public List<MatchVO> searchBmatMat(int b_num);
	
	public List<BMatchVO> searchMat(String m_id);
}
