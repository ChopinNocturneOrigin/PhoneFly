package pf.controller.action.order;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import pf.controller.action.Action;
import pf.dao.OrderDetailDao;
import pf.dto.MemberVO;
import pf.dto.OrderDetailVO;

public class OrderListAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String url = "order/orderList.jsp";
		
		String id = request.getParameter("id");
		
		HttpSession session = request.getSession();
		MemberVO mvo = (MemberVO) session.getAttribute("loginUser");
		if (mvo == null) {
		    url = "pf.do?command=loginForm";
		}else {
			
			OrderDetailDao odao = OrderDetailDao.getInstance();
			ArrayList<OrderDetailVO> list = odao.listOrderByOdseq( mvo.getId() );

			request.setAttribute("orderList", list);	
		}
		request.getRequestDispatcher(url).forward(request, response);
	}

}
