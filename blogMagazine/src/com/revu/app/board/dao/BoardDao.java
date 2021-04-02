package com.revu.app.board.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.revu.config.SqlMapConfig;

public class BoardDao {
    SqlSessionFactory sessionf = SqlMapConfig.getSqlMapInstance();
    SqlSession sqlsession;
    
    public BoardDao() {
    	
    	sqlsession = sessionf.openSession(true);
	}
    
    public int getBoardCnt() {
    	return sqlsession.selectOne("Board.boardCnt");
    }
    
    public List<BoardBean> getBoardList(int startRow, int endRow) {
    	HashMap<String, Integer> pageMap = new HashMap<>();
    	pageMap.put("startRow", startRow);
    	pageMap.put("endRow", endRow);
    	List<BoardBean> boardList = sqlsession.selectList("Board.listAll", pageMap);
    	return boardList;
    }
    public BoardBean getDetail(int board_num) {
		return sqlsession.selectOne("Board.getDetail", board_num);
	}
    
    
    
    public boolean insertBoard(BoardBean bean) {
    	boolean check = false;
    	if(sqlsession.insert("Board.insertBoard", bean) == 1) {
    		check = true;
    	}
    	return check;
    }
    
    public void deleteBoard(int board_num) {
    	sqlsession.delete("Board.deleteBoard", board_num);
    }
    
    
    
}
