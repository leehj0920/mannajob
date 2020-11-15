package com.mannajob.domain;

import lombok.Data;

@Data
public class MemberEmplVO {
	private int e_num;
	private String m_id;
	private String m_api;
	private String m_passwd;
	private String m_name;
	private String m_phone;
	private String m_email;
	private String m_cdate;
	private String m_stop;
    private String m_del;
	private String e_corp;
	private String e_dept;
	private String e_rank;
	private String e_task;
	private String e_career;
	private String e_intro;
	private String e_ok;
	private String e_applydate;
	private String e_okdate;
	private String e_del;
	private MemberVO memberVO;
	private EmplVO emplVO;
}
