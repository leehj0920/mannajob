package com.mannajob.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.mannajob.domain.ComplVO;
import com.mannajob.domain.Criteria;

public interface ComplMapper {
	
	public void insert(ComplVO complVO);
	
	public List<ComplVO> getListWithPaging(@Param("cri") Criteria cri, @Param("b_category") String b_category);
	
	public List<ComplVO> getItem(String m_id);
	
	public void update(ComplVO complVO);
	
	
	public void StateChange(ComplVO complVO);
	
	public int getTotalB(String b_category);
	

}
