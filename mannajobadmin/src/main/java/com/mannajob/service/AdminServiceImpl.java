package com.mannajob.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mannajob.domain.Criteria;
import com.mannajob.domain.MemberVO;
import com.mannajob.mapper.AdminMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class AdminServiceImpl implements AdminService {
	@Setter(onMethod_ = @Autowired)
	private AdminMapper mapper;
	
	/*
	 * public void MemSearch(String m_id) { mapper.MemSearch(m_id); }
	 */

	@Override
	public List<MemberVO> getMemList(Criteria cri) {
		// TODO Auto-generated method stub
		return mapper.getMemListWithPaging(cri);
	}

	@Override
	public int getTotal() {
		return mapper.getTotalCount();
	}
}
