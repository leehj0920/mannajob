package com.mannajob.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.mannajob.domain.BMatchVO;
import com.mannajob.domain.Criteria;
import com.mannajob.domain.MatchVO;

public interface MatchMapper {
	
// 아직 매퍼xml을 만들지 않았으므로 사용에 주의
	public List<MatchVO> getList(BMatchVO bmatchVO);
//	
	public List<MatchVO> getListWithPaging(@Param("cri") Criteria cri, @Param("bmatchVO") BMatchVO bmatchVO);
//	
	public MatchVO getItem(BMatchVO bmatchVO);
//	
	public void delete(BMatchVO bmatchVO);
//		
	public void update(@Param("b_num")int b_num, @Param("matchVO") MatchVO matchVO);
//	
	public int getTotal(BMatchVO bmatchVO);
//	
	public List<MatchVO> searchBmatMat(int b_num);
	
	public List<BMatchVO> searchMat(@Param("m_id") String m_id);
	
//	public List<BMatchVO> searchBMat(String m_id);
	
	public List<BMatchVO> searchWMat(String m_id);
	
}
