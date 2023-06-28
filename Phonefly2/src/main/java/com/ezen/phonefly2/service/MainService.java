package com.ezen.phonefly2.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezen.phonefly2.dao.IMainDao;
import com.ezen.phonefly2.dto.ColorVO;
import com.ezen.phonefly2.dto.ProductVO;

@Service
public class MainService {

	@Autowired
	IMainDao mdao;

	public HashMap<String, Object> getMainProduct() {
		HashMap<String, Object> result = new HashMap<>();

		
		List<ProductVO> mainBestList = mdao.getBestList();
		for (ProductVO pvo : mainBestList) {
			List<ColorVO> colorList = mdao.getColorList(pvo.getPseq());
			pvo.setColorList(colorList);
		}
		

		/*
		ArrayList<HashMap<String, Object>> mainBestList = mdao.getBestList();
		for (HashMap<String, Object> pvo : mainBestList) {
			List<ColorVO> colorList = mdao.getColorList(Integer.parseInt(pvo.get("pseq").toString()));
			pvo.put("colorList", colorList);
		}
		*/

		
		List<ProductVO> mainEventList = mdao.getEventList();
		for (ProductVO pvo : mainEventList) {
			List<ColorVO> colorList = mdao.getColorList(pvo.getPseq());
			pvo.setColorList(colorList);
		}
		

		/*
		ArrayList<HashMap<String, Object>> mainEventList = mdao.getEventList();
		for (HashMap<String, Object> pvo : mainEventList) {
			List<ColorVO> colorList = mdao.getColorList(Integer.parseInt(pvo.get("pseq").toString()));
			pvo.put("colorList", colorList);
		}
		*/

		result.put("mainBestList", mainBestList);
		result.put("mainEventList", mainEventList);
		return result;
	}
}
