package com.ezen.phonefly2.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.ezen.phonefly2.dto.QnaVO;
import com.ezen.phonefly2.util.Paging;

@Mapper
public interface IQnaDao {

	List<QnaVO> qnaList(Paging paging, String key);
	QnaVO getQna(int qseq);
	

}
