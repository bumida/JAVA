package com.revu.app.group;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.revu.action.Action;
import com.revu.action.ActionForward;
import com.revu.app.group.dao.GroupDao;

public class GroupMainListAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
			System.out.println("groupMainListAction 들어옴");
			
			request.setCharacterEncoding("UTF-8");
			response.setCharacterEncoding("UTF-8");
			
			GroupDao g_dao = new GroupDao();
			ActionForward forward = new ActionForward();
			String temp = request.getParameter("page");
			int page = temp == null ? 1 : Integer.parseInt(temp);
			int pageSize = 10;
			int totalCnt = g_dao.getGroupCnt();
			System.out.println("M_totalCnt = " + totalCnt);
			
			int endNum = page * 10;
			int startNum = endNum - 9;
			
			int startPage = ((page - 1) / pageSize) * pageSize + 1;
			int endPage = startPage + 9;
			int totalPage = (totalCnt - 1) / pageSize + 1;
			
			endPage = endPage > totalPage ? totalPage : endPage;
			System.out.println("M_endpage :" + endPage);
			System.out.println("M_startpage :" + startPage);
			System.out.println("M_nowPage :" + page);
			
		 	request.setAttribute("groupList", g_dao.getGroupList(startNum, endNum));
		 	System.out.println(g_dao.getGroupList(startNum, endNum));
			request.setAttribute("newest_group", g_dao.newest_group());
			request.setAttribute("hotest_group", g_dao.hottes_group());
			request.setAttribute("totalCnt", g_dao.getGroupCnt());
		
		    forward.setRedirect(false);
		    forward.setPath("/mainList.jsp");
		     
		
		    return forward;
	}

}
