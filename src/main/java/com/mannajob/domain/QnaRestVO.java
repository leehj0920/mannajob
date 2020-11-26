package com.mannajob.domain;

import lombok.Data;
@Data
public class QnaRestVO {
	private int q_num;
	private String q_category;
	private String m_id;
	private String q_contents;
	private String q_wdate;
	private String q_udate;
	private String q_del;
	private String q_subject;
	private int reply_chk;
	private int qs_num;
	private String ad_id;
	private String qs_contents;
	private String qs_wdate;
	private String qs_udate;
	private String qs_del;
}
