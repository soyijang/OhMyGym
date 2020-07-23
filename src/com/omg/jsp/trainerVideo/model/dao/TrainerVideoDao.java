package com.omg.jsp.trainerVideo.model.dao;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.omg.jsp.followerHealth.model.dao.HealthInfoDao;
import com.omg.jsp.trainerVideo.model.vo.TrainerVideo;
import static com.omg.jsp.common.JDBCTemplate.*;

public class TrainerVideoDao {
	
private Properties prop = new Properties();
	
	public TrainerVideoDao() {
		String fileName = HealthInfoDao.class.getResource("/sql/trainerVideo/trainerVideo-query.properties").getPath();
		
		try {
			prop.load(new FileReader(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public ArrayList<TrainerVideo> selectVideoInCurriculum(Connection con, String curriculumCode) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<TrainerVideo> vList = new ArrayList<TrainerVideo>();
		TrainerVideo v = null;
		
		String query = prop.getProperty("selectVideoInCurriculum");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, curriculumCode);
			
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
		} finally {
			close(pstmt);
			close(rset);
		}
		
		return vList;
	}

	public TrainerVideo selectOneVideo(Connection con, String videoCode) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		TrainerVideo video = new TrainerVideo();
		
		String query = prop.getProperty("selectOneVideo");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, videoCode);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				video.setBookmarkCount(rset.getString("BOOKMARK_COUNT"));
				video.setCurriculumCode(rset.getString("CURRICULUM_CODE"));
				video.setTrainerUploadDate(rset.getString("TRAINER_UPLOADDATE"));
				video.setTrainerUploadTime(rset.getString("TRAINER_UPLOADTIME"));
				video.setTrainerVideoCode(rset.getString("TRAINER_VIDEOCODE"));
				video.setTrainerVideoFileCode(rset.getString("TRAINER_VIDEO_FILECODE"));
				video.setVideoTitle(rset.getString("VIDEO_TITLE"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		
		
		return video;
	}

}
