package com.revu.app.group.dao;

import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.oreilly.servlet.MultipartRequest;
import com.revu.config.SqlMapConfig;

public class FilesDao {
    SqlSessionFactory sessionf = SqlMapConfig.getSqlMapInstance();
    SqlSession sqlsession;
    
    
    public FilesDao() {
	  sqlsession = sessionf.openSession(true);
    }
    
	public boolean insertFiles(MultipartRequest multi, String member_id) {
		HashMap<String, Object> fileMap = new HashMap<>();
		Enumeration<String> files = multi.getFileNames();
		boolean check = true;
		
		fileMap.put("member_id", member_id);
		
		//hasMoreElements() Enumeration의 요소가 있으면 true, 아니면 false 반환
		while(files.hasMoreElements()) {
			String data = files.nextElement();
			
			if(multi.getFilesystemName(data) == null) {continue;}
			fileMap.put("file_name", multi.getFilesystemName(data));
			
			if(sqlsession.insert("Files.insert", fileMap) != 1) {
				check = false;
				break;
				}
		}
		return check;
	}
	
	public List<FilesBean> getDetail(int group_num) {
		List<FilesBean> filesBeanList = sqlsession.selectList("Files.getDetail", group_num);
		return filesBeanList;
	}
		
	
	public void deleteFiles(int group_num) {
			sqlsession.delete("Files.delete", group_num);
		}	
		
	}
	

