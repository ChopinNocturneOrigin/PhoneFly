package pf.controller.action.admin.order;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pf.controller.action.Action;
import pf.dao.OrderDetailDao;
import pf.dto.OrderDetailVO;

public class AdminOrder_detailAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "admin/order/adminOrderDetail.jsp";
		int odseq = Integer.parseInt(request.getParameter("odseq"));

		OrderDetailDao oddao = OrderDetailDao.getInstance();
			OrderDetailVO odvo = oddao.getOrderDetails(odseq);
			request.setAttribute("OrderDetailVO", odvo);

		request.getRequestDispatcher(url).forward(request, response);
	}

}
