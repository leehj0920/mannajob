package com.mannajob.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mannajob.domain.MemberVO;
import com.mannajob.mapper.MemberMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class MemberServiceImpl implements MemberService {
	@Setter(onMethod_ = @Autowired)
	private MemberMapper mapper;
	
	@Override
	public boolean LoginSelect(MemberVO member) {
		return mapper.LoginSelect(member) == 1;	 //로그인 됐을 시 true 리턴
	}

}
