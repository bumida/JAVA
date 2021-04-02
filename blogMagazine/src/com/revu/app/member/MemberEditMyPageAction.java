package com.revu.app.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.revu.action.Action;
import com.revu.action.ActionForward;
import com.revu.app.member.dao.MemberBean;
import com.revu.app.member.dao.MemberDao;

public class MemberEditMyPageAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		ActionForward forward = new ActionForward();
		HttpSession session = request.getSession();
		MemberDao m_dao = new MemberDao();
		MemberBean m_bean = new MemberBean();
		
		m_bean.setMember_id(request.getParameter("member_id"));
		m_bean.setMember_pw(request.getParameter("member_pw"));
	    m_bean.setMember_name(request.getParameter("member_name"));
	    m_bean.setMember_birth(request.getParameter("member_birth"));
	    m_bean.setMember_hp(request.getParameter("member_hp"));
	    m_bean.setMember_blogmail(request.getParameter("member_blogmail"));
		
		
		
		return null;
	}

}
