package pf.controller.action.member.login;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pf.controller.action.Action;
import pf.dao.MemberDao;
import pf.dto.MemberVO;

public class SelectPwdAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		String newPwd = request.getParameter("newPwd");
		
		if (id != null && !id.isEmpty()) {
			 MemberDao mdao = MemberDao.getInstance();
			 MemberVO member = mdao.selectPwd(id, newPwd);
			 request.setAttribute("member", member);
		}
		
		RequestDispatcher dp = request.getRequestDispatcher("login.jsp");
		dp.forward(request, response);
		
	}

}
