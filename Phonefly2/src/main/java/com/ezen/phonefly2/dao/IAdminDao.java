package com.ezen.phonefly2.dao;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface IAdminDao {

	String getPwd(String workId);

}
