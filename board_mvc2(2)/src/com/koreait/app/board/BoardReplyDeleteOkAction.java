package com.koreait.app.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.app.board.dao.BoardReplyDAO;

public class BoardReplyDeleteOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");//인코딩
		
		BoardReplyDAO r_dao = new BoardReplyDAO();
		//boardReplyDAo 객체
		ActionForward forward = new ActionForward();
		//페이지이동을 처리하기위한 클래스
		int board_num = Integer.parseInt(request.getParameter("seq"));
		//사용자에게 요청받은 seq
		int reply_num = Integer.parseInt(request.getParameter("reply_num"));
		//사용자에게 요청받은 답글숫자
		r_dao.deleteOneReply(reply_num);
		//boardReplyDAO에 답글 번호 삭제
		forward.setRedirect(true);//redirect사용 삭제는 정보를 남길필요가없기때문
		forward.setPath(request.getContextPath() + "/board/BoardView.bo?seq="+board_num);
	    //	
		return forward;//forward는 데이터를 저장해서 가져간다.
	}
}







