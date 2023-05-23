package pf.controller.action.board.review;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import pf.controller.action.Action;
import pf.dao.ReviewDao;
import pf.dto.MemberVO;
import pf.dto.ReviewVO;



public class ReviewWriteAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int pseq = Integer.parseInt(request.getParameter("pseq"));
		String url = "pf.do?command=productDetail&pseq="+pseq; // 목적지는 해당 pseq 의 productDetail
		HttpSession session = request.getSession();
	    MemberVO mvo = (MemberVO) session.getAttribute("loginUser");    
	    if (mvo == null) {
	    	url = "pf.do?command=loginForm";
	    }else{
	    	ReviewVO rvo = new ReviewVO();
	    	rvo.setSubject(request.getParameter("subject"));
	    	rvo.setContent(request.getParameter("content"));
	    	rvo.setId( mvo.getId() );
	    	rvo.setPseq(pseq);
	    	
	    	ReviewDao rdao = ReviewDao.getInstance();
	    	rdao.insertReview(rvo);
	    }
	    response.sendRedirect(url);
	}
}