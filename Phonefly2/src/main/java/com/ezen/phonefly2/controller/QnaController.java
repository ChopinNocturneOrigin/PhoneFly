package com.ezen.phonefly2.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ezen.phonefly2.dto.MemberVO;
import com.ezen.phonefly2.dto.QnaVO;
import com.ezen.phonefly2.service.QnaService;
import com.ezen.phonefly2.util.Paging;

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
			HashMap<String, Object> result = qs.qnaList(request);
			List<QnaVO> qnaList = (List<QnaVO>)result.get("qnaList");
			
			mav.addObject("qnaList", qnaList);
			mav.addObject("paging", (Paging)result.get("paging"));
			mav.addObject("key", (String)result.get("key"));
			
			mav.setViewName("qna/qnaList");
		}
		return mav;
	}
	
	@RequestMapping("/qnaDetail")
	public ModelAndView qanView(HttpServletRequest request, @RequestParam("qseq") int qseq) {
		
		ModelAndView mav = new ModelAndView();
		HttpSession session = request.getSession();
		MemberVO mvo = (MemberVO) session.getAttribute("loginUser");
		if(mvo == null) mav.setViewName("member/login");
		else {
			mav.addObject("qnaVO", qs.getQna(qseq));
			mav.setViewName("qna/qnaDetail");
		}
		return mav;
	}

	@RequestMapping("/qnaWriteForm")
	public String qnaWriteForm(Model model, HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		MemberVO mvo = (MemberVO)session.getAttribute("loginUser");
		
		if(mvo==null)return "member/login";
		
		else return "qna/qnaWriteForm";
	}
	
	@PostMapping(value="/qnaWrite")
	public ModelAndView qnaWrite() {
		
	}
}
