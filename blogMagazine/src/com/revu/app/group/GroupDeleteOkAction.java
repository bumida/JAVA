package com.revu.app.group;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.revu.action.Action;
import com.revu.action.ActionForward;
import com.revu.app.group.dao.FilesDao;
import com.revu.app.group.dao.GroupDao;
import com.revu.app.group.dao.GroupReplyDao;

public class GroupDeleteOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		
		
		GroupDao g_dao = new GroupDao();
		
		GroupReplyDao r_dao = new GroupReplyDao();
		
		
		ActionForward forward = new ActionForward();
		
		int group_num = Integer.parseInt(request.getParameter("group_num"));
		
		String saveFolder = "";
		
		g_dao.group_delete(group_num);
		
		r_dao.deleteReply(group_num);
		
		forward.setRedirect(true);
		forward.setPath(request.getContextPath() + "/Grouplist.gr");
		return forward;
	}

}
