package com.mannajob.domain;

import lombok.Data;

@Data
public class MemberVO {
	private String m_id;
	private String m_api;
	private String m_passwd;
	private String m_name;
	private String m_phone;
	private String m_email;
	private String m_cdate;
	private String m_stop;
    private String m_del;
}
