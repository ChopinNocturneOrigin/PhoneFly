package pf.controller.action.admin.board.event;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import pf.controller.action.Action;
import pf.dao.ColorDao;
import pf.dao.EventDao;
import pf.dto.AdminVO;
import pf.dto.EventVO;

public class AdminEventInsertAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "admin/event/adminEventList.jsp";

		HttpSession session = request.getSession();
		AdminVO avo = (AdminVO)session.getAttribute("loginAdmin");
		if( avo == null) { 
			url = "pf.do?command=admin"; 
		} else {
		ServletContext context = session.getServletContext();
		String path = context.getRealPath("image");
		
		MultipartRequest multi = new MultipartRequest(
				request, 
				path, 
				5*1024*1024,  
				"UTF-8", 
				new DefaultFileRenamePolicy()
		);
		        
        // 제품 등록
        EventVO evo = new EventVO();
        evo.setId( avo.getId() );
        evo.setSubject(multi.getParameter("subject"));
        evo.setImage( multi.getFilesystemName("image") );

		EventDao edao = EventDao.getInstance();
		edao.insertEvent(evo);
	}
	response.sendRedirect(url);
	}

}
