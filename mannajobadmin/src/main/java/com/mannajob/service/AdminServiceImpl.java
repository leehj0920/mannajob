package com.mannajob.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mannajob.domain.EmplFileVO;
import com.mannajob.domain.EmplVO;
import com.mannajob.domain.MemberVO;
import com.mannajob.domain.SearchCriteria;
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
	public List<MemberVO> getMemList(SearchCriteria cri) {
		return mapper.getMemListWithPaging(cri);
	}

	@Override
	public int getTotal() {
		return mapper.getTotalCount();
	}

	@Override
	public void resetPasswd(String m_id) {
		mapper.resetPasswd(m_id);
	}

	@Override
	public List<EmplVO> getEmplList(SearchCriteria cri) {
		return mapper.getEmplListWithPaging(cri);
	}

	@Override
	public void emplOk(int e_num) {
		mapper.emplOk(e_num);
	}

	@Override
	public int getemplTotal() {
		return mapper.getemplTotalCount();
	}

	@Override
	public List<EmplFileVO> emplApply(int e_num) {
		return mapper.emplApply(e_num);
	}

	@Override
	public String emplImage(int e_num) {
		return mapper.emplImage(e_num);
	}

}
