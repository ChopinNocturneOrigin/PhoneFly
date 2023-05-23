package pf.controller.action.admin.product;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import pf.controller.action.Action;
import pf.dao.ProductDao;
import pf.dto.MemberVO;

public class AdminProductDeleteAction implements Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int pseq=Integer.parseInt(request.getParameter("pseq"));
		
		String url="admin/product/adminProductList.jsp";
		
		HttpSession session = request.getSession();
		MemberVO mvo = (MemberVO) session.getAttribute("loginUser");
		if(mvo==null) {
			url="pf.do?command=loginForm";
		}else {
			ProductDao pdao = ProductDao.getInstance();
			pdao.deleteProduct(pseq);
		}
		request.getRequestDispatcher(url).forward(request, response);

	}

}
