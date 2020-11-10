package com.mannajob.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.mannajob.domain.MemberVO;
import com.mannajob.mapper.JoinMapper;

import lombok.Setter;

public class JoinServiceImpl implements JoinService {
	@Setter(onMethod_ = @Autowired)
	private JoinMapper mapper;

	@Override
	public void Join(MemberVO member) {
		mapper.Join(member);
	}
}
