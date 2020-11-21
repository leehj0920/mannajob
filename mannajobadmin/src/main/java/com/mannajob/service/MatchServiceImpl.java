package com.mannajob.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mannajob.domain.BMatchVO;
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
	

//	@Override
//	public List<BMatchVO> searchWMat(String m_id) {
//		return mapper.searchWMat(m_id);
//	}

}
