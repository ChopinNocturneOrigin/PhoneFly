package com.ezen.phonefly2.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.ezen.phonefly2.dto.ProductVO;
import com.ezen.phonefly2.util.Paging;

@Mapper
public interface IAdminDao {

	String getPwd(String workId);

	int getAllCount(String string, String string2, String key);

	List<ProductVO> listProduct(Paging paging, String key);

	

}
