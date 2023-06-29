package com.ezen.phonefly2.dao;

import org.apache.ibatis.annotations.Mapper;

import com.ezen.phonefly2.dto.MemberVO;

@Mapper
public interface IMemberDao {

	MemberVO getMember(String id);
	void joinKakao(MemberVO mvo);

}
