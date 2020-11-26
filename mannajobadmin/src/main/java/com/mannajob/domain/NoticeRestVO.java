package com.mannajob.domain;

import lombok.Data;

@Data
public class NoticeRestVO {
	private int n_num;
	private String n_subject;
	private String ad_id;
	private String n_contents;
	private int n_cnt;
	private String n_wdate;
	private String n_udate;
	private String n_del;
}
