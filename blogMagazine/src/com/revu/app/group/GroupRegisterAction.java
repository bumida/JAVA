package com.revu.app.group;

import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.revu.action.Action;
import com.revu.action.ActionForward;
import com.revu.app.group.dao.FilesDao;
import com.revu.app.group.dao.GroupBean;
import com.revu.app.group.dao.GroupDao;

public class GroupRegisterAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		System.out.println("groupRegister action 들어옴");
		
		
		
		HttpSession session = request.getSession();
		ActionForward forward = new ActionForward();
		GroupBean g_bean = new GroupBean();
		GroupDao g_dao = new GroupDao();
		FilesDao f_dao = new FilesDao();
		String saveFolder = "C:\\Users\\민경범\\Desktop\\web개발\\workspace\\revu\\WebContent\\assets\\img\\upload";
		int fileSize = 5 * 1024 * 1024;
		boolean g_result = false;
		boolean f_result = false;
		String group_file1 = "";
		String group_file2 = "";
		
		
		try {
			
			
			MultipartRequest multi = null;
			multi = new MultipartRequest(request, saveFolder, fileSize, "UTF-8", new DefaultFileRenamePolicy());
			
		
		System.out.println("1");	
		g_bean.setGroup_name(multi.getParameter("group_name"));
		System.out.println("group_name ="+multi.getParameter("group_name"));
		g_bean.setGroup_contents(multi.getParameter("group_contents"));
		System.out.println("group_contents =" + multi.getParameter("group_contents"));
		g_bean.setGroup_info(multi.getParameter("group_info"));
		System.out.println("group_info =" + multi.getParameter("group_info"));
		g_bean.setGroup_info_two(multi.getParameter("group_info_two"));
		System.out.println("group_info_two =" + multi.getParameter("group_info_two"));
		g_bean.setGroup_info_three(multi.getParameter("group_info_three"));
		System.out.println("group_info_three =" + multi.getParameter("group_info_three"));
		g_bean.setMember_max(Integer.parseInt(multi.getParameter("member_max").trim()));
		System.out.println("member_max" + multi.getParameter("member_max"));
		g_bean.setGroup_region(multi.getParameter("group_region"));
		System.out.println("group_region" + multi.getParameter("group_region"));
		g_bean.setGroup_img(multi.getParameter("group_img"));
		System.out.println("group_img" + multi.getParameter("group_region"));
		g_bean.setGroup_imgmain(multi.getParameter("group_imgmain"));
		System.out.println("group_imgmain" + multi.getParameter("group_imgmain"));
		g_bean.setMember_id(session.getAttribute("session_id").toString());
		System.out.println("session_id =" + session.getAttribute("session_id"));
	g_result =	g_dao.newGroup(g_bean);
	System.out.println("group 생성완료");
	
	 
	    //업로드한 파일들의 이름을 얻어옴
	    Enumeration files = multi.getFileNames();
	    
	    String file = (String)files.nextElement();
	    group_file1 = multi.getFilesystemName(file);
	    
	    String file2 = (String)files.nextElement();
	    group_file2 = multi.getFilesystemName(file2);
	    System.out.println("group_file1 =" + multi.getParameter("group_file1"));
	   System.out.println("group_files2 =" + multi.getParameter("group_file2"));
	
	
	f_result = f_dao.insertFiles(multi, session.getAttribute("session_id").toString());		
			
		        
        
        if(!g_result || !f_result) {
        	PrintWriter out = response.getWriter();
        	response.setContentType("text/html;charset=UTF-8");
        	out.println("<script>");
        	out.println("alert('게시글 등록 실패. 다시 시도해주세요.');");
        	out.println("</script>");
            out.close();
            return null;
        	
        }
        
        
        
		
		
		forward.setRedirect(true);
        forward.setPath(request.getContextPath() + "/Grouplist.gr");
        return forward;
	} catch(Exception e) {
		System.out.println(e);
	}
		return null;
	}

}
