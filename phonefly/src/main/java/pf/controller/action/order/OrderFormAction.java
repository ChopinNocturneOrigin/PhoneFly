package pf.controller.action.order;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pf.controller.action.Action;

public class OrderFormAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int pseq = Integer.parseInt( request.getParameter("pseq") );
		int rseq = Integer.parseInt( request.getParameter("rseq") );
		int discount = Integer.parseInt( request.getParameter("discount") );
		int buyplan = Integer.parseInt( request.getParameter("buyplan") );
		int dcmonth = Integer.parseInt( request.getParameter("dcmonth") );
		int dctotal = Integer.parseInt( request.getParameter("dctotal") );
		int mmonth = Integer.parseInt( request.getParameter("mmonth") );
		int mtotal = Integer.parseInt( request.getParameter("mtotal") );
		String cc = request.getParameter("cc");


	}

}
