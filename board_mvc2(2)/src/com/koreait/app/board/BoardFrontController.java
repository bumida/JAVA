package com.koreait.app.board;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;

public class BoardFrontController extends HttpServlet{
	//web.xml로 보내주기위한 클래스
	//web.xml로 보내주기위한 클래스
	//web.xml로 보내주기위한 클래스
	//web.xml로 보내주기위한 클래스
	//web.xml로 보내주기위한 클래스
	//web.xml로 보내주기위한 클래스
	//web.xml로 보내주기위한 클래스
	//web.xml로 보내주기위한 클래스
	//web.xml로 보내주기위한 클래스
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
	//GET, POST 방식에 관계없이 doProcess( ) 메서드를 통해 모든 작업이 처리된다. doProcess( ) 메서드에서는 먼저 URL에서 명령어를 추출한다. 
	//그리고 추출한 명령어에 해당하는 Action을 실행한다. 
	//Action이 실행되고 나면 ActionForward를 반환하는데 여기에 담겨있는 정보를 통해 화면 이동을 처리한다.


	protected void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String requestURI = req.getRequestURI();
		String contextPath = req.getContextPath();
		String command = requestURI.substring(contextPath.length());
		ActionForward forward = null;
		Action action = null;
		
		//command의 값과 일치유무를 확인합니다.
		if(command.equals("/board/BoardList.bo")) {
			
			//일치하는 경우 해당 Action의 처리한 뒤에 리턴 값을 받습니다.
			action = new BoardListAction();
			
			try {
				forward = action.execute(req, resp);
			} catch (Exception e) {
				System.out.println(e);
			}
			
		}else if(command.equals("/board/BoardWrite.bo")) {
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("/app/board/boardWrite.jsp");
			
		}else if(command.equals("/board/BoardWriteOk.bo")) {
			
			action = new BoardWriteOkAction();
			
			try {
				forward = action.execute(req, resp);
			} catch (Exception e) {
				System.out.println(e);
			}
			
		}else if(command.equals("/board/BoardView.bo")) {
			
			action = new BoardViewAction();
			
			try {
				forward = action.execute(req, resp);
			} catch (Exception e) {
				System.out.println(e);
			}
			
		}else if(command.equals("/board/FileDownload.bo")) {
			action = new FileDownloadAction();
			try {
				action.execute(req, resp);
			} catch (Exception e) {
				System.out.println(e);
			}
		}else if(command.equals("/board/BoardReplyOk.bo")) {
			action = new BoardReplyOkAction();
			try {
				forward = action.execute(req, resp);
			} catch (Exception e) {
				System.out.println(e);
			}
		}else if(command.equals("/board/BoardReplyDeleteOk.bo")) {
			action = new BoardReplyDeleteOkAction();
			try {
				forward = action.execute(req, resp);
			} catch (Exception e) {
				System.out.println(e);
			}
		}else if(command.equals("/board/BoardDeleteOk.bo")) {
			action = new BoardDeleteOkAction();
			try {
				forward = action.execute(req, resp);
			} catch (Exception e) {
				System.out.println(e);
			}
		}else {
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

	
	
	
	
	
	
	
	
	
	
	
	
	
	