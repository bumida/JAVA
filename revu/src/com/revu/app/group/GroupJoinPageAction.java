package com.revu.app.group;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import com.revu.action.Action;
import com.revu.action.ActionForward;
import com.revu.app.board.dao.BoardDao;
import com.revu.app.group.dao.GroupBean;
import com.revu.app.group.dao.GroupDao;
import com.revu.app.group.dao.GroupJoinBean;
import com.revu.app.group.dao.GroupJoinDao;

public class GroupJoinPageAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");		
		
        HttpSession session = request.getSession();
        GroupDao g_dao = new GroupDao();
        GroupBean g_bean = new GroupBean();
        GroupJoinBean j_bean = new GroupJoinBean();
        GroupJoinDao j_dao = new GroupJoinDao();
		ActionForward forward = new ActionForward();
		
		boolean member_check = false;
		int group_num = Integer.parseInt(request.getParameter("group_num"));
		System.out.println("group_num =" + group_num);
		g_bean = g_dao.getGroupdetail(group_num);
		
		member_check = j_dao.check_member(session.getAttribute("session_id").toString(), group_num);
		if(member_check) {
			PrintWriter out = response.getWriter();
			response.setContentType("text/html;charset=UTF-8");
			 out.println("<script>");
	    	   out.println("alert('중복가입입니다.');history.back();");
	    	   out.println("</script>");
	    	   out.close();
	    	   return null;
	    	   }
		
		if(group_num != 0) {
		   
		   request.setAttribute("g_bean", g_bean);
		
		   forward.setRedirect(false);
		   
		   forward.setPath("/groupJoin.jsp");
		
		   return forward;
		}
		
		return null;
	}

}
