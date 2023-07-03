package com.ezen.phonefly2.service;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezen.phonefly2.dao.ICommonDao;
import com.ezen.phonefly2.dto.EventVO;
import com.ezen.phonefly2.dto.NoticeVO;
import com.ezen.phonefly2.util.Paging;

@Service
public class CommonService {
	// 다시작성 : bhs
	
	@Autowired
	ICommonDao cdao;

	public void getNoticeList(HashMap<String, Object> result) {
		HttpServletRequest request = (HttpServletRequest)result.get("request");
		HttpSession session = request.getSession();
		int page = 1;
		session.removeAttribute("page");
		if (request.getParameter("page") != null) {
			page = Integer.parseInt(request.getParameter("page"));
		}
		Paging paging = new Paging();
		paging.setPage(page);
		int count = cdao.getAllCount("notice");
		paging.setTotalCount(count);
		session.setAttribute("page", page);
		List<NoticeVO> noticeList = cdao.getNoticeList(paging);
		result.put("noticeList", noticeList);
		result.put("paging", paging);
	}

	public NoticeVO getNotice(int nseq) {
		return cdao.getNotice(nseq);
	}

	public void getEventList(HashMap<String, Object> result) {
		HttpServletRequest request = (HttpServletRequest)result.get("request");
		HttpSession session = request.getSession();
		int page = 1;
		session.removeAttribute("page");
		if (request.getParameter("page") != null) {
			page=Integer.parseInt(request.getParameter("page"));
		}
		Paging paging = new Paging();
		paging.setPage(page);
		int count = cdao.getAllCount("event");
		paging.setTotalCount(count);
		session.setAttribute("page", page);
		List<EventVO> noticeList = cdao.getEventList(paging);
		result.put("noticeList", noticeList);
		result.put("paging", paging);
	}

	public EventVO getEvent(int eseq) {
		return cdao.getEvent(eseq);
	}

}
