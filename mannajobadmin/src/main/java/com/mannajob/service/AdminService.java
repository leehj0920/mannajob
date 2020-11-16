package com.mannajob.service;

import java.util.List;

import com.mannajob.domain.EmplFileVO;
import com.mannajob.domain.EmplVO;
import com.mannajob.domain.MemberVO;
import com.mannajob.domain.SearchCriteria;

public interface AdminService {

//	public void MemSearch(String m_id);

	public List<MemberVO> getMemList(SearchCriteria cri);
	
	public int getTotal();
	
	public void resetPasswd(String m_id);

	public List<EmplVO> getEmplList(SearchCriteria cri);
	
	public void emplOk(int e_num);
	
	public int getemplTotal();
	
	public List<EmplFileVO> emplApply(int e_num);

	public String emplImage(int e_num);
}
