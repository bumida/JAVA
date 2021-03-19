package com.koreait.app.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.app.board.dao.BoardReplyBean;
import com.koreait.app.board.dao.BoardReplyDAO;

public class BoardReplyOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");//인코딩
		response.setCharacterEncoding("UTF-8");//인코딩
		
		ActionForward forward = null;
		//페이지 이동을 처리하기위한 클래스
		HttpSession session = request.getSession();
		BoardReplyDAO r_dao = new BoardReplyDAO();
		BoardReplyBean r_bean = new BoardReplyBean();
		
		int board_num = Integer.parseInt(request.getParameter("seq"));
		//사용자에게 요청받은 seq받아오기
		String member_id = (String)session.getAttribute("session_id");
		//사용자에게 요청받은 session_id 받아오기
		String reply_contents = request.getParameter("reply_contents");
		//사용자에게 요청받은 문자내용받아오기
		System.out.println(request.getParameter("seq"));
		r_bean.setBoard_num(board_num);
		//테이블 숫자보내기
		r_bean.setMember_id(member_id);
		//멤버아이디 보내기
		r_bean.setReply_contents(reply_contents);
		//내용 보내기
		//forward 페이지 이동
		if(r_dao.insertReply(r_bean)) {
			//BoardReplyDAO에 r_bean을 넣으면 화면이동하기
			
			forward = new ActionForward();
			forward.setRedirect(true);
			forward.setPath(request.getContextPath() + "/board/BoardView.bo?seq="+board_num);
		}
		
		return forward;
	}
}





