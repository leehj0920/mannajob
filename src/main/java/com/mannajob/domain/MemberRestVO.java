package com.mannajob.domain;

import lombok.Data;

@Data
public class MemberRestVO {
    private String m_id;
    private String m_api;
    private String m_name;
    private String m_phone;
    private String m_email;
    private String m_stop;
    private int e_num;
    private String stored_file_name;
}
