package com.ezen.phonefly2.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezen.phonefly2.dao.IQnaDao;
import com.ezen.phonefly2.dto.QnaVO;

@Service
public class QnaService {

	@Autowired
	IQnaDao qdao;
	
	public List<QnaVO> qnaList() {
		return qdao.qnaList();
	}

	public QnaVO getQna(int qseq) {
		return qdao.getQna(qseq);
	}

}
