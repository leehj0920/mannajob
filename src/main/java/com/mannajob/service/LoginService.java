package com.mannajob.service;

public interface LoginService {

	public int MemCheck(String m_id);
	
	public String findId(String m_name, String m_email);
	
	public boolean myreset(String m_id, String m_name, String m_email);
	
	public void pwreset(String m_id, String m_passwd);
}
