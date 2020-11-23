package com.mannajob.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mannajob.domain.BMatchVO;
import com.mannajob.domain.Criteria;
import com.mannajob.domain.MatchVO;
import com.mannajob.mapper.BMatchMapper;
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
	@Setter(onMethod_ = @Autowired)
	private BMatchMapper bmatchmapper;

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
	public boolean insert(MatchVO matchVO) {
		BMatchVO bmatchVO = bmatchmapper.read(matchVO.getB_num());
		if(bmatchVO.getB_state().equals("A")) {
			mapper.insert(matchVO);
			return true;
		}else {
			return false;
		}
	}

	@Override
	public void updateTime(MatchVO matchVO) {
		mapper.updateTime(matchVO);
		
	}

	@Override
	public void reject(MatchVO matchVO) {
		mapper.reject(matchVO.getMat_num());
		
	}
	@Transactional
	@Override
	public void finish(MatchVO matchVO) {
		mapper.finish(matchVO.getMat_num());
		mapper.rejectother(matchVO.getB_num(),matchVO.getM_id());
		
	}

	@Override
	public void cancel(MatchVO matchVO) {
		mapper.cancel(matchVO.getMat_num());
		
	}

	@Override
	public int checkMatNum(MatchVO matchVO) {
		return mapper.checkmat_num(matchVO.getB_num(),matchVO.getM_id());
	}

	@Override
	public int checkWrite(MatchVO matchVO) {
		return mapper.checkWrite(matchVO.getB_num(),matchVO.getM_id());
	}
	

	@Override
	public List<MatchVO> getbMatchMatlist(int b_num) {
		
		return mapper.getbMatchMatlist(b_num);
	}

	@Override
	public List<MatchVO> getMatlistPaging(int b_num, Criteria cri) {

		return mapper.getMatlistPaging(b_num, cri);
	}

	@Override
	public int getCount(int b_num) {
		return getCount(b_num);
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
