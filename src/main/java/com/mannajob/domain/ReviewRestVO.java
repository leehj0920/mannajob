package com.mannajob.domain;

import lombok.Data;

@Data
public class ReviewRestVO {
	private int r_num;
	private int mat_num;
	private String r_good;
	private String r_contents;
	private String r_wdate;
	private String r_del;
	private String r_w_m_id;
	private String r_mat_m_id;
	private int countG;
	private int countR;
}

