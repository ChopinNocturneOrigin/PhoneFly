package pf.controller.action.board.review;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import pf.controller.action.Action;
import pf.dao.ProductDao;
import pf.dto.ProductVO;

public class ReviewWriteFormAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String url="admin/product/adminProductList.jsp";
		
		
		HttpSession session = request.getSession();
		ProductVO mvo = (ProductVO) session.getAttribute("loginUser");
		String url="";
		if(mvo==null) {
			url="shop.do?command=loginForm";
		}else {
			ProductDao mdao = ProductDao.getInstance();
			mdao.deleteProduct(mvo.getId());
		}
		request.getRequestDispatcher(url).forward(request, response);

	}

}
