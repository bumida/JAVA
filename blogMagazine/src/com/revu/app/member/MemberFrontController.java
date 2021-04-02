package com.revu.app.member;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.javassist.SerialVersionUID;

import com.revu.action.Action;
import com.revu.action.ActionForward;


/*
 * 회원가입 관련 
 *
 */


public class MemberFrontController extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
/*
 * get 방식일 경우	
 * 
 */
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
/*
 * post 방식일 경우
 * 
 */
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
	
	protected void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String requestURI = req.getRequestURI();
		String contextPath = req.getContextPath();
		String command = requestURI.substring(contextPath.length());
		ActionForward forward = null;
		Action action = null;
    	System.out.println("경로 :" + command);
		
		if(command.equals("/member/MemberLogin.me")) {
    		System.out.println("memberJoin 들어옴");
    		forward = new ActionForward();
    		forward.setRedirect(false);
    		forward.setPath("/login.jsp");
    	//회원가입 성공
    	}else if(command.equals("/member/MemberJoinOk.me")) {
    		System.out.println("회원가입 action 들어옴");
    		action = new MemberJoinOkAction();
		
		try {
			forward = action.execute(req, resp);
		} catch (Exception e) {
			System.out.println(e);
		} 
		
		//로그인 성공
    	}else if(command.equals("/member/MemberLoginOk.me")){
    	System.out.println("로그인 controller 들어옴");
    	action = new MemberLoginOk();
    	
    	try {
    		forward = action.execute(req, resp);
    	} catch (Exception e) {
    		System.out.println(e);
    	}
    	//아이디 중복체크
    	}else if (command.equals("/member/MemberCheckIdOk.me")) {
    		System.out.println("member checkid controller 들어옴");
    	action = new MemberCheckIdOkAction();
		try { 
    		 forward = action.execute(req, resp);
    	} catch (Exception e) {
    		System.out.println(e);
    	}
		//로그아웃 성공
    	}else if(command.equals("/member/MemberLogOut.me")) {
    	   System.out.println("MemberLogout 들어옴");
    	action = new MemberLogOutAction();
    	try {
    		forward = action.execute(req, resp);
    	}catch (Exception e) {
    		System.out.println(e);
    	}
    }else {
    	
    		forward = new ActionForward();
    		forward.setRedirect(false);
    		forward.setPath("/err/404.jsp");
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
