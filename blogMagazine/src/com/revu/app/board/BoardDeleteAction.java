package com.revu.app.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.revu.action.Action;
import com.revu.action.ActionForward;
import com.revu.app.board.dao.BoardBean;
import com.revu.app.board.dao.BoardDao;

public class BoardDeleteAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		ActionForward forward = new ActionForward();
		BoardDao b_dao = new BoardDao();
		
		
		int board_num = Integer.parseInt(request.getParameter("seq"));
		b_dao.deleteBoard(board_num);
		
		forward.setRedirect(true);
		forward.setPath(request.getContextPath() + "/board/BoardList.do");
		
		return forward;
	}

}
