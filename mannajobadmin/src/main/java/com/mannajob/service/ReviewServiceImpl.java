package com.mannajob.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mannajob.mapper.ReviewMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class ReviewServiceImpl implements ReviewService {
	@Setter(onMethod_ = @Autowired)
	private ReviewMapper mapper;

	@Override
	public void insertR(int mat_num, String r_good, String r_contents, String r_w_m_id, String r_mat_m_id) {
		mapper.insertR(mat_num, r_good, r_contents, r_w_m_id, r_mat_m_id);
	}

	@Override
	public void updateR(int mat_num, String r_good, String r_contents) {
		mapper.updateR(mat_num, r_good, r_contents);
	}

}