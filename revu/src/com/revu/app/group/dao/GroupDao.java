package com.revu.app.group.dao;

import java.util.Arrays;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.revu.config.SqlMapConfig;

public class GroupDao {
	SqlSessionFactory sessionf = SqlMapConfig.getSqlMapInstance();
	SqlSession sqlsession;


	
	public boolean newGroup(GroupBean bean) {
		boolean check = false;
		if (sqlsession.insert("Group.newGroup", bean) == 1) {
			check = true;
		}
		return check;
	}
	
	
	public GroupDao() {
         sqlsession = sessionf.openSession(true);
	}
	
	public int getGroupCnt() {
		return sqlsession.selectOne("Group.groupCnt");
	}
	
	public int getGroupReplyCnt(int group_num) {
		return sqlsession.selectOne("Group.groupReplyCnt", group_num);
	}
	
	
	public int getGroupSeq() {
		return sqlsession.selectOne("Group.Seq");
	}

	public void updateGroup(GroupBean g_bean) {
		sqlsession.update("Group.updateGroup", g_bean);
	}
	
	public GroupBean getGroupdetail(int group_num) {
		return sqlsession.selectOne("Group.getDetail", group_num);
}
	
	public void group_delete(int group_num) {
		sqlsession.delete("Group.groupDelete", group_num);
	}
	
	
	public List<GroupBean> getGroupList(int startRow, int endRow) {
		HashMap<String, Integer> pageMap = new HashMap<>();
		pageMap.put("startRow", startRow);
		pageMap.put("endRow", endRow);
		List<GroupBean> groupList = sqlsession.selectList("Group.listAll", pageMap);
		return groupList;
	}
	
	public GroupBean getGroup_info(int group_num) {
		GroupBean group = sqlsession.selectOne("Group.getGroupinfo", group_num);

		return group;
	}
	
	public List<String> getGroupMember(int group_num) {
		String members = sqlsession.selectOne("Group.getGroupMember", group_num);
		if (members == null) {
			return null;
		}
		List<String> group_member = Arrays.asList(members.split(","));
		return group_member;
	}
	
	public List<GroupBean> newest_group() {
	List<GroupBean> groupList =	sqlsession.selectList("Group.new_groupList");
		return groupList;
	}
	
	public List<GroupBean> hottes_group() {
		List<GroupBean> groupList =	sqlsession.selectList("Group.hot_groupList");
		return groupList;
	}
	
	public void addMembernum(int group_num) {
      sqlsession.update("Group.addMemberNum", group_num);
	}
	
		
	
}
