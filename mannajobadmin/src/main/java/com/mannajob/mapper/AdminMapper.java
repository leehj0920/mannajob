package com.mannajob.mapper;

import java.util.List;

import com.mannajob.domain.Criteria;
import com.mannajob.domain.MemberVO;

public interface AdminMapper {
	
//	public void MemSearch(String m_id);
	
	public List<MemberVO> getMemListWithPaging(Criteria cri);
	
	public int getTotalCount();
}
