package com.revu.app.group;

import java.io.PrintWriter;
import java.io.Writer;
import java.util.Calendar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.revu.action.Action;
import com.revu.action.ActionForward;
import com.revu.app.group.dao.GroupBean;
import com.revu.app.group.dao.GroupDao;
import com.revu.app.group.dao.GroupJoinDao;
import com.revu.app.member.dao.MemberBean;
import com.revu.app.member.dao.MemberDao;

public class GroupJoinAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		System.out.println("GroupJoinAction 들어옴");
		
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		ActionForward forward = new ActionForward();
    
		if (session.getAttribute("session_id") == null) {
			PrintWriter out = response.getWriter();
			response.setContentType("text/html;charset=UTF-8");
			out.println("<script>");
			out.println("alert('로그인 후 이용해주세요.'); history.back();");
			out.println("</script>");
			out.close();
			return null;
		}
        
		
	    boolean member_check = false;
		
		GroupDao g_dao = new GroupDao();
		GroupJoinDao j_dao = new GroupJoinDao();
	    MemberDao m_dao = new MemberDao();
		//현재날짜표시
		System.out.println("GroupJoin 들어옴1");
		int group_num = Integer.parseInt(request.getParameter("group_num"));
		System.out.println("GroupJoin 들어옴2");
		String blog_mail = request.getParameter("blog_mail");
		System.out.println("GroupJoin 들어옴3");
		String member_name = request.getParameter("member_name");
		System.out.println("GroupJoin 들어옴4");
		String member_hp = request.getParameter("member_hp");
		System.out.println("GroupJoin 들어옴5");
		String member_id = session.getAttribute("session_id").toString();
		System.out.println("GroupJoin 들어옴 6");
		String member_zipcode = request.getParameter("member_zipcode");
		System.out.println("GroupJoin 들어옴 7");
		String member_address = request.getParameter("member_address");
		System.out.println("GroupJoin 들어옴 8");
		String member_address_detail = request.getParameter("member_address_detail");
		System.out.println("GroupJoin 들어옴 9");
		String member_address_etc = request.getParameter("member_address_etc");
	
//		if(session.getAttribute("session_id") != member_id) {
//			PrintWriter out = response.getWriter();
//			response.setContentType("text/html;charset=UTF-8");
//			out.println("<script>");
//			out.println("alert('아이디를 다시입력해주세요'); history.back();");
//			out.println("</script>");
//			out.close();
//			return null;
//		}
//		
		
		
		System.out.println("group_num =" + group_num );
		System.out.println("blog_mail =" + blog_mail);
		System.out.println("member_name =" + member_name);
		System.out.println("member_hp =" + member_hp);
		System.out.println("member_id =" + member_id);
		System.out.println("member_zipcode =" + member_zipcode);
		System.out.println("member_address =" + member_address);
		System.out.println("member_address_detail =" + member_address_detail);
		System.out.println("member_address_etc =" + member_address_etc);
		
		
		
		
		
		member_check = j_dao.check_member(member_id, group_num);
		
		
		
		// 현재 로그인되어있는 ID가 가입하려는 그룹에 이미 가입되어 있는지 확인.
		if(member_check) {
			PrintWriter out = response.getWriter();
			response.setContentType("text/html;charset=UTF-8");
			out.println("<script>");
			out.println("alert('이미 신청 가입되어 있습니다.'); history.back();");
			out.println("</script>");
			out.close();
			return null;
		}
		
		
		
		// 그룹가입 완료 (MemberNum +1)
		System.out.println("그룹가입 +1");
		boolean j_check = j_dao.joinGroup(member_id, group_num, blog_mail, member_name, member_hp, member_zipcode, member_address, member_address_detail, member_address_etc);
		System.out.println(j_check +" joincheck 들어옴");
		g_dao.addMembernum(group_num);
		
		
		if(!j_check) {
			System.out.println("그룹가입실패 alert창 들어옴");
			PrintWriter out = response.getWriter();
			response.setContentType("text/html;charset=UTF-8");
			out.println("<script>");
			out.println("alert('가입 실패. 다시 확인해주세요.');");
			out.println("</script>");
			out.close();
			System.out.println("그룹가입 alert창 끝남");
			
			return null;
			
		}

	
		System.out.println("그룹가입 alert창 끝남 2");
		
		
		
		//		if(!j_check) {
//			System.out.println("그룹가입 실패 들어옴");
//			PrintWriter out = response.getWriter();
//			response.setContentType("text/html;charset=UTF-8");
//			out.println("<script>");
//			out.println("alert('그룹 가입 실패. 다시 확인해주세요!');");
//			out.println("<script>");
//			out.close();
//			return null;
//			
//		}
		
		
		
		
		System.out.println("들어옴 22222");
		
   
	   

		
	   
	   
	   System.out.println("forward 페이지 경로");
		forward.setRedirect(true);
		//forward.setPath(request.getContextPath() + "/group/Groupview.gr?group_num=" + group_num);
		forward.setPath(request.getContextPath() +"/group/GroupCommentPage.gr?group_num=" + group_num);
		
		
		return forward;

		
		
	} 
	}

