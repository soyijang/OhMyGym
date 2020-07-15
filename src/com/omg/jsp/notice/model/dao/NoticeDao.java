package com.omg.jsp.notice.model.dao;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;

import com.omg.jsp.notice.model.vo.Notice;

public class NoticeDao {
	
	private Properties prop=new Properties();
	
	public NoticeDao() {
		
		String fileName = NoticeDao.class.getResource("/sql/notice/notice-query.properties").getPath();
		
		try {
			prop.load(new FileReader(fileName));
			
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}

	//공지사항 목록 조회용 메소드
	public ArrayList<Notice> selectList(Connection con) {
		
		ArrayList<Notice> list = null;
		Statement stmt = null;
		ResultSet rset = null;
		
		String query = prop.getProperty("selectList");
		
		try {
			stmt=con.createStatement();
			rset=stmt.executeQuery(query);
			
			list = new ArrayList<Notice>();
			
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		return null;
	}

	public int insertNotice(Connection con, Notice newNotice) {
		
		
		
		
		return 0;
	}

}
