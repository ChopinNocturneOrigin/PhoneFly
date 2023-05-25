package pf.controller.action.order;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import pf.controller.action.Action;
import pf.dao.OrderDetailDao;
import pf.dto.MemberVO;

public class OrderAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int odseq = Integer.parseInt( request.getParameter("odseq") );	
		int pseq = Integer.parseInt( request.getParameter("pseq") );		
		int rseq = Integer.parseInt( request.getParameter("rseq") );
		String id = request.getParameter("id");
		int mseq = Integer.parseInt( request.getParameter("mseq") );
		int charge = Integer.parseInt( request.getParameter("charge") );
		int discount = Integer.parseInt( request.getParameter("discount") );
		int buyplan = Integer.parseInt( request.getParameter("buyplan") );
		int dcmonth = Integer.parseInt( request.getParameter("dcmonth") );
		int dctotal = Integer.parseInt( request.getParameter("dctotal") );
		int mmonth = Integer.parseInt( request.getParameter("mmonth") );
		int mtotal = Integer.parseInt( request.getParameter("mtotal") );
		int cseq = Integer.parseInt( request.getParameter("cseq") );
		String cc = request.getParameter("cc");
		
		HttpSession session = request.getSession();
	    MemberVO mvo = (MemberVO) session.getAttribute("loginUser");
	    String url = "";
	    
	    if (mvo == null) {
	    	url = "pf.do?command=loginForm";
	    }else {
	    	
	    	OrderDetailDao odao = OrderDetailDao.getInstance();
	    	odao.insertOrder( pseq, rseq, id, mseq, charge, discount, 
	    			buyplan, dcmonth, dctotal, mmonth, mtotal, cc, cseq );
	    	url = "pf.do?command=orderList&odseq=" + odseq;
	    	
	    } 
	    response.sendRedirect(url);
	}

}