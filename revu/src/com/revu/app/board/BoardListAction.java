package com.revu.app.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.revu.action.Action;
import com.revu.action.ActionForward;
import com.revu.app.board.dao.BoardDao;
import com.revu.app.group.dao.GroupDao;

public class BoardListAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
	  request.setCharacterEncoding("UTF-8");
	  response.setCharacterEncoding("UTF-8");
	  ActionForward forward = new ActionForward();
	  BoardDao b_dao = new BoardDao();
	  HttpSession session = request.getSession();
	  GroupDao g_dao = new GroupDao();
	  
	  String temp = request.getParameter("page");
	  int page = temp == null? 1 : Integer.parseInt(temp);
	  
	  int pageSize = 10;
	  int totalCnt = b_dao.getBoardCnt();
	  System.out.println("현재 게시물 게시물 개수" + totalCnt);//현재 게시물 개수
	  
	  int endRow = page * 10;
	  int startRow = endRow - 9;
	  
	  int startPage = ((page - 1) / pageSize) * pageSize + 1;
	  int endPage = startPage + 9;
	  int totalPage = (totalCnt - 1) / pageSize + 1;
	  
	  endPage = endPage > totalPage ? totalPage : endPage;
	  
	  request.setAttribute("totalPage", totalPage);
	  request.setAttribute("totalCnt", totalCnt);
	  request.setAttribute("nowPage", page);
	  request.setAttribute("startPage", startPage);
	  request.setAttribute("endPage", endPage);
	  request.setAttribute("boardList", b_dao.getBoardList(startRow, endRow));
	  request.setAttribute("groupList", g_dao.getGroupList(startRow, endRow));
	  forward.setRedirect(false);
	  
	  String userType = (String) session.getAttribute("admin");
	  
	  
	  
	  System.out.println("userType =" + userType);
	  
	  if (userType == null) {
		  forward.setPath("/help.jsp");
	  } else if (userType.equals("admin")) {
		  forward.setPath("/help.jsp");
	  } else {
		  forward.setPath("/help.jsp");
	  } 
	     
	  
	  
	  
		return forward;
	}

}
