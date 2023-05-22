package pf.controller.action.product;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pf.controller.action.Action;
import pf.dao.ProductDao;
import pf.dto.ProductVO;

public class ProductDetailAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int pseq = Integer.parseInt( request.getParameter("pseq") );
		ProductDao pdao = ProductDao.getInstance();
		ProductVO pvo = pdao.getProduct( pseq );
		
		request.setAttribute("productVO", pvo);
		String url = "product/productDetail.jsp";
		
		request.getRequestDispatcher(url).forward(request, response);

	}

}
