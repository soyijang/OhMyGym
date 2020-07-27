package com.omg.jsp.trainerList.model.dao;

import static com.omg.jsp.common.JDBCTemplate.close;

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
import com.omg.jsp.member.model.vo.Member;
import com.omg.jsp.trainerList.model.vo.followerHealth;
import com.omg.jsp.trainerList.model.vo.followerList;

public class listDao {
	
	private Properties prop = new Properties();
	public listDao() {
		String fileName = MemberDao.class.getResource("/sql/followerList/list-query.properties").getPath();
		
		try {
			prop.load(new FileReader(fileName));
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<followerList> checkList(Connection con, Member member) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		ArrayList<followerList> list = null;
		
		String query = prop.getProperty("checkList");
		
		try {
			pstmt = con.prepareStatement(query);
			
			pstmt.setString(1, member.getMemberId());
			
			rset = pstmt.executeQuery();
			
			list = new ArrayList<followerList>();
			
			while(rset.next()) {
				followerList follower = new followerList();
				
				follower.setFollowerId(rset.getString("FOLLOWER_ID"));
				follower.setTrainerId(rset.getString("TRAINER_ID"));
				follower.setFollowerName(rset.getString("MEMBER_NAME"));
				follower.setProfileCode(rset.getString("PROFILE_FILECODE"));
				follower.setMatchingDate(rset.getString("REQUEST_DATE"));
				
				list.add(follower);
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		
		return list;
	}

	public followerHealth checkHealth(Connection con, String userId) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		followerHealth health = null;
		
		String query = prop.getProperty("checkHealth");
		
		try {
			pstmt = con.prepareStatement(query);
			System.out.println(userId);
			pstmt.setString(1, userId);
			pstmt.setString(2, userId);
			pstmt.setString(3, userId);
			pstmt.setString(4, userId);
			
			rset = pstmt.executeQuery();
			
			health = new followerHealth();
			
			if(rset.next()) {
				health.setFollowerId(userId);
				health.setFollowerHeight(rset.getString("HEIGHT"));
				health.setFollowerWeight(rset.getString("WEIGHT"));
				health.setFollowerPart(rset.getString("PART"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		
		return health;
	}

}
