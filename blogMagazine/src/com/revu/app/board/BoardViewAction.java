package com.revu.app.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.revu.action.Action;
import com.revu.action.ActionForward;
import com.revu.app.board.dao.BoardBean;
import com.revu.app.board.dao.BoardDao;

public class BoardViewAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
          request.setCharacterEncoding("UTF-8");
          System.out.println("boardView 들어옴");
          BoardDao b_dao = new BoardDao();
          BoardBean b_bean = new BoardBean();
          
          
          System.out.println("board_num =" + request.getParameter("seq"));
          int board_num = Integer.parseInt(request.getParameter("seq"));
          b_bean = b_dao.getDetail(board_num);
          
          if(b_bean != null) {
        	  request.setAttribute("boardBean", b_bean);
        	  
          ActionForward forward = new ActionForward();
          forward.setRedirect(false);
          forward.setPath("/boardView.jsp");
          return forward;
	}
	return null;
}
	
	
	
	
	
	}


