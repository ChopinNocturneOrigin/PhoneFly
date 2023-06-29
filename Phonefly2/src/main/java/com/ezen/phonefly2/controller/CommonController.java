package com.ezen.phonefly2.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ezen.phonefly2.dto.NoticeVO;
import com.ezen.phonefly2.service.CommonService;

@Controller
public class CommonController {

	@Autowired
	CommonService cs;

	@RequestMapping("/noticeList")
	public String noticeList(Model model) {

		ArrayList<NoticeVO> noticeList = cs.getNoticeList();
		model.addAttribute("noticeList", noticeList);
		return "notice/noticeList";

	}
	
	@RequestMapping("/noticeDetail")
	public String noticeDetail(@RequestParam("nseq") int nseq, Model model) {
		
		NoticeVO noticeVO = cs.getNotice(nseq);
		model.addAttribute("noticeVO", noticeVO);
		return "notice/noticeDetail";
		
	}

}
