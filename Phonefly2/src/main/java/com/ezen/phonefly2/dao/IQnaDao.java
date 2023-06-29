package com.ezen.phonefly2.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.ezen.phonefly2.dto.QnaVO;

@Mapper
public interface IQnaDao {

	List<QnaVO> qnaList();
	QnaVO getQna(int qseq);
	

}
