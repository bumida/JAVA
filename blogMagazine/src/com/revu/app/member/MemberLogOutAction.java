package com.revu.app.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.revu.action.Action;
import com.revu.action.ActionForward;

public class MemberLogOutAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
	ActionForward forward = new ActionForward();
	System.out.println(forward);
	HttpSession session = request.getSession();
	
	
	//session무효화 //로그아웃을 할때 사용한다.
	session.invalidate();
	forward.setRedirect(true);
	forward.setPath(request.getContextPath()+ "/main.jsp"); //경로자
	
	return forward;
	}

}
