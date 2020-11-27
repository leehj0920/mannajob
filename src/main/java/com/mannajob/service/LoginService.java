package com.mannajob.service;

public interface LoginService {

	public int MemCheck(String m_id);
	
	public String findId(String m_name, String m_email);
}
