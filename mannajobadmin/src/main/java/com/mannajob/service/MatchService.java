package com.mannajob.service;

import java.util.List;

import com.mannajob.domain.BMatchVO;
import com.mannajob.domain.Criteria;
import com.mannajob.domain.MatchVO;

public interface MatchService {
	
	public List<MatchVO> searchBmatMat(int b_num);
	
	public List<BMatchVO> searchMat(String m_id);
	
	public List<BMatchVO> searchBMat(String m_id);
	
//	public List<BMatchVO> searchWMat(String m_id);
	
	public void insert(MatchVO matchVO);
	
	public void updateTime(MatchVO matchVO);
	
	public void reject(MatchVO matchVO);
	
	public void finish(MatchVO matchVO);
	
	public void cancel(MatchVO matchVO);
	
	public int checkMatNum(MatchVO matchVO);
	
	public int checkWrite(MatchVO matchVO);
	
	public List<MatchVO> getbMatchMatlist(int b_num);
	
	public List<MatchVO> getMatlistPaging(int b_num, Criteria cri);
	
	public int getCount(int b_num);
}
