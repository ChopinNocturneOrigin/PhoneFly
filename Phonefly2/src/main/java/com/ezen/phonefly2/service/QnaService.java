package com.ezen.phonefly2.service;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezen.phonefly2.dao.ICommonDao;
import com.ezen.phonefly2.dao.IQnaDao;
import com.ezen.phonefly2.dto.QnaVO;
import com.ezen.phonefly2.util.Paging;

@Service
public class QnaService {

	@Autowired
	IQnaDao qdao;
	@Autowired
	ICommonDao cdao;
	
	public HashMap<String, Object> qnaList(HttpServletRequest request) {
		HashMap<String, Object> result = new HashMap<>();
		HttpSession session = request.getSession();
		
		
		if (request.getParameter("first") != null) {
			session.removeAttribute("page");
			session.removeAttribute("key");
		}

		int page = 1;
		if (request.getParameter("page") != null) {
			page = Integer.parseInt(request.getParameter("page"));
			session.setAttribute("page", page);
		} else if (session.getAttribute("page") != null) {
			page = (int) session.getAttribute("page");
		} else {
			page = 1;
			session.removeAttribute("page");
		}

		String key = "";
		if (request.getParameter("key") != null) {
			key = request.getParameter("key");
			session.setAttribute("key", key);
		} else if (session.getAttribute("key") != null) {
			key = (String) session.getAttribute("key");
		} else {
			session.removeAttribute("key");
			key = "";
		}

		Paging paging = new Paging();
		paging.setPage(page);

		int count = cdao.getAllCount("qna", "subject", key);
		paging.setTotalCount(count);
		paging.paging();

		List<QnaVO> qnaList = qdao.qnaList(paging, key);
		result.put("qnaList", qnaList);
		result.put("paging", paging);
		result.put("key", key);

		return result;
	}

	public QnaVO getQna(int qseq) {
		return qdao.getQna(qseq);
	}

}
