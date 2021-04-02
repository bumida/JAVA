package com.revu.app.group;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.revu.action.Action;
import com.revu.action.ActionForward;

public class GroupFrontController extends HttpServlet {

   @Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	doProcess(req, resp);
}	
   
  @Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	} 

	protected void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("groupFrontController 들어옴");
		 String requestURI = req.getRequestURI();
		 String contextPath = req.getContextPath();
		 String command = requestURI.substring(contextPath.length());
		 ActionForward forward = null;
		 Action action = null;
		 
		 if(command.equals("/Grouplist.gr")) {
			 System.out.println("groupList.gr 들어옴");
			 action = new GroupListAction();
			 try {
				 forward = action.execute(req, resp);
			 } catch (Exception e) {
				 System.out.println(e);
			 }
	}else if(command.equals("/group/Grouping.gr")) { 
		System.out.println("groupfrontController-grouping.gr들어옴");
		action = new GroupingAction();
		try {
			forward = action.execute(req, resp);
		} catch (Exception e) {
			System.out.println(e);
		}
		
	}else if(command.equals("/group/GroupList.gr")) {
		System.out.println("GroupMainListAction들어옴");
		action = new GroupMainListAction();
		try {
			forward = action.execute(req, resp);
		} catch (Exception e) {
			System.out.println(e);
		}
		
	}else if(command.equals("/group/Groupview.gr")) {
		System.out.println("groupView 컨트롤 들어옴");
		action = new GroupViewAction();
		try {
			forward = action.execute(req, resp);
		} catch (Exception e) {
			System.out.println(e);
		}
	}else if(command.equals("/group/GroupReplyOk.gr")) {
	    System.out.println("GroupReply 컨트롤 들어옴");	
		action = new GroupReplyOkAction();
		try {
			forward = action.execute(req, resp);
		} catch (Exception e) {
			System.out.println(e);
		}
	}else if(command.equals("/group/GroupJoinPage.gr")) {
	    System.out.println("GroupJoinPage 컨트롤 들어옴");	
		action = new GroupJoinPageAction();
		try {
			forward = action.execute(req, resp);
		} catch (Exception e) {
			System.out.println(e);
		}
	}else if(command.equals("/group/GroupJoin.gr")) {
	    System.out.println("GroupJoin 컨트롤 들어옴");	
		action = new GroupJoinAction();
		try {
			forward = action.execute(req, resp);
		} catch (Exception e) {
			System.out.println(e);
		}
	}else if(command.equals("/group/GroupCommentPage.gr")) {
	    System.out.println("GroupCommentPageAction 컨트롤 들어옴");	
		action = new GroupCommentPageAction();
		try {
			forward = action.execute(req, resp);
		} catch (Exception e) {
			System.out.println(e);
		}
	}else if(command.equals("/group/GroupAdminPage.gr")) {
	    System.out.println("GroupAdminPageAction 컨트롤 들어옴");	
		action = new GroupAdminPageAction();
		try {
			forward = action.execute(req, resp);
		} catch (Exception e) {
			System.out.println(e);
		}
	}else if(command.equals("/group/GroupRegisterOk.gr")) {
	    System.out.println("GroupRegister ok 컨트롤 들어옴");	
		action = new GroupRegisterAction();
		try {
			forward = action.execute(req, resp);
		} catch (Exception e) {
			System.out.println(e);
		}
	}else if(command.equals("/group/GroupDeleteOk.gr")) {
	    System.out.println("GroupDelete ok 컨트롤 들어옴");	
		action = new GroupDeleteAction();
		try {
			forward = action.execute(req, resp);
		} catch (Exception e) {
			System.out.println(e);
		}
	}else if(command.equals("/group/GroupReplyDeleteOk.gr")) {
	    System.out.println("GroupReplyDelete ok 컨트롤 들어옴");	
		action = new GroupReplyDeleteAction();
		try {
			forward = action.execute(req, resp);
		} catch (Exception e) {
			System.out.println(e);
		}
	}else if(command.equals("/group/GroupRegister.gr")) {
	    System.out.println("GroupRegister 컨트롤 들어옴");	
		forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("/groupRegister.jsp");
		
	}else {
	
		forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("/error/404.jsp");
	}
	if(forward != null) {
		if(forward.isRedirect()) {
			resp.sendRedirect(forward.getPath());
		}else {
			RequestDispatcher dispatcher = req.getRequestDispatcher(forward.getPath());
			dispatcher.forward(req, resp);
			
		}
	}

	
	
	
	
	}	
}
