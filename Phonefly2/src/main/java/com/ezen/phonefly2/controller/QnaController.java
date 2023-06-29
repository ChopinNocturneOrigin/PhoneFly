package com.ezen.phonefly2.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ezen.phonefly2.dto.MemberVO;
import com.ezen.phonefly2.service.QnaService;

@Controller
public class QnaController {
	
	@Autowired
	QnaService qs;
	
	@RequestMapping("qnaList")
	public ModelAndView qnaList(HttpServletRequest request) {
		
		ModelAndView mav = new ModelAndView();
		HttpSession session = request.getSession();
		MemberVO mvo = (MemberVO)session.getAttribute("loginUser");
		if(mvo == null) mav.setViewName("member/loginForm");
		else {
			mav.addObject("qnaList", qs.qnaList());
			mav.setViewName("qna/qnaList");
		}
		return mav;
	}
	
	@RequestMapping("/qnaView")
	public ModelAndView qanView(HttpServletRequest request, @RequestParam("qseq") int qseq) {
		
		ModelAndView mav = new ModelAndView();
		HttpSession session = request.getSession();
		MemberVO mvo = (MemberVO) session.getAttribute("loginUser");
		if(mvo == null) mav.setViewName("member/login");
		else {
			mav.addObject("qnaVO", qs.getQna(qseq));
			mav.setViewName("qna/qnaView");
		}
		return mav;
	}

}
