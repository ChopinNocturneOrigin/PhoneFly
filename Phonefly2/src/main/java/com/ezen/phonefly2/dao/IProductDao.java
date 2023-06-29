package com.ezen.phonefly2.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.ezen.phonefly2.dto.ProductVO;
import com.ezen.phonefly2.dto.RplanVO;

@Mapper
public interface IProductDao {

	ProductVO getProduct(int pseq);
	List<ProductVO> getMfcList(String mfc);
	List<RplanVO> getRplanList();

}
