package com.ezen.phonefly2.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.ezen.phonefly2.dto.NoticeVO;
@Mapper
public interface ICommonDao {

	ArrayList<NoticeVO> getNoticeList();
	NoticeVO getNotice(int nseq);
	
}
