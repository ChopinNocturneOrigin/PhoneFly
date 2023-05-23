package pf.controller.action.order;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import pf.controller.action.Action;
import pf.dao.OrdersDao;
import pf.dto.MemberVO;
import pf.dto.OrdersVO;

public class OrderListAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String url = "order/orderList.jsp";
		
		int oseq = Integer.parseInt(request.getParameter("oseq"));
		
		HttpSession session = request.getSession();
		MemberVO mvo = (MemberVO) session.getAttribute("loginUser");
		if (mvo == null) {
		    url = "pf.do?command=loginForm";
		}else {
			OrdersDao odao = OrdersDao.getInstance();
			ArrayList<OrdersVO> list = odao.listOrderByOseq( oseq );
			int totalPrice=0;
			for(OrdersVO ovo : list)
				totalPrice += ovo.getPrice2() * ovo.getQuantity();
				
			request.setAttribute("orderList", list);
			
			request.setAttribute("totalPrice", totalPrice);	
		}
		request.getRequestDispatcher(url).forward(request, response);
	}

}
