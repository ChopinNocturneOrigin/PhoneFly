package com.ezen.phonefly2.service;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezen.phonefly2.dao.ICommonDao;
import com.ezen.phonefly2.dao.IMyPageDao;
import com.ezen.phonefly2.dto.NoticeVO;
import com.ezen.phonefly2.dto.ReviewVO;
import com.ezen.phonefly2.util.Paging;

@Service
public class MyPageService {

	@Autowired
	IMyPageDao mpdao;

	@Autowired
	ICommonDao cdao;

	public void memberReviewList(HashMap<String, Object> result) {
		HttpServletRequest request = (HttpServletRequest)result.get("request");
		HttpSession session = request.getSession();
		int page = 1;
		session.removeAttribute("page");
		if (request.getParameter("page") != null) {
			page = Integer.parseInt(request.getParameter("page"));
		}
		Paging paging = new Paging();
		paging.setPage(page);
		int count = cdao.getAllCount("review");
		paging.setTotalCount(count);
		session.setAttribute("page", page);
		List<ReviewVO> reviewList = mpdao.getReviewList(paging);
		result.put("reviewList", reviewList);
		result.put("paging", paging);
	}
}
