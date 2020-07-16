package com.omg.jsp.groupCommu.model.dao;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.omg.jsp.groupCommu.model.vo.GroupCommuPost;
import com.omg.jsp.member.model.dao.MemberDao;
import static com.omg.jsp.common.JDBCTemplate.*;


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
	
	public int insertPost(Connection con, GroupCommuPost requestPost) {
		
		PreparedStatement pstmt = null;
		
		int result = 0;
		
		String query =prop.getProperty("insertpost");
		
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

	public ArrayList<GroupCommuPost> selectPost(Connection con) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		ArrayList<GroupCommuPost> list = null;
		
		String query = prop.getProperty("selectPostList");
		
		try {
			pstmt = con.prepareStatement(query);
			
			rset = pstmt.executeQuery();
			
			list = new ArrayList<GroupCommuPost>();
			
			while(rset.next()) {
				GroupCommuPost post = new GroupCommuPost();
				post.setGroupUserId(rset.getString("MEMBER_ID"));
				post.setGroupContent(rset.getString("GROUP_CONTENT"));
				post.setGroupDate(rset.getString("GROUP_DATE"));
				post.setGroupFileCode(rset.getString("GROUP_FILECODE"));
				post.setGroupType(rset.getString("GROUP_TYPE"));
				post.setGroupDateTime(rset.getString("GROUP_TIME"));
				list.add(post);
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		
		return list;
	}

}
