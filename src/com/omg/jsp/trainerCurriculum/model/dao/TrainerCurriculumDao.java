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
//			pstmt.setString(2, x);
			
			/*TRAINER_VIDEOCODE	VARCHAR2(50 BYTE)	No		1	트레이너영상번호
			CURRICULUM_CODE	VARCHAR2(50 BYTE)	No		2	커리큘럼코드
			TRAINER_UPLOADDATE	VARCHAR2(50 BYTE)	No		3	트레이너영상업로드일자
			BOOKMARK_COUNT	VARCHAR2(500 BYTE)	No		4	북마크수
			TRAINER_VIDEO_FILECODE	VARCHAR2(200 BYTE)	No		5	트레이너영상첨부코드
			TRAINER_UPLOADTIME	VARCHAR2(50 BYTE)	No		6	트레이너영상업로드시간
			VIDEO_TITLE	VARCHAR2(1000 BYTE)	Yes		7	비디오게시글제목*/
			
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

}
