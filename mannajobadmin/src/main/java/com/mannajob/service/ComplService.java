package com.mannajob.service;

import java.util.List;

import com.mannajob.domain.ComplVO;
import com.mannajob.domain.Criteria;

public interface ComplService {
	
	public void insert(ComplVO complVO);
	
	public List<ComplVO> getListWithPaging(Criteria cri, String b_category);
	
	public List<ComplVO> getItem(String m_id);
	
	public void update(ComplVO complVO);
	
	
	public void StateChange(ComplVO complVO);
	
	public int getTotalB(String b_category);

}
