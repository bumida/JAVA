package com.revu.app.group.dao;

public class GroupReplyBean {
 private int reply_num;
 private int group_num;
 private String member_id;
 private String reply_contents;
 
 
 public GroupReplyBean(){;}


public int getReply_num() {
	return reply_num;
}


public void setReply_num(int reply_num) {
	this.reply_num = reply_num;
}


public int getGroup_num() {
	return group_num;
}


public void setGroup_num(int group_num) {
	this.group_num = group_num;
}


public String getMember_id() {
	return member_id;
}


public void setMember_id(String member_id) {
	this.member_id = member_id;
}


public String getReply_contents() {
	return reply_contents;
}


public void setReply_contents(String reply_contents) {
	this.reply_contents = reply_contents;
 }
 
 
  
         
         
}
