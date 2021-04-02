package com.revu.app.group;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.revu.action.Action;
import com.revu.action.ActionForward;
import com.revu.app.group.dao.GroupBean;
import com.revu.app.group.dao.GroupDao;
import com.revu.app.group.dao.GroupJoinBean;
import com.revu.app.group.dao.GroupJoinDao;

public class GroupAdminPageAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
	System.out.println("GroupAdminPage Action 들어옴");	
	
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	
	HttpSession session = request.getSession();
	GroupDao g_dao = new GroupDao();
	GroupBean g_bean = new GroupBean();
	ActionForward forward = new ActionForward();
	GroupJoinBean j_bean = new GroupJoinBean();
	GroupJoinDao j_dao = new GroupJoinDao();
	
	String temp = request.getParameter("page");
	System.out.println(temp);
    int page = temp == null ? 1 : Integer.parseInt(temp);
    int pageSize = 10;
    int totalCnt = j_dao.getGroupJoinCnt();
    System.out.println("게시글 수 :" + totalCnt);
    int endRow = page * 10;
    int startRow = endRow - 9;
    int startPage = ((page - 1) / pageSize) * pageSize + 1;
    int endPage = startPage + 9;
	int totalPage = (totalCnt - 1) / pageSize + 1;
	endPage = endPage > totalPage ? totalPage : endPage;
	
	request.setAttribute("GroupJoinList", j_dao.getGroupJoinList(startRow, endRow));
	request.setAttribute("newGroupJoinList", j_dao.newGroupJoinList());
	request.setAttribute("totalCnt", totalCnt);
	request.setAttribute("totalPage", totalPage);
	request.setAttribute("nowPage", page);
	request.setAttribute("endPage", endPage);
	request.setAttribute("startPage", startPage);
	forward.setRedirect(false);
     	
	forward.setPath("/adminPage.jsp");
		return forward;
	}

}
