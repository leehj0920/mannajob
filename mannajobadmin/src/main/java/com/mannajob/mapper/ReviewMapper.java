package com.mannajob.mapper;

import org.apache.ibatis.annotations.Param;

public interface ReviewMapper {
	public void insertR(@Param("mat_num") int mat_num, @Param("good") String good, @Param("contents") String contents, @Param("b_id") String b_id, @Param("w_id") String w_id);
}
