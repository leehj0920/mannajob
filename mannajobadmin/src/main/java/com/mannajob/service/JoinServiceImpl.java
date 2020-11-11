package com.mannajob.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.mannajob.domain.EmplVO;
import com.mannajob.domain.MemberVO;
import com.mannajob.mapper.JoinMapper;
import com.mannajob.util.FileUtils;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class JoinServiceImpl implements JoinService {
	@Setter(onMethod_ = @Autowired)
	private JoinMapper mapper;
	
	@Resource(name="fileUtils")
	private FileUtils fileUtils;

	@Override
	public void MemJoin(MemberVO member) {
		mapper.MemJoin(member);
	}
	
	@Override
	public void EmplJoin(EmplVO empl, MultipartHttpServletRequest mpRequest) throws Exception {
		mapper.EmplJoin(empl);
		
		List<Map<String, Object>> list = fileUtils.parseInsertFileInfo(empl, mpRequest);
		int size = list.size();
		for(int i = 0; i < size; i ++) {
			mapper.insertFile(list.get(i));
		}
	}
	
	@Override
	public void insertFile(Map<String, Object> map) throws Exception {
		mapper.EmplJoin("EmplMapper.insertFile", map);
	}
}
