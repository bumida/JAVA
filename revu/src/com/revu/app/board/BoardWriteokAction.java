package com.revu.app.board;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.revu.action.Action;
import com.revu.action.ActionForward;
import com.revu.app.board.dao.BoardBean;
import com.revu.app.board.dao.BoardDao;

public class BoardWriteokAction implements Action {
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("boardAction forward 들어옴");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		BoardBean b_bean = new BoardBean();
		BoardDao b_dao = new BoardDao();
		ActionForward forward = new ActionForward();
		
		String saveFolder = "C:\\Users\\민경범\\Desktop\\web개발\\workspace\\revu\\WebContent\\file\\upload";
		int fileSize = 5 * 1024 * 1024; //5M
		boolean b_result = false;
		System.out.println("boardAction forward 들어옴 2");
		try {
			MultipartRequest multi = null;
			System.out.println("boardWriteAction forward 들어옴 3");
			multi = new MultipartRequest(request, saveFolder, fileSize, "UTF-8", new DefaultFileRenamePolicy());
			
			System.out.println(multi.getParameter("board_title"));
		    b_bean.setBoard_title(multi.getParameter("board_title"));
			b_bean.setBoard_contents(multi.getParameter("board_contents"));
			System.out.println("board_contents :" + multi.getParameter("board_contents"));
			
		    b_result = b_dao.insertBoard(b_bean);
		    if(!b_result) {
		    	PrintWriter out = response.getWriter();
		    	response.setContentType("text/html;charset=UTF-8");
		    	out.println("<script>");
		    	out.println("alert('게시글 등록 실패. 다시 시도해주세요.');");
		    	out.println("</script");
		    	out.close();
		    	return null;
		    }
		    forward.setRedirect(true);
		    forward.setPath(request.getContextPath() + "/board/BoardList.do");
			return forward;
		}catch (Exception e) {
			System.out.println(e);
		}
		return null;
      		
	}
}