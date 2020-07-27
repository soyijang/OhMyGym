package com.omg.jsp.trainerCurriculum.model.dao;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Properties;

import com.omg.jsp.followerHealth.model.dao.HealthInfoDao;
import com.omg.jsp.member.model.vo.Member;
import com.omg.jsp.trainerCurriculum.model.vo.TrainerCurriculum;
import com.omg.jsp.trainerVideo.model.vo.TrainerVideo;

import static com.omg.jsp.common.JDBCTemplate.*;

public class TrainerCurriculumDao {
	
	private Properties prop = new Properties();
	
	public TrainerCurriculumDao() {
		String fileName = HealthInfoDao.class.getResource("/sql/trainerCurriculum/curriculum-query.propreties").getPath();
		
		try {
			prop.load(new FileReader(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public ArrayList<TrainerCurriculum> selectTrainerCurriculum(Connection con, Member loginUser) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<TrainerCurriculum> cList = new ArrayList<TrainerCurriculum>();
		TrainerCurriculum c = null;
		
		String query = prop.getProperty("selectTrainerCurriculum");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, loginUser.getMemberId());
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				c = new TrainerCurriculum();
				
				c.setCurriculumCode(rset.getString("CURRICULUM_CODE"));
				c.setCurriculumTitle(rset.getString("CURRICULUM_TITLE"));
				
				cList.add(c);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return cList;
	}

	public ArrayList<TrainerVideo> selectTrainerVideo(Connection con, Member loginUser) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<TrainerVideo> vList = new ArrayList<TrainerVideo>();
		TrainerVideo v = null;
		
		String query = prop.getProperty("selectTrainerVideo");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, loginUser.getMemberId());
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				v = new TrainerVideo();
				
				v.setBookmarkCount(rset.getString("BOOKMARK_COUNT"));
				v.setCurriculumCode(rset.getString("CURRICULUM_CODE"));
				v.setTrainerUploadDate(rset.getString("TRAINER_UPLOADDATE"));
				v.setTrainerUploadTime(rset.getString("TRAINER_UPLOADTIME"));
				v.setTrainerVideoCode(rset.getString("TRAINER_VIDEOCODE"));
				v.setTrainerVideoFileCode(rset.getString("TRAINER_VIDEO_FILECODE"));
				v.setVideoTitle(rset.getString("VIDEO_TITLE"));
				
				vList.add(v);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return vList;
	}

	public HashMap<String, String> selectCurriulum(Connection con, String curriculumCode) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		HashMap<String, String> curriculum = new HashMap<String, String>();
		
		String query = prop.getProperty("selectCurriTitle");
		
		try {
			pstmt = con.prepareStatement(query);
			
			pstmt.setString(1, curriculumCode);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				curriculum.put("title", rset.getString("CURRICULUM_TITLE"));
				curriculum.put("code", rset.getString("CURRICULUM_CODE"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		
		return curriculum;
	}
	
	public int insertCurriculum(Connection con, String newCurriculumTitle, String memberId) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("inserCurriculum");
		System.out.println(newCurriculumTitle + " " + memberId);
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, newCurriculumTitle);
			pstmt.setString(2, memberId);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	public String selectCurriculumTitle(Connection con, String videoCode) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String curriculumTitle = "";
		
		String query = prop.getProperty("selectCurriculumTitle");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, videoCode);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				curriculumTitle = rset.getString("CURRICULUM_TITLE");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		
		return curriculumTitle;
	}

}
