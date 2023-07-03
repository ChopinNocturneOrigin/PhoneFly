package com.ezen.phonefly2.controller;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ezen.phonefly2.service.MyPageService;

@Controller
public class MyPageController {

	@Autowired
	MyPageService mps;

	@RequestMapping("/memberReviewList")
	public ModelAndView memberReviewList(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		HashMap<String, Object> result = new HashMap<>();
		result.put("request", request);
		mps.memberReviewList(result);
		mav.addObject("reviewList", result.get("reviewList"));
		mav.addObject("paging", result.get("paging"));
		mav.setViewName("reviewList");
		return mav;
	}
}
