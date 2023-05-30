package pf.controller.action.admin.product;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import pf.controller.action.Action;
import pf.dto.AdminVO;

public class AdminColorInsertFormAction implements Action { //수정중

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
		String url = "admin/product/productColorInsert.jsp";

        HttpSession session = request.getSession();
        AdminVO avo = (AdminVO)session.getAttribute("loginAdmin");
        if( avo== null ) 
            url ="pf.do?command=admin";
        else {
            int pseq = Integer.parseInt(request.getParameter("pseq"));
            request.setAttribute("pseq", pseq);

        }
        request.getRequestDispatcher(url).forward(request, response);
	
	}

}
