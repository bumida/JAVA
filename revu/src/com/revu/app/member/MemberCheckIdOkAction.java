package com.revu.app.member;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.revu.action.Action;
import com.revu.action.ActionForward;
import com.revu.app.member.dao.MemberDao;

public class MemberCheckIdOkAction implements Action {
    @Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		
		MemberDao m_dao = new MemberDao();
		
		String id = request.getParameter("id");
		PrintWriter out = response.getWriter();
		if (m_dao.checkid(id)) {
			out.println("not-ok");
			
		}else {
			out.println("ok");
		}
		out.close();
		return null;
	}

}
