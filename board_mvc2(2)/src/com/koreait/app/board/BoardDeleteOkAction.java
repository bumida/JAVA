package com.koreait.app.board;

import java.io.File;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.app.board.dao.BoardDAO;
import com.koreait.app.board.dao.BoardReplyDAO;
import com.koreait.app.board.dao.FilesBean;
import com.koreait.app.board.dao.FilesDAO;

public class BoardDeleteOkAction implements Action {
//게시판 삭제
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		
		BoardDAO b_dao = new BoardDAO();
		//게시판 DAO	
		BoardReplyDAO r_dao = new BoardReplyDAO();
		//게시판 답글 DAO
		FilesDAO f_dao = new FilesDAO();
		//파일 DAO
		ActionForward forward = new ActionForward();
		//ActionForward클래스 페이지 이동을 처리하기위한거 
		int board_num = Integer.parseInt(request.getParameter("seq"));
		 //db에 seq를 받아와서 board_num에 담아준다.
		String saveFolder = "E:\\web4_1500_hds\\workspace\\board_mvc2\\WebContent\\app\\upload";
		for(FilesBean file : f_dao.getDetail(board_num)) {
			//파일 db에서 받아서 seq를 반복 FilesBean에 있는것을 반복해준다.
			File f = new File(saveFolder + "\\" + file.getFile_name());
			//??
			if(f.exists()) {f.delete();}//파일이존재하면 삭제
			//
		}
		f_dao.deleteFiles(board_num);
		// FilesDao클래스 db 삭제
		r_dao.deleteReply(board_num);
		// FilesDao클래스 db 삭제
		b_dao.deleteBoard(board_num);
		// FilesDao클래스 db 삭제
		
		forward.setRedirect(true); //true이면 redirect사용 //false이면 forward사용
		forward.setPath(request.getContextPath() + "/board/BoardList.bo");//이동할 다음화면
	     
		return forward;
		//db에서 불러온 데이터를  forward가저장후 jsp페이지로 보낸다.
	}

}














