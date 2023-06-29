package com.ezen.phonefly2.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezen.phonefly2.dao.IMainDao;
import com.ezen.phonefly2.dao.IProductDao;
import com.ezen.phonefly2.dto.ColorVO;
import com.ezen.phonefly2.dto.ProductVO;

@Service
public class ProductService {

	@Autowired
	IProductDao pdao;
	@Autowired
	IMainDao mdao;

	public ProductVO getProduct(int pseq) {

		ProductVO pvo = new ProductVO();
		List<ColorVO> colorList = mdao.getColorList(pvo.getPseq());
		pvo.setColorList(colorList);

		return pvo;
	}

	public List<ProductVO> getMfcList(String mfc) {

		List<ProductVO> mfcList = pdao.getMfcList(mfc);

		for (ProductVO pvo : mfcList) {
			List<ColorVO> colorList = mdao.getColorList(pvo.getPseq());
			pvo.setColorList(colorList);
		}
		return mfcList;
	}
	
}
