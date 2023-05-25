package pf.controller.action.product;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pf.controller.action.Action;
import pf.dao.ProductDao;
import pf.dto.ProductVO;

public class ProductCompareAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// 선택한 상품의 pseq를 파라미터로 받아옵니다.
		String[] pseqArr = request.getParameterValues("pseq");
				
		ProductDao pdao = ProductDao.getInstance();
		List<ProductVO> productList = new ArrayList<>();
				
		// 선택한 상품들을 조회하여 productList에 추가합니다.
		if (pseqArr != null) {
			for (String pseq : pseqArr) {
				int pseqValue = Integer.parseInt(pseq);
				ProductVO pvo = pdao.getProduct(pseqValue);
				if (pvo != null) {
					productList.add(pvo);
				}
			}
		}
				
		// productList를 request에 저장합니다.
		request.setAttribute("productList", productList);
				
		// 상품 비교 페이지로 이동합니다.
		String url = "product/productCompare.jsp";
		request.getRequestDispatcher(url).forward(request, response);
	}
}