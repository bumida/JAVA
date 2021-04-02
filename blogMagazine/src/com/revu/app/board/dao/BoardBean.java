package com.revu.app.board.dao;

public class BoardBean {
private String board_num;
private String board_title;
private String board_contents;
private String board_date;
private int board_readcout;
 
public BoardBean() {;}

public String getBoard_num() {
	return board_num;
}

public void setBoard_num(String board_num) {
	this.board_num = board_num;
}
public String getBoard_date() {
	return board_date;
}

public void setBoard_date(String board_date) {
	this.board_date = board_date;
}


public String getBoard_title() {
	return board_title;
}

public void setBoard_title(String board_title) {
	this.board_title = board_title;
}

public String getBoard_contents() {
	return board_contents;
}

public void setBoard_contents(String board_contents) {
	this.board_contents = board_contents;
}



public int getBoard_readcout() {
	return board_readcout;
}

public void setBoard_readcout(int board_readcout) {
	this.board_readcout = board_readcout;
}





}
