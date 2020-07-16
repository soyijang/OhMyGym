package com.omg.jsp.challenge.model.dao;

import static com.omg.jsp.common.JDBCTemplate.*;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Properties;

import com.omg.jsp.challenge.model.vo.Challenge;

public class ChallengeDao {

	private Properties prop = new Properties();
	
	public ChallengeDao() {
		String fileName = ChallengeDao.class.getResource("/sql/challenge/challenge-query.properties").getPath();
		
		try {
			prop.load(new FileReader(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public int insertChallenge(Connection con, Challenge challenge) {
		
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("insertChallenge");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, challenge.getTitle());
//			pstmt.setString(2, challenge.getManageCode());
			pstmt.setString(2, challenge.getStartDate());
			pstmt.setString(3, challenge.getEndDate());
//			pstmt.setString(5, challenge.getPostDate());
//			pstmt.setInt(4, challenge.getJoin());
			pstmt.setString(4, challenge.getManagerID());
			pstmt.setString(5, challenge.getIngStartDate());
			pstmt.setString(6, challenge.getIngEndDate());
			pstmt.setInt(7, challenge.getLimit());
			pstmt.setString(8, challenge.getContent());
			pstmt.setInt(9, challenge.getPayLimit());
			
			
			result = pstmt.executeUpdate();
			
			
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}
	
	
	
}
