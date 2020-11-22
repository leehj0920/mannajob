package com.mannajob.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mannajob.domain.BMatchVO;
import com.mannajob.domain.ReviewVO;
import com.mannajob.mapper.MainMapper;
import com.mannajob.mapper.ProfileMapper;
import com.mannajob.util.FileUtils;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class MainServiceImpl implements MainService {
	@Setter(onMethod_ = @Autowired)
	private MainMapper mapper;
	
	@Override
	public List<BMatchVO> searchEmplMat(String m_id) {
		return mapper.searchEmplMat(m_id);
	}

}
