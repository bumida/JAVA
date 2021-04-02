package com.revu.app.board;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.revu.action.Action;
import com.revu.action.ActionForward;

public class BoardFrontController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
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
		
		if(command.equals("/board/BoardList.do")) {
			System.out.println("boardList 들어옴");
			action = new BoardListAction();
			
			try {
				forward = action.execute(req, resp);
			} catch (Exception e) {
				System.out.println(e);
			}
			
		}else if(command.equals("/board/BoardWrite.do")) {
			System.out.println("boardWrite do 컨트롤 들어옴");
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("/boardWrite.jsp");
			
		}else if(command.equals("/board/BoardWriteOk.do")) {
			System.out.println("BoardWrite 컨드롤 들어옴");
			action = new BoardWriteokAction();
			
			try {
				forward = action.execute(req, resp);
			} catch (Exception e) {
				System.out.println(e);
			
			}
			
		}else if(command.equals("/board/BoardView.do")) {
			System.out.println("BoardView 컨트롤 들어옴");
			action = new BoardViewAction();
			
			try {
				forward = action.execute(req, resp);
			} catch (Exception e) {
				System.out.println(e);
			}
		}else if(command.equals("/board/BoardDelete.do")) {
		 System.out.println("BoardDelete 컨트롤 들어옴");
		 action = new BoardDeleteAction();
		   try {
			   forward = action.execute(req, resp);
		   } catch (Exception e) {
			   System.out.println(e);
		   }
		}else{
		forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("/app/error/404.jsp");
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
