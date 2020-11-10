package com.mannajob.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mannajob.domain.EmplVO;
import com.mannajob.domain.MemberVO;
import com.mannajob.mapper.JoinMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class JoinServiceImpl implements JoinService {
	@Setter(onMethod_ = @Autowired)
	private JoinMapper mapper;

	@Override
	public void MemJoin(MemberVO member) {
		mapper.MemJoin(member);
	}
	
	@Override
	public void EmplJoin(EmplVO empl) {
		mapper.EmplJoin(empl);
	}
}
