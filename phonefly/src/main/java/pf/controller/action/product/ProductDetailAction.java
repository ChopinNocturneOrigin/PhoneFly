package pf.controller.action.product;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pf.controller.action.Action;
import pf.dao.ProductDao;
import pf.dto.ProductVO;
import pf.dto.RplanVO;

public class ProductDetailAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		int pseq = Integer.parseInt( request.getParameter("pseq") );
		ProductDao pdao = ProductDao.getInstance();
		ProductVO pvo = pdao.getProduct( pseq );
		
		ArrayList<RplanVO>rplanList = pdao.getRplanList();
		
		request.setAttribute("productVO", pvo);
		request.setAttribute("rplanVO", rplanList);
		String url = "product/productDetail.jsp";
		
		request.getRequestDispatcher(url).forward(request, response);
		
	}
	
}
