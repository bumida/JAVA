package com.revu.app.group;


import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.revu.action.Action;
import com.revu.action.ActionForward;
import com.revu.app.group.dao.GroupBean;
import com.revu.app.group.dao.GroupDao;
import com.revu.app.group.dao.GroupJoinDao;
import com.revu.app.group.dao.GroupReplyBean;
import com.revu.app.group.dao.GroupReplyDao;

public class GroupViewAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
      System.out.println("groupViewAction 들어옴");
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        GroupDao g_dao = new GroupDao();
        GroupBean g_bean = new GroupBean();
        GroupJoinDao j_dao = new GroupJoinDao();
        GroupReplyBean r_bean = new GroupReplyBean();
        GroupReplyDao r_dao = new GroupReplyDao();
        HttpSession session = request.getSession();
        
        
        //group_num = session에 저장된 group_num
        int group_num = Integer.parseInt(request.getParameter("group_num"));
        System.out.println(group_num);
        
        

        
        
        // 로그인이 안되어있거나, 해당 그룹에 가입이 되어있지 않을때      
//       if (request.getParameter("session_id") == null) {
//    	   PrintWriter out = response.getWriter();
//    	   response.setContentType("text/html;charset=UTF-8");
//    	   out.println("<script>");
//    	   out.println("alert('로그인 후에 이용해주세요.');history.back();");
//    	   out.println("</script>");
//    	   out.close();
//    	   return null;
//       }
       System.out.println("들어옴 2");
       //그룹 중복 가입된거 체크 
//       boolean member_check = j_dao.check_member(session.getAttribute("session_id").toString(), group_num);
//       System.out.println("들어옴 3");
//       if(member_check) {
//    	   PrintWriter out = response.getWriter();
//    	   response.setContentType("text/html;charset=UTF-8");
//    	   out.println("<script>");
//    	   out.println("alert('중복가입입니다.');history.back();");
//    	   out.println("</script>");
//    	   out.close();
//    	   return null;
//    	   }
       
       g_bean = g_dao.getGroupdetail(group_num);
       
       System.out.println("들어옴 3");
              // 현재 그룹 정보(그룹명, 정원, 현재인원, 설명 ... ) 가져옴       
       GroupBean groupinfo = g_dao.getGroup_info(group_num);
       
       
       
       //그룹 멤버 가져오기
       System.out.println("groupMember불러오기");
       List<String> group_member = j_dao.getMemberIdList(group_num);
      //List<String> group_member = j_dao.group; 
      // System.out.println("groupMember 불러오기");
      // List<String> group_member = j_dao.getmember
       
       
       System.out.println("댓글 리스트 불러오기");
       //댓글 리스트 불러오기   
       List<GroupReplyBean> replyBeanList = r_dao.getReply(group_num);
       
       
       //댓글 개수 불러오기
       int replyCnt = r_dao.getReplyCnt(group_num);
      
       System.out.println("groupBean = " + g_bean);
       System.out.println("groupinfo =" + groupinfo);
       System.out.println("grodcdup_num = " + group_num);
       System.out.println("replyBeanList = " + replyBeanList);
       
       

       if(group_num != 0) {
    	   ActionForward forward = new ActionForward();
    	   System.out.println("들어옴4");
    	   request.setAttribute("g_bean", g_bean);
    	   System.out.println("들어옴5");
    	   request.setAttribute("replyBeanList", replyBeanList);
    	   System.out.println("들어옴6");
    	   request.setAttribute("group_member", group_member );
    	   System.out.println("들어옴7");
    	   request.setAttribute("groupinfo", groupinfo);
    	   System.out.println("들어옴8");
    	   request.setAttribute("groupList", g_dao.hottes_group());
    	   System.out.println("들어옴9");
    	   request.setAttribute("replyCnt", replyCnt);
    	   forward.setRedirect(false);
    	   System.out.println("들어옴9");
    	   forward.setPath("/groupView.jsp");
    	   System.out.println("들어옴10");
    	   return forward;
    	 }
       
       
     return null;       
       
	}
}
       
        
        
        
        
        
        
        
        
        
        
        
    			
    
         
        
              
      
		
	


