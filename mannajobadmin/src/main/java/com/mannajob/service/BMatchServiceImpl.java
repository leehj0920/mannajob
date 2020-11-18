package com.mannajob.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mannajob.domain.BMatchVO;
import com.mannajob.domain.Criteria;
import com.mannajob.domain.CriteriaProfile;
import com.mannajob.domain.EmplVO;
import com.mannajob.mapper.BMatchMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class BMatchServiceImpl implements BMatchService{
	@Setter(onMethod_=@Autowired)
	private BMatchMapper mapper;
	
	@Override
	public List<BMatchVO> getList(BMatchVO bMatchVO) {
		if(bMatchVO.getB_category()==null||"".equals(bMatchVO.getB_category())){
			bMatchVO.setB_category("");
		}
		return mapper.getList(bMatchVO.getB_category());
	}

	@Override
	public List<BMatchVO> getListWithPaging(Criteria cri,BMatchVO bMatchVO) {
		if(bMatchVO.getB_category()==null||"".equals(bMatchVO.getB_category())){
			bMatchVO.setB_category("");
		}
		return mapper.getListWithPaging(cri,bMatchVO.getB_category());
	}

	@Override
	public List<BMatchVO> search(BMatchVO bMatchVO) {
		if(bMatchVO.getB_location()==null||"".equals(bMatchVO.getB_location())){
			bMatchVO.setB_location("");
		}
		if(bMatchVO.getB_corp()==null||"".equals(bMatchVO.getB_corp())){
			bMatchVO.setB_corp("");
		}
		if(bMatchVO.getB_task()==null||"".equals(bMatchVO.getB_task())){
			bMatchVO.setB_task("");
		}
		if(bMatchVO.getB_category()==null||"".equals(bMatchVO.getB_category())){
			bMatchVO.setB_category("");
		}
		return mapper.search(bMatchVO);
	}

	@Override
	public List<BMatchVO> searchWithPaging(BMatchVO bMatchVO, Criteria cri) {
		if(bMatchVO.getB_location()==null||"".equals(bMatchVO.getB_location())){
			bMatchVO.setB_location("");
		}
		if(bMatchVO.getB_corp()==null||"".equals(bMatchVO.getB_corp())){
			bMatchVO.setB_corp("");
		}
		if(bMatchVO.getB_task()==null||"".equals(bMatchVO.getB_task())){
			bMatchVO.setB_task("");
		}
		if(bMatchVO.getB_category()==null||"".equals(bMatchVO.getB_category())){
			bMatchVO.setB_category("");
		}
		return mapper.searchWithPaging(bMatchVO, cri);
	}

	@Override
	public BMatchVO read(int b_num) {
		return mapper.read(b_num);
	}

	@Override
	public void update(BMatchVO bMatchVO) {
		if(bMatchVO.getB_corp()==null||"".equals(bMatchVO.getB_corp())){
			bMatchVO.setB_corp("");
		}
		if(bMatchVO.getB_task()==null||"".equals(bMatchVO.getB_task())){
			bMatchVO.setB_task("");
		}
		mapper.update(bMatchVO);
	}

	@Override
	public void delete(int b_num) {
		mapper.delete(b_num);
	}

	@Override
	public int getTotalCount(Criteria cri,BMatchVO bMatchVO) {
		return mapper.getTotalCount(cri,bMatchVO.getB_category());
	}

	@Override
	public void insert(BMatchVO bMatchVO) {
		mapper.insert(bMatchVO);
	}

	@Override
	public boolean StateChange(int b_num, int state) {
		if(state==0) {
			mapper.stateCancel(b_num);
			return true;
		}else if(state==1){
			mapper.stateFinish(b_num);
			return true;
		}else {
			return false;
		}
	}

	@Override
	public List<EmplVO> searchEmpl(BMatchVO bMatchVO) {
		if(bMatchVO.getB_corp()==null||"".equals(bMatchVO.getB_corp())){
			bMatchVO.setB_corp("");
		}
		if(bMatchVO.getB_task()==null||"".equals(bMatchVO.getB_task())){
			bMatchVO.setB_task("");
		}
		return mapper.searchEmpl(bMatchVO);
	}

	@Override
	public int getEmplCount(BMatchVO bMatchVO) {
		if(bMatchVO.getB_corp()==null||"".equals(bMatchVO.getB_corp())){
			bMatchVO.setB_corp("");
		}
		if(bMatchVO.getB_task()==null||"".equals(bMatchVO.getB_task())){
			bMatchVO.setB_task("");
		}
		return mapper.getemplTotalCount(bMatchVO);
	}

	@Override
	public List<EmplVO> searchEmplPaging(CriteriaProfile cri, BMatchVO bMatchVO) {
		
		if(bMatchVO.getB_corp()==null||"".equals(bMatchVO.getB_corp())){
			bMatchVO.setB_corp("");
		}
		if(bMatchVO.getB_task()==null||"".equals(bMatchVO.getB_task())){
			bMatchVO.setB_task("");
		}
		
		return mapper.searchEmplPaging(bMatchVO,cri);
	}

}
