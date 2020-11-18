package com.mannajob.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.mannajob.domain.BMatchVO;
import com.mannajob.domain.EmplVO;
import com.mannajob.domain.MatchVO;
import com.mannajob.domain.MemberVO;
import com.mannajob.mapper.ProfileMapper;
import com.mannajob.util.FileUtils;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class ProfileServiceImpl implements ProfileService {
	@Setter(onMethod_ = @Autowired)
	private ProfileMapper mapper;
	
	@Resource(name="fileUtils")
	private FileUtils fileUtils;
	
	@Override
	public MemberVO getMemProfile(String m_id) {
		return mapper.getMemProfile(m_id);
	}
	
	@Override
	public void updateProfile(MemberVO member) {
		mapper.updateProfile(member);
	}
	
	@Override
	public EmplVO getEmplProfile(String m_id) {
		return mapper.getEmplProfile(m_id);
	}
	
	@Override
	public void EmplJoin(EmplVO empl, MultipartHttpServletRequest mpRequest) throws Exception {
		mapper.EmplJoin(empl);
		empl = mapper.getEmplProfile(empl.getM_id());
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

	@Override
	public List<BMatchVO> searchBMat(String m_id) {
		return mapper.searchBMat(m_id);
	}

	@Override
	public List<MatchVO> searchBmatMat(int b_num) {
		return mapper.searchBmatMat(b_num);
	}

	@Override
	public List<BMatchVO> searchMat(String m_id) {
		return mapper.searchMat(m_id);
	}
}
