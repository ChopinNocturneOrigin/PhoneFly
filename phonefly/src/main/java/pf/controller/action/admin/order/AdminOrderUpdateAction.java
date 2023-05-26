package pf.controller.action.admin.order;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import pf.controller.action.Action;
import pf.dao.AdminDao;
import pf.dto.AdminVO;

public class AdminOrderUpdateAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "pf.do?command=adminOrderList";
		HttpSession session = request.getSession();
		AdminVO avo = (AdminVO)session.getAttribute("loginAdmin");
		if( avo == null) { 
			url = "pf.do?command=admin"; 
		} else {
			String [] odseqs = request.getParameterValues("result");
			AdminDao adao = AdminDao.getInstance();
			for( String odseq : odseqs) {
				adao.updateOrderResult( Integer.parseInt( odseq ) );
			}
		}
		request.getRequestDispatcher(url).forward(request, response);
	}

}
