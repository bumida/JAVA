package com.koreait.app.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.app.board.dao.BoardDAO;

public class BoardListAction implements Action{
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		//UTF-8로 보내주기
		ActionForward forward = new ActionForward();
		//ActionForward 페이지 이동을 처리하기위한 클래스
		BoardDAO b_dao = new BoardDAO();
		//BoardDAO 객체
		HttpSession session = request.getSession();
		
		String temp = request.getParameter("page");
		int page = temp == null ? 1 : Integer.parseInt(temp);
		int pageSize = 10;
		int totalCnt = b_dao.getBoardCnt();
		
		int endRow = page * 10;
		int startRow = endRow - 9;
		
		int startPage = ((page - 1) / pageSize) * pageSize + 1;
		int endPage = startPage + 9;
		int totalPage = (totalCnt - 1) / pageSize + 1;
		
		endPage = endPage > totalPage ? totalPage : endPage;
		//jsp페이지로로 데이터 보내기
		request.setAttribute("totalPage", totalPage);
		//jsp페이지로로 데이터 보내기
		request.setAttribute("totalCnt", totalCnt);
		//jsp페이지로로 데이터 보내기
		request.setAttribute("nowPage", page);
		//jsp페이지로로 데이터 보내기
		request.setAttribute("startPage", startPage);
		//jsp페이지로로 데이터 보내기
		request.setAttribute("endPage", endPage);
		//jsp페이지로로 데이터 보내기
		request.setAttribute("boardList", b_dao.getBoardList(startRow, endRow));
		//jsp페이지로로 데이터 보내기
		
		forward.setRedirect(false);//forward사용
		
		String userType = (String)session.getAttribute("admin");
		
		if(userType == null) {
			forward.setPath("/app/board/boardList.jsp");
		}else if(userType.equals("1")) {
			forward.setPath("/app/board/boardList_admin.jsp");
		}else {
			forward.setPath("/app/board/boardList.jsp");
		}
		return forward;
		//db에서 불러온 데이터를 forward가 저장한다.
	}
}










