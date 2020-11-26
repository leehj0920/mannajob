package com.mannajob.domain;

import lombok.Data;

@Data
public class CalendarVO {
	//게시글
	private int b_num;
	//매칭
    private String m_id;
    //테이블
    private String m_phone;
    private String mat_stdate;
    private String mat_hour;
    private String b_location;
}
