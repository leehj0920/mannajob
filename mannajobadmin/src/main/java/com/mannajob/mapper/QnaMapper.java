package com.mannajob.mapper;

import java.util.List;

import com.mannajob.domain.Criteria;
import com.mannajob.domain.QnaVO;

public interface QnaMapper {
	public List<QnaVO> getList();
	
	public List<QnaVO> getListWithPaging(Criteria cri);
	
	public void insert(QnaVO qna);
	
	public void insertSel(QnaVO qna);
	
	public void insertSub(QnaVO qna);
	
	public QnaVO read(int q_num);
	
	public int update(QnaVO qna);
	
	public int updateSub(QnaVO qna);

	public int delete(int q_num);
	
	public int deleteSub(int qs_num);
	
	public int getTotalCount(Criteria cri);
}
