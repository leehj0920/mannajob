package com.mannajob.mapper;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.mannajob.domain.BMatchVO;
import com.mannajob.domain.EmplVO;
import com.mannajob.domain.ReviewVO;

public interface MainMapper {
	public List<BMatchVO> searchEmplMat(@Param("m_id") String m_id);
	
}
