package com.revu.app.member;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.revu.action.Action;
import com.revu.action.ActionForward;
import com.revu.app.member.dao.MemberBean;
import com.revu.app.member.dao.MemberDao;

public class MemberJoinOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
	    System.out.println("memberJoinOkAction 들어옴");
	    ActionForward forward = new ActionForward();
		MemberDao m_dao = new MemberDao();
		MemberBean member = new MemberBean();
		boolean check = false;
		System.out.println("dd");
		System.out.println("닉네임" + request.getParameter("member_nickName"));
		System.out.println("아이디" + request.getParameter("member_id"));
		System.out.println("패스워드체크" + request.getParameter("member_pw_check"));
		member.setMember_id(request.getParameter("member_id"));
		member.setMember_nickname(request.getParameter("member_nickName"));
		member.setMember_pw(request.getParameter("member_pw"));
		member.setMember_pw_check(request.getParameter("member_pw_check"));
		member.setMember_email(request.getParameter("member_email"));
		
	
		check = m_dao.join(member);
		
		
		System.out.println("join chekc 들어옴");
		if(!check) {
			PrintWriter out = response.getWriter();
			response.setContentType("text/html;charset=UTF-8");
			out.println("<script>");
			out.println("alert('회원가입 실패.다시 시도해주세요.');");
			out.println("/<script>");
			out.close();
		}
		forward.setRedirect(true);
		forward.setPath(request.getContextPath() + "/login.jsp");
		System.out.println("/login");
		return forward;
	}

}
