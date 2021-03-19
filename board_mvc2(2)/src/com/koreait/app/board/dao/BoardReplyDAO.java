package com.koreait.app.board.dao;

import com.koreait.mybatis.config.SqlMapConfig;

import org.apache.ibatis.session.SqlSessionFactory;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

public class BoardReplyDAO {
	SqlSessionFactory sessionf = SqlMapConfig.getSqlMapInstance();
	SqlSession sqlsession;
	
	public BoardReplyDAO() {
		sqlsession = sessionf.openSession(true);
	}
	
	public boolean insertReply(BoardReplyBean r_bean) {
		boolean check = false;
		if(sqlsession.insert("Board.insertReply", r_bean) == 1) {
			check = true;
		}
		return check;
	}
	
	public List<BoardReplyBean> getReply(int board_num) {
		List<BoardReplyBean> replyList = sqlsession.selectList("Board.getReply", board_num);
		return replyList;
	}
	
	public void deleteReply(int board_num) {
		sqlsession.delete("Board.deleteReply", board_num);
	}
	
	public void deleteOneReply(int reply_num) {
		sqlsession.delete("Board.deleteOneReply", reply_num);
	}
}











