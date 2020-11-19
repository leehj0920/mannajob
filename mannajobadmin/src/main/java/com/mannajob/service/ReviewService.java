package com.mannajob.service;

public interface ReviewService {

	public void insertR(int mat_num, String r_good, String r_contents, String r_w_m_id, String r_mat_m_id);

	public void updateR(int mat_num, String r_good, String r_contents);
}
