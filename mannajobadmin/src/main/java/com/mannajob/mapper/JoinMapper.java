package com.mannajob.mapper;

import com.mannajob.domain.EmplVO;
import com.mannajob.domain.MemberVO;

public interface JoinMapper {
	
	public void MemJoin(MemberVO member);
	
	public void EmplJoin(EmplVO empl);

}
