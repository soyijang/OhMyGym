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
import com.omg.jsp.trainerCeritificate.model.vo.TrainerCeritificate;
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
//	public HashMap<String, Object> selectTrainerMap(Connection con, String memberId) {
//		PreparedStatement pstmt = null;
//		ResultSet rset = null;
//		HashMap<String, Object> hmap = null;
//		Member trainer = null;
//		TrainerReview tr = null;
//		TrainerCareer tc = null;
//		TrainerEducation te = null;
//		
//		String query = prop.getProperty("selectTrainerMap");
//		
//		try {
//			pstmt = con.prepareStatement(query);
//			
//		} catch (SQLException e) {
//			e.printStackTrace();
//		}
//		
//		return hmap;
//	}
	public ArrayList<String> selectTrainerInfo(Connection con, String memberId) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
//		Member m = new Member();
		ArrayList<String> list = new ArrayList<String>();
		
		String query = prop.getProperty("selectTrainerInfo");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, memberId);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				list.add(memberId);
				list.add(rset.getString("MEMBER_NAME"));
				list.add(rset.getString("TRAINER_COMMENT"));
				list.add(rset.getString("TRAINER_MAINFIELD"));
				list.add(rset.getString("TRAINER_SUBFIELD"));

				
//				m.setMemberId(memberId);
//				m.setName(rset.getString("MEMBER_NAME"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		
		return list;
	}
	public ArrayList<TrainerCeritificate> selectTrainerCeritificate(Connection con, String memberId) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<TrainerCeritificate> tcList = new ArrayList<TrainerCeritificate>();
		TrainerCeritificate tc = null;
		
		String query = prop.getProperty("selectTrainerCeritificate");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, memberId);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				tc = new TrainerCeritificate();
				
				tc.setCertiDate(rset.getString("CERTI_DATE"));
				tc.setCertiInstitution(rset.getString("CERTI_INSTITUTION"));
				tc.setCertiName(rset.getString("CERTI_NAME"));
				
				tcList.add(tc);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		
		return tcList;
	}
	public ArrayList<TrainerEducation> selectTrainerEducation(Connection con, String memberId) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<TrainerEducation> teList = new ArrayList<TrainerEducation>();
		TrainerEducation te = null;
		
		String query = prop.getProperty("selectTrainerEducation");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, memberId);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				te = new TrainerEducation();
				
				te.setEduName(rset.getString("EDU_NAME"));
				te.setEduEnrollDate(rset.getString("EDU_ENROLLDATE"));
				te.setEduState(rset.getString("EDU_STATE"));
				
				teList.add(te);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		return teList;
	}
	public ArrayList<TrainerCareer> selectTrainerCareer(Connection con, String memberId) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<TrainerCareer> tcrList = new ArrayList<TrainerCareer>();
		TrainerCareer tcr = null;
		
		String query = prop.getProperty("selectTrainerCareer");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, memberId);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				tcr = new TrainerCareer();
				
				tcr.setCareerLevel(rset.getString("CAREER_LEVEL"));
				tcr.setCompName(rset.getString("COMP_NAME"));
				tcr.setEnterDate(rset.getString("ENTER_DATE"));
				tcr.setResignDate(rset.getString("RESIGN_DATE"));
				
				tcrList.add(tcr);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		
		return tcrList;
	}
	public ArrayList<TrainerReview> selectTrainerReview(Connection con, String memberId) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<TrainerReview> trList = new ArrayList<TrainerReview>();
		TrainerReview tr = null;
		
		String query = prop.getProperty("selectTrainerReview");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, memberId);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				tr = new TrainerReview();
				
				tr.setRatingContent(rset.getString("RATING_CONTENT"));
				tr.setGrade(rset.getDouble("GRADE"));
				tr.setFollowerId(rset.getString("FOLLOWER_ID"));
				tr.setRatingFileCode(rset.getString("RATING_FILECODE"));
				
				trList.add(tr);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		return trList;
	}
	
	
	

}