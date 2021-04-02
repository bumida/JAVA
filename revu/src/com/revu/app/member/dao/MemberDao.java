package com.revu.app.member.dao;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.eclipse.jdt.internal.compiler.lookup.MemberTypeBinding;

import com.revu.config.SqlMapConfig;
/*
 * 
 * MemberDao
 */
public class MemberDao {
  SqlSessionFactory sessionf = SqlMapConfig.getSqlMapInstance(); 
		  SqlSession sqlsession;
		  
	public MemberDao() {
		sqlsession = sessionf.openSession(true);
	}
	
public boolean join(MemberBean Member) {
	System.out.println("joindao 들어옴");
	boolean check = false;
	if(sqlsession.insert("Member.join", Member) == 1) {
		check = true;
	}
	return check;
}

public boolean checkid(String id) {
	boolean check = false;
	if((Integer)sqlsession.selectOne("Member.checkid", id) == 1) {
		check = true;
	}
	return check;
}

public MemberBean getMemberinfo(String member_id) {
	return sqlsession.selectOne("Member.getMemberinfo", member_id);
}

public Map<String, String> login(String id, String pw){
	HashMap<String, String> data = new HashMap<>();
	
	data.put("id", id);
	data.put("pw", pw);
	
	Map<String, String> loginData = sqlsession.selectOne("Member.login", data);
	return loginData;
}
}
