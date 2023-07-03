package com.ezen.phonefly2.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.ezen.phonefly2.dto.ReviewVO;
import com.ezen.phonefly2.util.Paging;

@Mapper
public interface IMyPageDao {

	List<ReviewVO> getReviewList(Paging paging);

}
