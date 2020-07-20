package com.omg.jsp.trainerCurriculum.model.dao;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.omg.jsp.followerHealth.model.dao.HealthInfoDao;
import com.omg.jsp.member.model.vo.Member;
import com.omg.jsp.trainerCurriculum.model.vo.TrainerCurriculum;
import com.omg.jsp.trainerVideo.model.vo.TrainerVideo;

import static com.omg.jsp.common.JDBCTemplate.*;

public class TrainerCurriculumDao {
	
	private Properties prop = new Properties();
	
	public TrainerCurriculumDao() {
		String fileName = HealthInfoDao.class.getResource("/sql/healthInfo/curriculum-query.propreties").getPath();
		
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
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return null;
	}

}
