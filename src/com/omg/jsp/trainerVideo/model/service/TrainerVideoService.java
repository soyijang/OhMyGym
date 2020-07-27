package com.omg.jsp.trainerVideo.model.service;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.HashMap;

import com.omg.jsp.trainerCurriculum.model.dao.TrainerCurriculumDao;
import com.omg.jsp.trainerVideo.model.dao.TrainerVideoDao;
import com.omg.jsp.trainerVideo.model.vo.TrainerVideo;
import static com.omg.jsp.common.JDBCTemplate.*;

public class TrainerVideoService {

	public HashMap<String, Object> selectVideoInCurriculum(String curriculumCode) {
		Connection con = getConncection();
		
		ArrayList<TrainerVideo> videoList = new TrainerVideoDao().selectVideoInCurriculum(con, curriculumCode);
		HashMap<String, String> curriculum = new TrainerCurriculumDao().selectCurriulum(con, curriculumCode);
		
		HashMap<String, Object> videoListnCurriculum = new HashMap<String, Object>();
		
		videoListnCurriculum.put("videoList", videoList);
		videoListnCurriculum.put("curriculum", curriculum);
		
		close(con);
		
		
		return videoListnCurriculum;
	}

	public TrainerVideo selectOneVideo(String videoCode) {
		Connection con = getConncection();
		
		TrainerVideo video = new TrainerVideoDao().selectOneVideo(con, videoCode);
		
		close(con);
		
		
		return video;
	}
	
	public int insertTrainerVideo(String videoTitle, String memberId, String curriCode, String filecode) {
		Connection con = getConncection();
		
		int result = new TrainerVideoDao().insertTrainerVideo(con, videoTitle, memberId, curriCode, filecode);
		
		if(result > 0) {
			commit(con);
		} else {
			rollback(con);
		}
		
		close(con);
		
		return result;
	}

}
