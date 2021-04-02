package com.revu.app.group;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.revu.action.Action;
import com.revu.action.ActionForward;
import com.revu.app.group.dao.GroupJoinDao;

public class ExcelDownloadAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
	System.out.println("excelDownload Action 들어옴");
	
	
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	
	ActionForward forward = new ActionForward();
	
	GroupJoinDao j_dao = new GroupJoinDao();	
	
    request.setAttribute("newGroupJoinList", j_dao.newGroupJoinList()); 
	
    forward.setRedirect(false);
	
    forward.setPath("/excelDownload.jsp");		
   
    return forward;
	}

}
