package com.mannajob.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.mannajob.domain.BMatchVO;
import com.mannajob.domain.Criteria;

public interface BMatchMapper {
//	전체검색
	public List<BMatchVO> getList(@Param("b_category")String b_category);
	
	public List<BMatchVO> getListWithPaging(@Param("cri") Criteria cri, @Param("b_category")String b_category);
	
	public void insert(BMatchVO bMatchVO);
	
	public BMatchVO read(int b_num);
	
	public void delete(int b_num);
	
	public void update(BMatchVO bMatchVO);
	
	public int getTotalCount(@Param("cri") Criteria cri, @Param("b_category")String b_category);
//	완료처리
	public void stateFinish(int b_num);
//	취소처리
	public void stateCancel(int b_num);
//  검색
	public List<BMatchVO> search(BMatchVO bMatchVO);
	
	public List<BMatchVO> searchWithPaging(@Param("bMatchVO")BMatchVO bMatchVO,@Param("cri")Criteria cri);

	
}
