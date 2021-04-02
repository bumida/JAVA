package com.revu.app.group;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.revu.action.Action;
import com.revu.action.ActionForward;
import com.revu.app.group.dao.GroupReplyBean;
import com.revu.app.group.dao.GroupReplyDao;

public class GroupReplyOkAction implements Action {
    public static boolean check = false;

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("ReplyOkAction 들어옴");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		ActionForward forward = null;
		HttpSession session = request.getSession();
		GroupReplyBean g_bean = new GroupReplyBean();
		GroupReplyDao g_dao = new GroupReplyDao();
		
		System.out.println("ReplyOkAction 들어옴 1");
		
		String reply_contents = request.getParameter("reply_contents");
		System.out.println("reply_contents = " + reply_contents);
		String member_id = (String)session.getAttribute("session_id");
		System.out.println("member_id = " + member_id);
      	int group_num = Integer.parseInt(request.getParameter("group_num"));	
      	System.out.println("group_num =" + group_num);
		
      	if(!check) {
      	    g_bean.setGroup_num(group_num);
      	    g_bean.setMember_id(member_id);
      	    g_bean.setReply_contents(reply_contents);
      	    check = true;
      		
      	    if(g_dao.insertReply(g_bean)) {
      	    	forward = new ActionForward();
      	    	forward.setRedirect(true);
      	    	forward.setPath(request.getContextPath() + "/group/Groupview.gr?group_num=" + group_num);
      	    	
      	    }
      		
      	}
      	return forward;
      	
      	
      	
		
		
		
		
	}
}
