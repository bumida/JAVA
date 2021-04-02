package com.revu.app.group.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.revu.app.member.dao.MemberBean;
import com.revu.config.SqlMapConfig;

public class GroupJoinDao {
   SqlSessionFactory sessionf = SqlMapConfig.getSqlMapInstance();
   SqlSession sqlSession;
   
   public GroupJoinDao() {
	  sqlSession = sessionf.openSession(true);
}
	
   public boolean joinGroup( int group_num,String group_name, String member_id, String blog_mail, String member_name, String member_hp, String member_zipcode, String member_address, String member_address_detail, String member_address_etc) {
	   boolean check = false;
	   HashMap<String, Object> map = new HashMap<>();
	   map.put("group_num", group_num);
	   map.put("group_name", group_name);
	   map.put("member_id", member_id);
	   map.put("blog_mail", blog_mail);
	   map.put("member_name", member_name);
	   map.put("member_hp", member_hp);
	   map.put("member_zipcode", member_zipcode);
	   map.put("member_address", member_address);
	   map.put("member_address_detail", member_address_detail);
	   map.put("member_address_etc", member_address_etc);
	   if (sqlSession.insert("GroupJoined.joinGroup", map) == 1) {
		   check = true;
	   }
	   
	   return check;
	   
   }
   
   public List<GroupJoinBean> getGroupJoinList(int startRow, int endRow) {
	   HashMap<String, Integer> pageMap = new HashMap<>();
	   pageMap.put("startRow", startRow);
	   pageMap.put("endRow", endRow);
	   List<GroupJoinBean> groupList = sqlSession.selectList("GroupJoined.GroupListAll", pageMap);
	   
	   
	   return groupList;
		 
	}
  
   public int getGroupJoinCnt() {
		return sqlSession.selectOne("GroupJoined.groupJoinCnt");
	}
   
   
   public List<GroupJoinBean> getMemberList(int group_num, int endNum, int startNum) {
	   HashMap<String, Integer> map = new HashMap<>();
	   map.put("group_num", group_num);
	   map.put("endNum", endNum);
	   map.put("startNum", startNum);
	   List<GroupJoinBean> list = sqlSession.selectList("GroupJoined.getMember", map);
	   return list;
   }
   public boolean check_member(String member_id, int group_num) {
	   boolean check = false;
	   HashMap<String, Object> map = new HashMap<>();
	   map.put("member_id", member_id);
	   map.put("group_num", group_num);
	   if(Integer.parseInt(sqlSession.selectOne("GroupJoined.memberCheck", map)) == 1){
		   check = true;
	   }
	   return check;
   }
   public List<String> getMemberIdList(int group_num) {
	   List<String> member_list = sqlSession.selectList("GroupJoined.getMemberList", group_num);
	   return member_list;
   }
	
   public void deleteGroupJoin(int group_num) {
		sqlSession.delete("GroupJoined.deleteGroupJoin", group_num);
	}
   public List<String> newGroupJoinList() {
		List<String> groupList =	sqlSession.selectList("GroupJoined.new_groupJoinList");
			return groupList;
		}



}
   

