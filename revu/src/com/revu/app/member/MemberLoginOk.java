package com.revu.app.member;

import java.io.PrintWriter;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.revu.action.Action;
import com.revu.action.ActionForward;
import com.revu.app.member.dao.MemberDao;

public class MemberLoginOk implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("memberLoginOk 들어옴");
		request.setCharacterEncoding("UTF-8");
		
		ActionForward forward = new ActionForward();
		MemberDao m_dao = new MemberDao();
		HttpSession session = request.getSession();
		String id = request.getParameter("member_id"); //아이디 가져오기
		String pw = request.getParameter("member_pw"); //비밀번호 가져오기
		
		System.out.println(request.getParameter("member_id"));
		System.out.println(request.getParameter("member_pw"));
		Map<String, String> logininfo = m_dao.login(id, pw);
		System.out.println(logininfo);
		
		if(logininfo != null) {
			session.setAttribute("session_id", logininfo.get("MEMBER_ID"));
			
			forward.setPath(request.getContextPath() + "/main.jsp");
		}else{
			
			session.setAttribute("logininfo", logininfo);
			forward.setPath(request.getContextPath() + "/login.jsp");
		}
			
		forward.setRedirect(true);
		return forward;
		
		
	

	}
}
