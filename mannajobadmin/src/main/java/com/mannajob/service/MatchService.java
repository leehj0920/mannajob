package com.mannajob.service;

import java.util.List;

import com.mannajob.domain.BMatchVO;
import com.mannajob.domain.MatchVO;

public interface MatchService {
	
	public List<MatchVO> searchBmatMat(int b_num);
	
	public List<BMatchVO> searchMat(String m_id);
	
//	public List<BMatchVO> searchBMat(String m_id);
	
	public List<BMatchVO> searchWMat(String m_id);
	
}
