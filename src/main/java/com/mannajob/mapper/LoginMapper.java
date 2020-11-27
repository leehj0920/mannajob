package com.mannajob.mapper;

import org.apache.ibatis.annotations.Param;

public interface LoginMapper {
	
	public int MemCheck(String m_id);
	
	public String findId(@Param("m_name") String m_name, @Param("m_email") String m_email);
	
	public int myreset(@Param("m_id") String m_id, @Param("m_name") String m_name, @Param("m_email") String m_email);
	
	public void pwreset(@Param("m_id") String m_id, @Param("m_passwd") String m_passwd);
}
