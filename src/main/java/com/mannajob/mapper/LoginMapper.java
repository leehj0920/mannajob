package com.mannajob.mapper;

import org.apache.ibatis.annotations.Param;

public interface LoginMapper {
	
	public int MemCheck(String m_id);
	
	public String findId(@Param("m_name") String m_name, @Param("m_email") String m_email);
}
