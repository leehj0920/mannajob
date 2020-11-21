package com.mannajob.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mannajob.domain.BMatchVO;
import com.mannajob.domain.Criteria;
import com.mannajob.domain.MatchVO;
import com.mannajob.mapper.MatchMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class MatchServiceImpl implements MatchService {
	@Setter(onMethod_ = @Autowired)
	private MatchMapper mapper;

	@Override
	public List<MatchVO> searchBmatMat(int b_num) {
		return mapper.searchBmatMat(b_num);
	}

	@Override
	public List<BMatchVO> searchMat(String m_id) {
		return mapper.searchMat(m_id);
	}

	
	@Override public List<BMatchVO> searchBMat(String m_id) {
		return mapper.searchBMat(m_id); }

	@Override
	public void insert(MatchVO matchVO) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateTime(MatchVO matchVO) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void reject(MatchVO matchVO) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void finish(MatchVO matchVO) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void cancel(MatchVO matchVO) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public int checkMatNum(MatchVO matchVO) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int checkWrite(MatchVO matchVO) {
		// TODO Auto-generated method stub
		return 0;
	}
	

	@Override
	public List<MatchVO> getbMatchMatlist(int b_num) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<MatchVO> getMatlistPaging(int b_num, Criteria cri) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int getCount(int b_num) {
		// TODO Auto-generated method stub
		return 0;
	}
	
	
	@Override
	public List<BMatchVO> searchWMat(String m_id) {
		return mapper.searchWMat(m_id);
	}

	@Override
	public MatchVO findfinalMat(int b_num) {
		return mapper.findfinalMat(b_num);
	}
	
}
