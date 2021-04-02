package com.revu.app.group;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.revu.action.Action;
import com.revu.action.ActionForward;
import com.revu.app.group.dao.GroupReplyDao;

public class GroupReplyDeleteAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("groupReplyDeleteAction 들어옴");
       request.setCharacterEncoding("UTF-8");
       
       GroupReplyDao r_dao = new GroupReplyDao();
       
       ActionForward forward = new ActionForward();
       
       
       int group_num = Integer.parseInt(request.getParameter("group_num"));
       System.out.println(group_num);
       int reply_num = Integer.parseInt(request.getParameter("reply_num"));
       System.out.println(reply_num);
       
       r_dao.deleteOneReply(reply_num);
		
		forward.setRedirect(true);
		forward.setPath(request.getContextPath() + "/group/Groupview.gr?group_num=" + group_num);
		return forward;
	}

}
