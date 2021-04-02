package com.revu.app.group.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.revu.app.group.GroupReplyOkAction;
import com.revu.config.SqlMapConfig;

public class GroupReplyDao {
     SqlSessionFactory sessionf = SqlMapConfig.getSqlMapInstance();
     SqlSession sqlSession;
     
     
     public GroupReplyDao() {
         sqlSession = sessionf.openSession(true); 
    	 
     }
     public boolean insertReply(GroupReplyBean r_bean) {
    	 boolean check = false;
    	 if(sqlSession.insert("Group.insertReply", r_bean) == 1) {
    		 check = true;
    		 GroupReplyOkAction.check = false;
    		 
    	 }
    	 return check;
    	 
     }
     
     public List<GroupReplyBean> getReply(int group_num) {
    	 List<GroupReplyBean> replyList = sqlSession.selectList("Group.getReply", group_num);
    	 return replyList;
     }
     public int getReplyCnt(int group_num) {
     	return sqlSession.selectOne("Group.ReplyCnt", group_num);
     }
     
     public void deleteReply(int group_num) {
 		sqlSession.delete("Group.deleteReply", group_num);
 	}
 	
 	public void deleteOneReply(int reply_num) {
 		sqlSession.delete("Group.deleteOneReply", reply_num);
 	}
     
     
}
