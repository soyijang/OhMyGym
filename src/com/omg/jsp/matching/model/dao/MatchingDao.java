package com.omg.jsp.matching.model.dao;

import static com.omg.jsp.common.JDBCTemplate.close;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Properties;

import com.omg.jsp.matching.model.vo.MatchingRequest;
import com.omg.jsp.member.model.dao.MemberDao;
import com.omg.jsp.member.model.vo.Member;
import com.omg.jsp.trainerCareer.model.vo.TrainerCareer;
import com.omg.jsp.trainerEducation.model.vo.TrainerEducation;
import com.omg.jsp.trainerReview.model.vo.TrainerReview;

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
	public ArrayList<HashMap<String, Object>> selectTrainerList(Connection con) {
		Statement stmt = null;
		ArrayList<HashMap<String, Object>> list = null;
		HashMap<String, Object> hmap = null;
		ResultSet rset = null;

		String query = prop.getProperty("selectTrainerList");
		
		try {
			stmt = con.createStatement();
			
			rset = stmt.executeQuery(query);
			
			list = new ArrayList<>();
			
			while(rset.next()) {
				hmap = new HashMap<>();
				
				hmap.put("trainerId", rset.getString("MEMBER_ID"));
				hmap.put("gradeAvg", rset.getDouble("AVG(R.GRADE)"));
				hmap.put("trainerComment", rset.getString("TRAINER_COMMENT"));
				hmap.put("mainField", rset.getString("TRAINER_MAINFIELD"));
				hmap.put("subField", rset.getString("TRAINER_SUBFIELD"));
				
				list.add(hmap);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(stmt);
			close(rset);
		}
		
		return list;
	}
	public HashMap<String, Object> selectTrainerMap(Connection con, String memberId) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		HashMap<String, Object> hmap = null;
		Member trainer = null;
		TrainerReview tr = null;
		TrainerCareer tc = null;
		TrainerEducation te = null;
		
		return hmap;
	}
	

}
