package com.mannajob.mapper;

import java.util.List;

import com.mannajob.domain.EmplVO;
import com.mannajob.domain.MemberVO;
import com.mannajob.domain.SearchCriteria;

public interface AdminMapper {
	
//	public void MemSearch(String m_id);
	
	public List<MemberVO> getMemListWithPaging(SearchCriteria cri);
	
	public int getTotalCount();
	
	public void resetPasswd(String m_id);

	public List<EmplVO> getEmplListWithPaging(SearchCriteria cri);

	public void emplOk(String m_id);

	public int getemplTotalCount();
}
