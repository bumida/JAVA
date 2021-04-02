package com.revu.app.group;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.revu.action.Action;
import com.revu.action.ActionForward;

public class GroupingAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
	   request.setCharacterEncoding("UTF-8");
	   
	   
	   //임시 로그인 할당
	   //HttpSession session = request.getSession();
	   //session.setAttribute("session_id", "sms0430");
	   
	   
	   ActionForward forward = new ActionForward();
	   System.out.println("groupingAction들어옴");
	   forward.setPath(request.getContextPath() + "GroupList.gr");
	   forward.setRedirect(true);
		
		
		return forward;
	}

}
