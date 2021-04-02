package com.revu.app.group;

import java.io.PrintWriter;

import javax.print.attribute.standard.PrinterInfo;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.revu.action.Action;
import com.revu.action.ActionForward;
import com.revu.app.group.dao.FilesDao;
import com.revu.app.group.dao.GroupBean;
import com.revu.app.group.dao.GroupDao;
import com.revu.app.group.dao.GroupJoinDao;
import com.revu.app.group.dao.GroupReplyDao;

public class GroupDeleteAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		System.out.println("groupDeleteAction 들어옴");
		ActionForward forward = new ActionForward();
		HttpSession session = request.getSession();
		GroupDao g_dao = new GroupDao();
		GroupReplyDao r_dao = new GroupReplyDao();
		FilesDao f_dao = new FilesDao();
		GroupJoinDao j_dao = new GroupJoinDao();
		
		
		
		int group_num = Integer.parseInt(request.getParameter("group_num"));
		
		
		
		j_dao.deleteGroupJoin(group_num);
		System.out.println("그룹 조인 삭제");
		r_dao.deleteReply(group_num);
		System.out.println("댓글 삭제완료");
		g_dao.group_delete(group_num);
		System.out.println("블로그 삭제완료");
		
		forward.setRedirect(true);
		forward.setPath(request.getContextPath() + "/Grouplist.gr");
		
		
		return forward;
	}

}
