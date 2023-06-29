package com.ezen.phonefly2.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezen.phonefly2.dao.ICommonDao;
import com.ezen.phonefly2.dto.NoticeVO;
@Service
public class CommonService {

	@Autowired
	ICommonDao cdao;
	
	public ArrayList<NoticeVO> getNoticeList() {
		return cdao.getNoticeList();
	}

	public NoticeVO getNotice(int nseq) {
		return cdao.getNotice(nseq);
	}

}
