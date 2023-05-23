package pf.controller.action.admin.product;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pf.controller.action.Action;
import pf.dao.ColorDao;
import pf.dao.ProductDao;
import pf.dto.ColorVO;
import pf.dto.ProductVO;

public class AdminProductInsertAction implements Action { // 수정예정

	@Override
    public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String url = "admin/product/adminProductInsertForm.jsp";
        
        ColorDao cdao = ColorDao.getInstance();
        ProductDao pdao = ProductDao.getInstance();
        
        // 제품 정보 가져오기
        String name = request.getParameter("name");
        int price1 = Integer.parseInt(request.getParameter("price1"));
        int price2 = Integer.parseInt(request.getParameter("price2"));
        int price3 = Integer.parseInt(request.getParameter("price3"));
        String content = request.getParameter("content");
        String[] colors = request.getParameterValues("color");
        
        // 제품 등록
        ProductVO pvo = new ProductVO();
        pvo.setName(name);
        pvo.setPrice1(price1);
        pvo.setPrice2(price2);
        pvo.setPrice3(price3);
        pvo.setContent(content);
        
        int pseq = pdao.insertProduct(pvo); // 제품 등록 후 생성된 pseq 반환
        
        // 색상 등록
        if (colors != null && colors.length > 0) {
            for (String color : colors) {
                ColorVO cvo = new ColorVO();
                cvo.setPseq(pseq);
                cvo.setName(name);
                
                cdao.insertColor(cvo); // 각 색상을 color 테이블에 등록
            }
        }
        
        ArrayList<ColorVO> list = cdao.getColorListByPseq(pseq); // 등록된 제품의 색상 목록 가져오기
        
        request.setAttribute("colorList", list);
        request.setAttribute("product", pvo);
        
        RequestDispatcher dispatcher = request.getRequestDispatcher(url);
        dispatcher.forward(request, response);
    }
}
