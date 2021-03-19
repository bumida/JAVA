package com.koreait.app.board;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.app.board.dao.BoardBean;
import com.koreait.app.board.dao.BoardDAO;
import com.koreait.app.board.dao.BoardReplyBean;
import com.koreait.app.board.dao.BoardReplyDAO;
import com.koreait.app.board.dao.FilesBean;
import com.koreait.app.board.dao.FilesDAO;

public class BoardViewAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");//인코딩
		
		BoardDAO b_dao = new BoardDAO();
		BoardReplyDAO r_dao = new BoardReplyDAO();
		
		FilesDAO f_dao = new FilesDAO();
		BoardBean b_bean = new BoardBean();
		
		int board_num = Integer.parseInt(request.getParameter("seq"));
		//클라이언트에게 요청받은 seq가져오기
		b_dao.updateReadCount(board_num);
		//BoardDAO에 board_num 저장하기
		b_bean = b_dao.getDetail(board_num);
		//BoardBEAN에 받아온 board_num
		List<FilesBean> filesBeanList = f_dao.getDetail(board_num);
		List<BoardReplyBean> replyBeanList = r_dao.getReply(board_num);
		
		if(b_bean != null) {
			request.setAttribute("boardBean", b_bean);
			request.setAttribute("replyBeanList", replyBeanList);
			if(filesBeanList != null) {
				request.setAttribute("filesBeanList", filesBeanList);
			}
			ActionForward forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("/app/board/boardView.jsp");
			return forward;
		}
		
		return null;
	}

}











