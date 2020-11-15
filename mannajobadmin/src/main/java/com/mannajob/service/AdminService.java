package com.mannajob.service;

import java.util.List;

import com.mannajob.domain.Criteria;
import com.mannajob.domain.MemberVO;

public interface AdminService {

//	public void MemSearch(String m_id);

	public List<MemberVO> getMemList(Criteria cri);
	
	public int getTotal();
	
}
