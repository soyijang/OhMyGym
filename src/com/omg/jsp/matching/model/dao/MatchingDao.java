package com.omg.jsp.matching.model.dao;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import com.omg.jsp.matching.model.vo.MatchingRequest;
import com.omg.jsp.member.model.dao.MemberDao;
import static com.omg.jsp.common.JDBCTemplate.*;

public class MatchingDao {
	
	private Properties prop = new Properties();
	public MatchingDao() {
		String fileName = MemberDao.class.getResource("/sql/matching/matching-query.properties").getPath();
		
		try {
			prop.load(new FileReader(fileName));
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	public MatchingRequest checkMatch(Connection con, String memberId) {
		
		PreparedStatement pstmt = null;
		
		ResultSet rset = null;
		
		MatchingRequest matchResult = new MatchingRequest();
		
		String query = prop.getProperty("checkMatch");
		
		try {
			pstmt = con.prepareStatement(query);
			
			pstmt.setString(1, memberId);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				matchResult.setTrainerId(rset.getString("TRAINER_ID"));
				matchResult.setFollowerId(rset.getString("FOLLOWER_ID"));
				matchResult.setTrainerName(rset.getString("MEMBER_NAME"));
				matchResult.setGroupCommuNum(rset.getString("GROUP_CONTAINERNUM"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		return matchResult;
	}

}
