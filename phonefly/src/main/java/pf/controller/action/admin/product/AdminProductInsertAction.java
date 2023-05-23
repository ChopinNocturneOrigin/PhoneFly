package pf.controller.action.admin.product;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pf.controller.action.Action;
import pf.dao.ProductDao;
import pf.dto.ProductVO;

public class AdminProductInsertAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ProductDao pdao = ProductDao.getInstance();
		ProductVO pvo = new ProductVO();


		pvo.setName(request.getParameter("name"));
		pvo.setPrice1(Integer.parseInt(request.getParameter("price1")));
		pvo.setPrice2(Integer.parseInt(request.getParameter("price2")));
		pvo.setPrice3(Integer.parseInt(request.getParameter("price3")));
		pvo.setContent(request.getParameter("content"));
		pvo.setUseyn(request.getParameter("useyn"));
		pvo.setEventyn(request.getParameter("eventyn"));
		pvo.setBestyn(request.getParameter("bestyn"));
		pvo.setMfc(request.getParameter("mfc"));
		pdao.insertProduct( pvo );

		response.sendRedirect( "pf.do?command=adminProductList");
	}

}
