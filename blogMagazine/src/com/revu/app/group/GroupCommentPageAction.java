package com.revu.app.group;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.revu.action.Action;
import com.revu.action.ActionForward;
import com.revu.app.group.dao.GroupBean;
import com.revu.app.group.dao.GroupDao;

public class GroupCommentPageAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		HttpSession session = request.getSession();
		GroupDao g_dao = new GroupDao();
		GroupBean g_bean = new GroupBean();
		ActionForward forward= new ActionForward();
		
		int group_num = Integer.parseInt(request.getParameter("group_num"));
		g_bean = g_dao.getGroupdetail(group_num);
		System.out.println("group_num =" + group_num);
		if(group_num != 0) {
			
			request.setAttribute("g_bean", g_bean);
			
			forward.setRedirect(false);
			
			forward.setPath("/commentSuccess.jsp");
			
			return forward;
		}
		
		
		
		
		
		
		
		return null;
	}

}
