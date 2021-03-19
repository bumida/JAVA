package com.koreait.action;

public class ActionForward {
	//페이지 이동을 처리하기위한 클래스
	private boolean isRedirect;//Redirect 사용여부, false이면 forward사용
	private String path; //이동할 다음화면
	
	public ActionForward() {;}

	public boolean isRedirect() {
		return isRedirect;
	}

	public void setRedirect(boolean isRedirect) {
		this.isRedirect = isRedirect;
	}

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}
	
}
