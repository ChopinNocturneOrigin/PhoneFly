package com.ezen.phonefly2.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ezen.phonefly2.dto.ColorVO;
import com.ezen.phonefly2.dto.ProductVO;
import com.ezen.phonefly2.dto.RplanVO;
import com.ezen.phonefly2.service.ProductService;

@Controller
public class ProductController {

	@Autowired
	ProductService ps;
	

	@RequestMapping("/productDetail")
	public ModelAndView productDetail(@RequestParam("pseq") int pseq) {
		ModelAndView mav = new ModelAndView();
		HashMap<String, Object> result = ps.getProduct(pseq);
		
		ProductVO pvo = (ProductVO)result.get("productVO");
	    List<ColorVO> colorList = (List<ColorVO>) result.get("colorList");
	    List<RplanVO> rplanList = (List<RplanVO>) result.get("rplanList");
	    
	    mav.addObject("productVO", pvo);
	    mav.addObject("colorList", colorList);
	    mav.addObject("rplanVO", rplanList);
	    mav.setViewName("product/productDetail");
	    
	    return mav;

	}

	@RequestMapping("/productList")
	public ModelAndView productList(@RequestParam("mfc") String mfc) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("productList", ps.getMfcList(mfc));
		mav.setViewName("product/productList");
		return mav;
	}

	@RequestMapping("/productCompare")
	public ModelAndView productCompare(@RequestParam("pseq") String[] pseqArr) {
	    ModelAndView mav = new ModelAndView();
	    
	    ArrayList<ProductVO> productList = new ArrayList<>();
	    for (String pseq : pseqArr) {
	        int pseqInt = Integer.parseInt(pseq);
			HashMap<String, Object> result = ps.getProduct(pseqInt);
			
			ProductVO pvo = (ProductVO)result.get("productVO");
		    List<ColorVO> colorList = (List<ColorVO>) result.get("colorList");
		    List<RplanVO> rplanList = (List<RplanVO>) result.get("rplanList");
		    
		    mav.addObject("productVO", pvo);
		    mav.addObject("colorList", colorList);
		    mav.addObject("rplanVO", rplanList);
		    mav.setViewName("product/productCompare");
	    }
	    
	    
	    return mav;
	}

}
