package com.ezen.phonefly2.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.ezen.phonefly2.dto.ColorVO;
import com.ezen.phonefly2.dto.ProductVO;

@Mapper
public interface IMainDao {

	List<ProductVO> getBestList();
	List<ProductVO> getEventList();
	//ArrayList<HashMap<String, Object>> getBestList();
	//ArrayList<HashMap<String, Object>> getEventList();
	List<ColorVO> getColorList(int pseq);

}
