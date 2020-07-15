package com.omg.jsp.groupCommu.model.dao;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.omg.jsp.groupCommu.model.vo.GroupCommuPost;
import com.omg.jsp.member.model.dao.MemberDao;

public class GroupCommuDao {

	private Properties prop = new Properties();
	public GroupCommuDao() {
		String fileName = MemberDao.class.getResource("/sql/groupcommunity/groupCommu-query.properties").getPath();
		
		try {
			prop.load(new FileReader(fileName));
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public int insertReply(Connection con, GroupCommuPost requestPost) {
		
		PreparedStatement pstmt = null;
		
		int result = 0;
		
		String query =prop.getProperty("insertReply");
		
		try {
			pstmt = con.prepareStatement(query);
				
			pstmt.setString(1, "운동");
			pstmt.setString(2, requestPost.getGroupContent());
			pstmt.setString(3, requestPost.getGroupUserId());
			pstmt.setString(4, "follower");
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return result;
	}

	public ArrayList<GroupCommuPost> selectPostList(Connection con) {
		return null;
	}

}
